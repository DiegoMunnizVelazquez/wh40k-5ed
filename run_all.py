#!/usr/bin/env python3
"""
Script orquestador para ejecutar todos los scripts de generación de catálogos
de Warhammer 40K 5ª Edición en el orden correcto.

Uso:
    python run_all.py [opciones]

Opciones:
    --cat ARCHIVO           Archivo CAT a modificar (por defecto: 'Guardia Imperial.cat')
    --csv-unidades ARCHIVO  CSV de unidades (por defecto: 'PerfilesUnidades.csv')
    --csv-vehiculos ARCHIVO CSV de vehículos (por defecto: 'PerfilesVehiculos.csv')
    --csv-armas ARCHIVO     CSV de armas (por defecto: 'PerfilesArmas.csv')
    --csv-bipodes ARCHIVO   CSV de bípodes (por defecto: 'PerfilesBipodes.csv')
    --skip PASOS            Pasos a saltar, separados por comas
                            (unidades,vehiculos,armas,bipodes,infogroups,selections)
    --only PASOS            Ejecutar SOLO estos pasos, separados por comas
    --dry-run               Mostrar qué se ejecutaría sin ejecutar nada
    --verbose               Mostrar salida completa de cada script

Ejemplos:
    # Ejecutar todo con valores por defecto (Guardia Imperial)
    python run_all.py

    # Procesar Marines Espaciales con CSVs personalizados
    python run_all.py --cat "Marines Espaciales.cat" --csv-armas armas_marines.csv

    # Solo actualizar armas y regenerar infoGroups
    python run_all.py --only armas,infogroups

    # Ejecutar todo excepto bípodes
    python run_all.py --skip bipodes

    # Ver qué se ejecutaría sin hacer nada
    python run_all.py --cat "Eldars.cat" --dry-run
"""

import argparse
import subprocess
import sys
import os
import time


# Definición de pasos en orden de ejecución
STEPS = [
    {
        'id': 'unidades',
        'nombre': 'Actualizar perfiles de unidades',
        'script': 'update_unit_profiles.py',
        'csv_param': 'csv_unidades',
    },
    {
        'id': 'vehiculos',
        'nombre': 'Actualizar perfiles de vehículos',
        'script': 'update_vehicle_profiles.py',
        'csv_param': 'csv_vehiculos',
    },
    {
        'id': 'armas',
        'nombre': 'Actualizar perfiles de armas',
        'script': 'update_weapon_profiles.py',
        'csv_param': 'csv_armas',
    },
    {
        'id': 'bipodes',
        'nombre': 'Actualizar perfiles de bípodes',
        'script': 'update_bipode_profiles.py',
        'csv_param': 'csv_bipodes',
    },
    {
        'id': 'infogroups',
        'nombre': 'Generar sharedInfoGroups (todos los tipos)',
        'script': 'generate_all_shared_info_groups.py',
        'csv_param': 'csv_armas',  # Este script usa el CSV de armas para mapeo de reglas
    },
    {
        'id': 'selections',
        'nombre': 'Generar sharedSelectionEntries',
        'script': 'generate_selection_entries.py',
        'csv_param': None,  # Solo necesita el CAT
    },
]

ALL_STEP_IDS = [s['id'] for s in STEPS]


