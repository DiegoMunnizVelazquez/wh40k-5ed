"""Ordena las opciones de equipo de un catálogo (.cat).

Dentro de cada selectionEntryGroup, entryLinks y selectionEntries se ordenan por
coste en puntos ascendente y, a igualdad de coste, alfabéticamente (sin tener en
cuenta acentos ni mayúsculas). El coste de un entryLink sin <costs> propio se toma
de la entrada a la que apunta. Además numera cada opción con el atributo sortIndex
(1, 2, 3…): BattleScribe/NewRecruit ordena por sortIndex, no por la posición en el XML.
Conserva codificación UTF-8 y saltos de línea.

Uso: python sort_selection_options.py "Caballeros Grises.cat" [write]
Sin "write" solo muestra qué grupos se reordenarían (dry-run).
"""
import re,sys,unicodedata
import xml.etree.ElementTree as ET
p=sys.argv[1]; write=len(sys.argv)>2 and sys.argv[2]=="write"
raw=open(p,'rb').read().decode('utf-8'); N="\r\n" if "\r\n" in raw else "\n"
L=raw.split(N)
ns={'c':'http://www.battlescribe.net/schema/catalogueSchema'}
root=ET.fromstring(raw.encode('utf-8'))
Q='{http://www.battlescribe.net/schema/catalogueSchema}'
def cost_of(e):
    for c in e.findall(Q+'costs/'+Q+'cost'):
        if c.get('typeId')=='puntos': return float(c.get('value'))
    return None
byid={e.get('id'):e for e in root.iter() if e.tag in (Q+'selectionEntry',Q+'selectionEntryGroup')}
def eff(e):
    c=cost_of(e)
    if c is None and e.tag==Q+'entryLink':
        t=byid.get(e.get('targetId'))
        c=cost_of(t) if t is not None else None
    return c or 0.0
def key(name): 
    s=unicodedata.normalize('NFD',name); s=''.join(ch for ch in s if unicodedata.category(ch)!='Mn')
    return s.casefold()
ind=lambda l:len(l)-len(l.lstrip())
starts=[i for i,l in enumerate(L) if l.lstrip().startswith('<selectionEntryGroup ')]
changed=0
def parse_blocks(i,gi,close):
    j=i+1; blocks=[]
    while not L[j].startswith(' '*(gi+2)+close):
        st=j
        if L[j].rstrip().endswith('/>'): j+=1
        else:
            tag=L[j].strip().split()[0][1:]
            while not L[j].startswith(' '*(gi+4)+'</'+tag+'>'): j+=1
            j+=1
        blocks.append(L[st:j])
    return blocks,j
for s in sorted(starts,reverse=True):
    gi=ind(L[s])
    if L[s].rstrip().endswith('/>'): continue
    e=s+1
    while not (L[e].startswith(' '*gi+'</selectionEntryGroup>')): e+=1
    # 1) collect containers (entryLinks / selectionEntries) of this group
    conts=[];i=s+1
    while i<e:
        l=L[i]
        if ind(l)==gi+2 and l.strip() in ('<entryLinks>','<selectionEntries>'):
            close=l.strip().replace('<','</')
            blocks,j=parse_blocks(i,gi,close)
            infos=[]
            for b in blocks:
                el=ET.fromstring(('<r xmlns="http://www.battlescribe.net/schema/catalogueSchema">'+''.join(b)+'</r>'))[0]
                infos.append((eff(el),key(el.get('name')),el.get('name')))
            conts.append((i,j,blocks,infos)); i=j
        else: i+=1
    # 2) global ranking across containers
    allitems=sorted(((inf[0],inf[1],ci,k) for ci,c in enumerate(conts) for k,inf in enumerate(c[3])))
    rank={(ci,k):n for n,(_,_,ci,k) in enumerate(allitems,1)}
    # 3) rewrite containers bottom-up
    for ci in reversed(range(len(conts))):
        i,j,blocks,infos=conts[ci]
        order=sorted(range(len(blocks)),key=lambda k:rank[(ci,k)])
        new=[]
        for k in order:
            b=list(blocks[k]); first=b[0]; n=rank[(ci,k)]
            if ' sortIndex="' in first: first=re.sub(r' sortIndex="[^"]*"',f' sortIndex="{n}"',first,count=1)
            elif ' import="true"' in first: first=first.replace(' import="true"',f' import="true" sortIndex="{n}"',1)
            else: first=first.replace(' type=',f' sortIndex="{n}" type=',1)
            b[0]=first; new.append(b)
        flat=[x for b in new for x in b]
        if flat!=L[i+1:j]:
            changed+=1
            print(f"L{s+1} {L[s].strip()[:60].split(chr(34))[1]}: "+" | ".join(f"{infos[k][2]}({infos[k][0]:g})" for k in order))
            L[i+1:j]=flat
print("grupos reordenados:",changed,"de",len(starts))
if write: open(p,'wb').write(N.join(L).encode('utf-8'))