def parse_args():
    parser = argparse.ArgumentParser(
        description='Orquestador de scripts para catálogos de Warhammer 40K 5ª Edición',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Orden de ejecución:
  1. update_unit_profiles.py      (unidades)
  2. update_vehicle_profiles.py   (vehiculos)
  3. update_weapon_profiles.py    (armas)
  4. update_bipode_profiles.py    (bipodes)
  5. generate_all_shared_info_groups.py (infogroups)
  6. generate_selection_entries.py (selections)

Los pasos 1-4 actualizan perfiles desde CSV.
El paso 5 genera infoGroups a partir de los perfiles del CAT.
El paso 6 genera selectionEntries a partir de los infoGroups.
        """
    )

    parser.add_argument('--cat', default='Guardia Imperial.cat',
                        help='Archivo CAT a modificar (por defecto: Guardia Imperial.cat)')
    parser.add_argument('--csv-unidades', default='PerfilesUnidades.csv',
                        help='CSV de perfiles de unidades (por defecto: PerfilesUnidades.csv)')
    parser.add_argument('--csv-vehiculos', default='PerfilesVehiculos.csv',
                        help='CSV de perfiles de vehículos (por defecto: PerfilesVehiculos.csv)')
    parser.add_argument('--csv-armas', default='PerfilesArmas.csv',
                        help='CSV de perfiles de armas (por defecto: PerfilesArmas.csv)')
    parser.add_argument('--csv-bipodes', default='PerfilesBipodes.csv',
                        help='CSV de perfiles de bípodes (por defecto: PerfilesBipodes.csv)')
    parser.add_argument('--skip', default='',
                        help='Pasos a saltar, separados por comas (ej: bipodes,selections)')
    parser.add_argument('--only', default='',
                        help='Ejecutar SOLO estos pasos, separados por comas (ej: armas,infogroups)')
    parser.add_argument('--dry-run', action='store_true',
                        help='Mostrar qué se ejecutaría sin ejecutar nada')
    parser.add_argument('--verbose', action='store_true',
                        help='Mostrar salida completa de cada script')

    return parser.parse_args()


def validate_steps(step_list, label):
    """Valida que los IDs de pasos proporcionados sean válidos."""
    invalid = [s for s in step_list if s not in ALL_STEP_IDS]
    if invalid:
        print(f"❌ Error: Pasos no válidos en --{label}: {', '.join(invalid)}")
        print(f"   Pasos válidos: {', '.join(ALL_STEP_IDS)}")
        sys.exit(1)


def validate_files(cat_file, csv_files):
    """Valida que los archivos necesarios existan."""
    errors = []
    if not os.path.exists(cat_file):
        errors.append(f"  - Archivo CAT no encontrado: {cat_file}")
    for name, path in csv_files.items():
        if path and not os.path.exists(path):
            errors.append(f"  - CSV de {name} no encontrado: {path}")
    if errors:
        print("❌ Error: Archivos no encontrados:")
        for e in errors:
            print(e)
        sys.exit(1)


def run_step(step, cat_file, csv_files, dry_run, verbose):
    """Ejecuta un paso individual y devuelve True si tuvo éxito."""
    script = step['script']
    csv_param = step['csv_param']

    # Construir comando
    cmd = [sys.executable, script, cat_file]
    if csv_param and csv_files.get(csv_param):
        cmd.append(csv_files[csv_param])

    cmd_str = ' '.join(f'"{c}"' if ' ' in c else c for c in cmd)

    if dry_run:
        print(f"  → {cmd_str}")
        return True

    print(f"  → {cmd_str}")

    try:
        result = subprocess.run(
            cmd,
            capture_output=not verbose,
            text=True,
            timeout=120
        )

        if result.returncode != 0:
            print(f"  ❌ Error (código {result.returncode})")
            if not verbose and result.stderr:
                print(f"  Stderr: {result.stderr.strip()}")
            if not verbose and result.stdout:
                print(f"  Stdout: {result.stdout.strip()}")
            return False

        if not verbose and result.stdout:
            # Mostrar resumen breve de la salida
            lines = result.stdout.strip().split('\n')
            for line in lines[-3:]:  # Últimas 3 líneas como resumen
                print(f"  {line}")

        return True

    except subprocess.TimeoutExpired:
        print(f"  ❌ Timeout: el script tardó más de 120 segundos")
        return False
    except Exception as e:
        print(f"  ❌ Excepción: {e}")
        return False


def main():
    args = parse_args()

    # Determinar qué pasos ejecutar
    skip_ids = [s.strip() for s in args.skip.split(',') if s.strip()]
    only_ids = [s.strip() for s in args.only.split(',') if s.strip()]

    if skip_ids:
        validate_steps(skip_ids, 'skip')
    if only_ids:
        validate_steps(only_ids, 'only')

    if skip_ids and only_ids:
        print("❌ Error: No se pueden usar --skip y --only a la vez")
        sys.exit(1)

    # Filtrar pasos
    if only_ids:
        steps_to_run = [s for s in STEPS if s['id'] in only_ids]
    elif skip_ids:
        steps_to_run = [s for s in STEPS if s['id'] not in skip_ids]
    else:
        steps_to_run = STEPS[:]

    if not steps_to_run:
        print("⚠️  No hay pasos que ejecutar.")
        sys.exit(0)

    # Mapeo de CSVs
    csv_files = {
        'csv_unidades': args.csv_unidades,
        'csv_vehiculos': args.csv_vehiculos,
        'csv_armas': args.csv_armas,
        'csv_bipodes': args.csv_bipodes,
    }

    # Validar archivos (solo los que se van a usar)
    csv_needed = {}
    for step in steps_to_run:
        if step['csv_param'] and step['csv_param'] in csv_files:
            csv_needed[step['csv_param']] = csv_files[step['csv_param']]

    if not args.dry_run:
        validate_files(args.cat, csv_needed)

    # Cabecera
    mode = " (DRY RUN)" if args.dry_run else ""
    print(f"\n{'='*60}")
    print(f"  Warhammer 40K 5ª Ed. - Generador de Catálogos{mode}")
    print(f"{'='*60}")
    print(f"  Catálogo:  {args.cat}")
    shown_csvs = set()
    for step in steps_to_run:
        if step['csv_param'] and step['csv_param'] in csv_files and step['csv_param'] not in shown_csvs:
            label = step['csv_param'].replace('csv_', '')
            print(f"  CSV {label:10s}: {csv_files[step['csv_param']]}")
            shown_csvs.add(step['csv_param'])
    print(f"  Pasos:     {len(steps_to_run)} de {len(STEPS)}")
    print(f"{'='*60}\n")

    # Ejecutar pasos
    results = []
    start_total = time.time()

    for i, step in enumerate(steps_to_run, 1):
        print(f"[{i}/{len(steps_to_run)}] {step['nombre']}...")
        start = time.time()
        ok = run_step(step, args.cat, csv_files, args.dry_run, args.verbose)
        elapsed = time.time() - start
        results.append((step, ok, elapsed))

        if ok:
            print(f"  ✅ Completado ({elapsed:.1f}s)\n")
        else:
            print(f"  ❌ Falló ({elapsed:.1f}s)\n")
            print("⚠️  Abortando ejecución por error en paso anterior.")
            break

    # Resumen final
    elapsed_total = time.time() - start_total
    ok_count = sum(1 for _, ok, _ in results if ok)
    fail_count = sum(1 for _, ok, _ in results if not ok)

    print(f"{'='*60}")
    print(f"  Resumen")
    print(f"{'='*60}")
    for step, ok, elapsed in results:
        status = "✅" if ok else "❌"
        print(f"  {status} {step['nombre']} ({elapsed:.1f}s)")
    print(f"{'─'*60}")
    print(f"  Total: {ok_count} OK, {fail_count} fallidos, {elapsed_total:.1f}s")
    print(f"{'='*60}\n")

    if fail_count > 0:
        sys.exit(1)


if __name__ == '__main__':
    main()
