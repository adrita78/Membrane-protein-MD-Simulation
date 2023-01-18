psfgen) Info: generating structure...segment complete.
psfgen) building segment W20
psfgen) disabling angle autogeneration
psfgen) disabling dihedral autogeneration
psfgen) Info: generating structure...segment complete.
psfgen) Info: writing psf file temp.psf
psfgen) total of 44052 atoms
psfgen) total of 39848 bonds
psfgen) total of 65404 angles
psfgen) total of 85440 dihedrals
psfgen) total of 480 impropers
psfgen) total of 0 explicit exclusions
psfgen) total of 0 cross-terms
psfgen) Info: psf file complete.
psfgen) Info: writing pdb file temp.pdb
psfgen) Info: pdb file complete.
psfgen) clearing structure, preserving topology and aliases
psfgen) reading structure from psf file temp.psf
psfgen) psf file does not contain cross-terms
psfgen) reading coordinates from pdb file temp.pdb
psfgen) Info: writing psf file C:\Users\adrit\OneDrive\Documents\MD4\popc.psf
psfgen) total of 30221 atoms
psfgen) total of 27265 bonds
psfgen) total of 44521 angles
psfgen) total of 58028 dihedrals
psfgen) total of 326 impropers
psfgen) total of 0 explicit exclusions
psfgen) total of 0 cross-terms
psfgen) Info: psf file complete.
psfgen) Info: writing pdb file C:\Users\adrit\OneDrive\Documents\MD4\popc.pdb
psfgen) Info: pdb file complete.
deleting temporary files
>Main< (MD4) 95 % set popc [atomselect top all]
atomselect31
>Main< (MD4) 96 % set rotate_b2acmol [mol new rotate_b2ac.psf]
4
>Main< (MD4) 97 % mol addfile rotate_b2ac.pdb
4
>Main< (MD4) 98 % set rotate_b2ac [atomselect $rotate_b2acmol all]
atomselect32
>Main< (MD4) 99 % $popc moveby [vecinvert [measure center $popc weight mass]]
>Main< (MD4) 100 % $popc writepdb popc_TEMP.pdb
>Main< (MD4) 101 % $rotate_b2ac writepdb rotate_b2ac_TEMP.pdb
>Main< (MD4) 102 % mol delete all
>Main< (MD4) 103 % package require psfgen
1.6.4
>Main< (MD4) 104 % resetpsf
psfgen) clearing structure, preserving topology and aliases
>Main< (MD4) 105 % readpsf popc.psf
psfgen) reading structure from psf file popc.psf
psfgen) duplicate topology file C:/Program
psfgen) duplicate topology file C:/Program
psfgen) psf file does not contain cross-terms
>Main< (MD4) 106 % coordpdb popc_TEMP.pdb
psfgen) reading coordinates from pdb file popc_TEMP.pdb
>Main< (MD4) 107 % readpsf rotate_b2ac.psf
psfgen) reading structure from psf file rotate_b2ac.psf
>Main< (MD4) 108 % coordpdb rotate_b2ac_TEMP.pdb
psfgen) reading coordinates from pdb file rotate_b2ac_TEMP.pdb
>Main< (MD4) 109 % writepsf rotate_b2ac_popc_raw.psf
psfgen) Info: writing psf file rotate_b2ac_popc_raw.psf
psfgen) total of 34619 atoms
psfgen) total of 31722 bonds
psfgen) total of 52576 angles
psfgen) total of 69827 dihedrals
psfgen) total of 997 impropers
psfgen) total of 0 explicit exclusions
psfgen) total of 269 cross-terms
psfgen) Info: psf file complete.
>Main< (MD4) 110 % write pdb rotate_b2ac_popc_raw.pdb
>Main< (MD4) 111 % writepdb rotate_b2ac_popc_raw.pdb
psfgen) Info: writing pdb file rotate_b2ac_popc_raw.pdb
psfgen) Info: pdb file complete.
>Main< (MD4) 112 % file delete rotate_b2ac_TEMP.pdb
>Main< (MD4) 113 % file delete popc_TEMP.pdb
>Main< (MD4) 114 % mol delete all
>Main< (MD4) 115 % mol new rotate_b2ac_popc_raw.psf
6
>Main< (MD4) 116 % mol addfile rotate_b2ac_popc_raw.pdb
6
>Main< (MD4) 117 % set POPC "resname POPC"
resname POPC
>Main< (MD4) 118 % set all [atomselect top all]
atomselect33
>Main< (MD4) 119 % $all set beta 0
>Main< (MD4) 120 % set seltext1 "$POPC andsame residue as \(name P1 and and z>0 and abs(x)<15 and abs(y)<15)"
resname POPC andsame residue as (name P1 and and z>0 and abs(x)<15 and abs(y)<15)
>Main< (MD4) 121 % set seltext2 "$POPC and same residue as \(name P1 and z<0 and abs(x)<10 and abs(y)<10)"
resname POPC and same residue as (name P1 and z<0 and abs(x)<10 and abs(y)<10)
>Main< (MD4) 122 % set seltext3 "$POPC and same residue as (within 0.6 of protein)"
resname POPC and same residue as (within 0.6 of protein)
>Main< (MD4) 123 % set sel1 [atomselect top $seltext1]
atomselect: cannot parse selection text: resname POPC andsame residue as (name P1 and and z>0 and abs(x)<15 and abs(y)<15)
>Main< (MD4) 124 % set sel1 [atomselect top $seltext1]
atomselect: cannot parse selection text: resname POPC andsame residue as (name P1 and and z>0 and abs(x)<15 and abs(y)<15)
>Main< (MD4) 125 % set sel2 [atomselect top $seltext2]
atomselect34
>Main< (MD4) 126 % set sel3 [atomselect top $seltext3]
atomselect35
>Main< (MD4) 127 % $sel1 set beta 1
can't read "sel1": no such variable
>Main< (MD4) 128 % $sel2 set beta2
atomselection: improper method: set
usage: <atomselection> <command> [args...]

Commands for manipulating atomselection metadata:
  frame [new frame value]      -- get/set frame
  molid|molindex               -- get selection's molecule id
  text                         -- get selection's text
  delete                       -- delete atomselection (to free memory)
  global                       -- move atomselection to global scope
  update                       -- recalculate selection

Commands for getting/setting attributes:
  num                          -- number of atoms
  list                         -- get atom indices
  get <list of attributes>     -- for attributes use 'atomselect keywords'
  set <list of attributes> <nested list of values>
  getbonds                     -- get list of bonded atoms
  setbonds <bondlists>
  getbondorders                -- get list of bond orders
  setbondorders <bondlists>
  getbondtypes                 -- get list of bond types
  setbondtypes  <bondlists>
  moveto|moveby <3 vector>     -- change atomic coordinates
  lmoveto|lmoveby <x> <y> <z>
  move <4x4 transforamtion matrix>

Commands for writing to a file:
  writepdb <filename>          -- write sel to PDB file
  writeXXX <filename>          -- write sel to XXX file (if XXX is a known format)

>Main< (MD4) 129 % $sel2 set beta1
atomselection: improper method: set
usage: <atomselection> <command> [args...]

Commands for manipulating atomselection metadata:
  frame [new frame value]      -- get/set frame
  molid|molindex               -- get selection's molecule id
  text                         -- get selection's text
  delete                       -- delete atomselection (to free memory)
  global                       -- move atomselection to global scope
  update                       -- recalculate selection

Commands for getting/setting attributes:
  num                          -- number of atoms
  list                         -- get atom indices
  get <list of attributes>     -- for attributes use 'atomselect keywords'
  set <list of attributes> <nested list of values>
  getbonds                     -- get list of bonded atoms
  setbonds <bondlists>
  getbondorders                -- get list of bond orders
  setbondorders <bondlists>
  getbondtypes                 -- get list of bond types
  setbondtypes  <bondlists>
  moveto|moveby <3 vector>     -- change atomic coordinates
  lmoveto|lmoveby <x> <y> <z>
  move <4x4 transforamtion matrix>

Commands for writing to a file:
  writepdb <filename>          -- write sel to PDB file
  writeXXX <filename>          -- write sel to XXX file (if XXX is a known format)

>Main< (MD4) 130 % $sel2 set beta 1
>Main< (MD4) 131 % $sel3 set beta 1
>Main< (MD4) 132 % set badlipid [atomselect top "name P1 and beta > 0"]
atomselect36
>Main< (MD4) 133 % set seglistlipid [$badlipid get segid]
L11 L11 L11 L11 L11 L11 L11 L11 L11 L11 L21 L21 L21 L21 L21 L21 L21 L21 L21 L21 L21 L21 L21 L12 L12 L12 L12 L22 L22 L22 L22 L22 L22 L22 L13 L13 L13 L13 L13 L23 L23 L23 L23 L14 L14 L14
>Main< (MD4) 134 % set resetlipid [$badlipid get resid]
16 17 18 22 23 24 27 28 29 30 10 11 12 16 17 18 22 23 24 27 28 29 30 19 20 25 26 13 14 19 20 21 25 26 3 4 5 6 11 3 4 5 6 1 2 3
>Main< (MD4) 135 % set seltext4 "(water and not segname WCA WCB WF SOLV)\and same residue as within 3 of \
((same residue as (name P1 and beta > 0)) or protein)"
(water and not segname WCA WCB WF SOLV)nd same residue as within 3 of  ((same residue as (name P1 and beta > 0)) or protein)
>Main< (MD4) 136 % set seltext5 "segname SOLV and same residue as \
within 3 of lipids"
segname SOLV and same residue as  within 3 of lipids
>Main< (MD4) 137 % set sel4 [atomselect top $seltext4]
atomselect: cannot parse selection text: (water and not segname WCA WCB WF SOLV)nd same residue as within 3 of  ((same residue as (name P1 and beta > 0)) or protein)
>Main< (MD4) 138 % set sel5 [atomselect top $seltext5]
atomselect37
>Main< (MD4) 139 % $sel5 set beta 1
>Main< (MD4) 140 % set badwater [atomselect top "name 0H2 and beta >0"]
atomselect38
>Main< (MD4) 141 % set seglistwater [$badwater get segid]
>Main< (MD4) 142 % set [reslistwater [$badwater get resid]]
invalid command name "reslistwater"
>Main< (MD4) 143 % set reslistwater [$badwater get resid]
>Main< (MD4) 144 % mol delete all
>Main< (MD4) 145 % resetpsf
psfgen) clearing structure, preserving topology and aliases
>Main< (MD4) 146 % readpsf rotate_b2ac_popc_raw.psf
psfgen) reading structure from psf file rotate_b2ac_popc_raw.psf
psfgen) duplicate topology file C:/Program
psfgen) duplicate topology file C:/Program
psfgen) duplicate topology file top_all27_prot_lipid.inp
>Main< (MD4) 147 % coordpdb rotate_b2ac_popc_raw.pdb
psfgen) reading coordinates from pdb file rotate_b2ac_popc_raw.pdb
>Main< (MD4) 148 % foreach segid $seglistlipid resid $reslistlipid {
delatom $segid $resid
}
can't read "reslistlipid": no such variable
>Main< (MD4) 149 % foreach segid $seglistwater resid $reslistwater {
delatom $segid $resid
}
>Main< (MD4) 150 % writepsf rotate_b2ac_popc.psf
psfgen) Info: writing psf file rotate_b2ac_popc.psf
psfgen) total of 34619 atoms
psfgen) total of 31722 bonds
psfgen) total of 52576 angles
psfgen) total of 69827 dihedrals
psfgen) total of 997 impropers
psfgen) total of 0 explicit exclusions
psfgen) total of 269 cross-terms
psfgen) Info: psf file complete.
>Main< (MD4) 151 % writepdb rotate_b2ac_popc.pdb
psfgen) Info: writing pdb file rotate_b2ac_popc.pdb
psfgen) Info: pdb file complete.
>Main< (MD4) 152 % mol delete all
ERROR) No molecules loaded.
>Main< (MD4) 153 % mol new rotate_b2ac_popc.psf
7
>Main< (MD4) 154 % mol addfile rotate_b2ac_popc.pdb
7
>Main< (MD4) 155 % set water [atomselect top water]
atomselect39
>Main< (MD4) 156 % measure minmax $water
{-37.56800079345703 -37.63600158691406 -27.951000213623047} {38.361000061035156 38.847999572753906 27.8439998626709}
>Main< (MD4) 157 % package require solvate
1.7
>Main< (MD4) 158 % solvate rotate_b2ac_popc.psf rotate_b2ac_popc.pdb -o rotate_b2ac_popc_water.TEMP -b 1.5\
-minmax {{ -38 -38 -28} {39 39 28}}
Info) generating solute plus one replica of water...
psfgen) reading structure from psf file rotate_b2ac_popc.psf
psfgen) duplicate topology file C:/Program
psfgen) reading coordinates from pdb file rotate_b2ac_popc.pdb
psfgen) reading structure from psf file C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/solvate1.7/wat.psf
psfgen) psf file does not contain cross-terms
psfgen) reading coordinates from pdb file C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/solvate1.7/wat.pdb
psfgen) Info: writing psf file combine.psf
psfgen) total of 62402 atoms
psfgen) total of 50244 bonds
psfgen) total of 71098 angles
psfgen) total of 69827 dihedrals
psfgen) total of 997 impropers
psfgen) total of 0 explicit exclusions
psfgen) total of 269 cross-terms
psfgen) Info: psf file complete.
psfgen) Info: writing pdb file combine.pdb
psfgen) Info: pdb file complete.
Info) generating water residue lists...
Info) single water residue type, creating residue list...
Info) replicating 4 water segments, 2 by 2 by 1
psfgen) reading topology file C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/solvate1.7/wat.top

psfgen) >>>>>> Combined CHARMM All-Hydrogen Topology File for <<<<<<<<<
psfgen) >>>>>>>>> CHARMM22 Proteins and CHARMM27 Lipids <<<<<<<<<<
psfgen) from
psfgen) >>>>>>>>CHARMM22 All-Hydrogen Topology File for Proteins <<<<<<
psfgen) >>>>>>>>>>>>>>>>>>>>> August 1999 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
psfgen) >>>>>>> Direct comments to Alexander D. MacKerell Jr. <<<<<<<<<
psfgen) >>>>>> 410-706-7442 or email: alex,mmiris.ab.umd.edu  <<<<<<<<<
psfgen) and
psfgen)   \\\\\\\ CHARMM27 All-Hydrogen Lipid Topology File ///////
psfgen)   \\\\\\\\\\\\\\\\\\ Developmental /////////////////////////
psfgen) 		Alexander D. MacKerell Jr.
psfgen) 			August 1999
psfgen)  All comments to ADM jr.  email: alex,mmiris.ab.umd.edu
psfgen) 		telephone: 410-706-7442
psfgen) 
psfgen) Created by CHARMM version 27 1
psfgen) building segment WT1
psfgen) setting patch for first residue to NONE
psfgen) setting patch for last residue to NONE
psfgen) Info: generating structure...segment complete.
psfgen) building segment WT2
psfgen) setting patch for first residue to NONE
psfgen) setting patch for last residue to NONE
psfgen) Info: generating structure...segment complete.
psfgen) building segment WT3
psfgen) setting patch for first residue to NONE
psfgen) setting patch for last residue to NONE
psfgen) Info: generating structure...segment complete.
psfgen) building segment WT4
psfgen) setting patch for first residue to NONE
psfgen) setting patch for last residue to NONE
psfgen) Info: generating structure...segment complete.
psfgen) Info: writing psf file rotate_b2ac_popc_water.TEMP.psf
psfgen) total of 38672 atoms
psfgen) total of 34424 bonds
psfgen) total of 53927 angles
psfgen) total of 69827 dihedrals
psfgen) total of 997 impropers
psfgen) total of 0 explicit exclusions
psfgen) total of 269 cross-terms
psfgen) Info: psf file complete.
psfgen) Info: writing pdb file rotate_b2ac_popc_water.TEMP.pdb
psfgen) Info: pdb file complete.
psfgen) clearing structure, preserving topology and aliases
Info) Extra structure overlap safety check...
Info) Solvate completed successfully.
>Main< (MD4) 159 % set all [atomselect top all]
atomselect48
>Main< (MD4) 160 % $all set beta 0
>Main< (MD4) 161 % setvseltext1 "segid WT1 to WT99 and same residue as abs(z) < 25"
invalid command name "setvseltext1"
>Main< (MD4) 162 % set seltext "segid WT1 to WT99 and same residue as abs(z) < 25"
segid WT1 to WT99 and same residue as abs(z) < 25
>Main< (MD4) 163 % set sel [atomselect top $seltext]
atomselect49
>Main< (MD4) 164 % $sel set beta1
atomselection: improper method: set
usage: <atomselection> <command> [args...]

Commands for manipulating atomselection metadata:
  frame [new frame value]      -- get/set frame
  molid|molindex               -- get selection's molecule id
  text                         -- get selection's text
  delete                       -- delete atomselection (to free memory)
  global                       -- move atomselection to global scope
  update                       -- recalculate selection

Commands for getting/setting attributes:
  num                          -- number of atoms
  list                         -- get atom indices
  get <list of attributes>     -- for attributes use 'atomselect keywords'
  set <list of attributes> <nested list of values>
  getbonds                     -- get list of bonded atoms
  setbonds <bondlists>
  getbondorders                -- get list of bond orders
  setbondorders <bondlists>
  getbondtypes                 -- get list of bond types
  setbondtypes  <bondlists>
  moveto|moveby <3 vector>     -- change atomic coordinates
  lmoveto|lmoveby <x> <y> <z>
  move <4x4 transforamtion matrix>

Commands for writing to a file:
  writepdb <filename>          -- write sel to PDB file
  writeXXX <filename>          -- write sel to XXX file (if XXX is a known format)

>Main< (MD4) 165 % $sel set beta 1
>Main< (MD4) 166 % set badwater [atomselect top "name 0H2 and beta > 0"]
atomselect50
>Main< (MD4) 167 % set seglist [$badwater get segid]
>Main< (MD4) 168 % set reslist [$badwater get resid]
>Main< (MD4) 169 % mol delete all
>Main< (MD4) 170 % package require psgen
can't find package psgen
>Main< (MD4) 171 % package require psfgen
1.6.4
>Main< (MD4) 172 % resetpsf
psfgen) clearing structure, preserving topology and aliases
>Main< (MD4) 173 % readpsf rotate_b2ac_popc_water_TEMP.psf
ERROR: Unable to open psf file rotate_b2ac_popc_water_TEMP.psf
MOLECULE DESTROYED BY FATAL ERROR!  Use resetpsf to start over.
>Main< (MD4) 174 % resetpsf
psfgen) clearing structure, preserving topology and aliases
>Main< (MD4) 175 % package require psfgen
1.6.4
>Main< (MD4) 176 % readpsf rotate_b2ac_popc_water.TEMP.psf
psfgen) reading structure from psf file rotate_b2ac_popc_water.TEMP.psf
psfgen) duplicate topology file C:/Program
psfgen) duplicate topology file top_all27_prot_lipid.inp
psfgen) duplicate topology file C:/Program
>Main< (MD4) 177 % coordpdb rotate_b2ac_popc_water.TEMP.pdb
psfgen) reading coordinates from pdb file rotate_b2ac_popc_water.TEMP.pdb
>Main< (MD4) 178 % foreach segid $seglist resid $reslist {
    delatom $segid $resid
}
>Main< (MD4) 179 % writepdb rotate_b2ac_popcw.pdb
psfgen) Info: writing pdb file rotate_b2ac_popcw.pdb
psfgen) Info: pdb file complete.
>Main< (MD4) 180 % writepsf rotate_b2ac_popcw.psf
psfgen) Info: writing psf file rotate_b2ac_popcw.psf
psfgen) total of 38672 atoms
psfgen) total of 34424 bonds
psfgen) total of 53927 angles
psfgen) total of 69827 dihedrals
psfgen) total of 997 impropers
psfgen) total of 0 explicit exclusions
psfgen) total of 269 cross-terms
psfgen) Info: psf file complete.
>Main< (MD4) 181 % file delete rotate_b2ac_popc_water.TEMP.psf
>Main< (MD4) 182 % file delete rotate_b2ac_popc_water.TEMP.pdb
DEBUG: command_line = -psf {C:/Users/adrit/OneDrive/Documents/MD4/rotate_b2ac_popcw.psf} -pdb {C:/Users/adrit/OneDrive/Documents/MD4/rotate_b2ac_popcw.pdb} -o rotate_b2ac_popcwi -seg ION -sc 0.4 -cation POT -anion CLA -from 5 -between 5
Autoionize) Reading C:/Users/adrit/OneDrive/Documents/MD4/rotate_b2ac_popcw.psf/C:/Users/adrit/OneDrive/Documents/MD4/rotate_b2ac_popcw.pdb...
psfgen) clearing structure, preserving topology and aliases
psfgen) reading structure from psf file C:/Users/adrit/OneDrive/Documents/MD4/rotate_b2ac_popcw.psf
psfgen) duplicate topology file C:/Program
psfgen) reading coordinates from pdb file C:/Users/adrit/OneDrive/Documents/MD4/rotate_b2ac_popcw.pdb
Autoionize) System net charge before adding ions: 1.0000235512852669e.
Autoionize) Number of ions required for neutralizing the system: 0 POT and 1 CLA.
Autoionize) Desired salt concentration: 0.4 mol/L.
Autoionize) Ions to be placed:
Autoionize)   31 POT
Autoionize)   32 CLA
Autoionize) Required min distance from molecule: 5A.
Autoionize) Required min distance between ions: 5A.
Autoionize) Output file prefix 'rotate_b2ac_popcwi'.
Autoionize) Ions will be added to segname ION.
Autoionize) Obtained positions for 63 ions.
Autoionize) Tagged 63 water molecules for deletion.
Autoionize) Deleted 63 water molecules.
Autoionize) Reading CHARMM topology file...
psfgen) reading topology file C:/Program Files (x86)/University of Illinois/VMD/plugins/noarch/tcl/readcharmmtop1.2/toppar_water_ions_namd.str

psfgen)  Toplogy and parameter information for water and ions.
psfgen) 
psfgen) reading topology from stream file
psfgen)  Topology for water and ions
psfgen) 
psfgen) 31  1
psfgen)  Parameters for water and ions
psfgen) 
psfgen) ERROR!  Failed to parse atom statement.  Line 152: ATOMS

psfgen) duplicate type key HT
psfgen) duplicate type key HX
psfgen) duplicate type key OT
psfgen) duplicate type key OX
psfgen) duplicate type key LIT
psfgen) duplicate type key SOD
psfgen) duplicate type key MG
psfgen) duplicate type key POT
psfgen) duplicate type key CAL
psfgen) duplicate type key RUB
psfgen) duplicate type key CES
psfgen) duplicate type key BAR
psfgen) duplicate type key ZN
psfgen) duplicate type key CAD
psfgen) duplicate type key CLA
psfgen) ERROR!  Failed to parse bond statement.  Line 169: BONDS

psfgen) ERROR!  FAILED TO RECOGNIZE HT.  Line 178: HT    HT      0.0       1.5139  ! from TIPS3P geometry (for SHAKE w/PARAM)

psfgen) ERROR!  FAILED TO RECOGNIZE HT.  Line 179: HT    OT    450.0       0.9572  ! from TIPS3P geometry

psfgen) ERROR!  FAILED TO RECOGNIZE OX.  Line 180: OX    HX    545.0       0.9700  ! hydroxide ion

psfgen) ERROR!  Failed to parse angle statement.  Line 182: ANGLES

psfgen) ERROR!  FAILED TO RECOGNIZE HT.  Line 195: HT   OT   HT     55.0      104.52   ! FROM TIPS3P GEOMETRY

psfgen) ERROR!  Failed to parse dihedral statement.  Line 197: DIHEDRALS

psfgen) ERROR!  Failed to parse improper statement.  Line 210: IMPROPER

psfgen) ERROR!  FAILED TO RECOGNIZE NONBONDED.  Line 221: NONBONDED nbxmod  5 atom cdiel shift vatom vdistance vswitch -

psfgen) ERROR!  FAILED TO RECOGNIZE CUTNB.  Line 222: cutnb 14.0 ctofnb 12.0 ctonnb 10.0 eps 1.0 e14fac 1.0 wmin 1.5

psfgen) ERROR!  FAILED TO RECOGNIZE HT.  Line 225: HT       0.0       -0.046     0.2245

psfgen) ERROR!  FAILED TO RECOGNIZE OT.  Line 226: OT       0.0       -0.1521    1.7682

psfgen) ERROR!  FAILED TO RECOGNIZE OX.  Line 229: OX     0.000000  -0.120000     1.700000 ! ALLOW   POL ION

psfgen) ERROR!  FAILED TO RECOGNIZE HX.  Line 231: HX     0.000000  -0.046000     0.224500 ! ALLOW PEP POL SUL ARO ALC

psfgen) ERROR!  FAILED TO RECOGNIZE LIT.  Line 235: LIT      0.0      -0.00233       1.2975  ! Lithium

psfgen) ERROR!  FAILED TO RECOGNIZE SOD.  Line 237: SOD      0.0       -0.0469    1.41075  ! new CHARMM Sodium 

psfgen) ERROR!  FAILED TO RECOGNIZE MG.  Line 239: MG       0.0       -0.0150    1.18500   ! Magnesium

psfgen) ERROR!  FAILED TO RECOGNIZE POT.  Line 241: POT      0.0       -0.0870    1.76375   ! Potassium

psfgen) ERROR!  FAILED TO RECOGNIZE CAL.  Line 243: CAL      0.0       -0.120      1.367    ! Calcium

psfgen) ERROR!  FAILED TO RECOGNIZE RUB.  Line 245: RUB      0.0000    -0.15      1.90      ! Rubidium

psfgen) ERROR!  FAILED TO RECOGNIZE CES.  Line 247: CES      0.0       -0.1900    2.100     ! Cesium

psfgen) ERROR!  FAILED TO RECOGNIZE BAR.  Line 249: BAR      0.0       -0.150     1.890     ! Barium

psfgen) ERROR!  FAILED TO RECOGNIZE ZN.  Line 251: ZN     0.000000  -0.250000     1.090000 ! Zinc

psfgen) ERROR!  FAILED TO RECOGNIZE CAD.  Line 253: CAD    0.000000  -0.120000     1.357000 ! Cadmium

psfgen) ERROR!  FAILED TO RECOGNIZE CLA.  Line 255: CLA      0.0       -0.150      2.27     ! Chloride

psfgen) ERROR!  FAILED TO RECOGNIZE NBFIX.  Line 258: NBFIX

psfgen) ERROR!  FAILED TO RECOGNIZE SOD.  Line 261: SOD    CLA      -0.083875   3.731 !  From osmotic pressure calibration, J. Phys.Chem.Lett. 1:183-189

psfgen) ERROR!  FAILED TO RECOGNIZE POT.  Line 262: POT    CLA      -0.114236   4.081 !  From osmotic pressure calibration, J. Phys.Chem.Lett. 1:183-189

psfgen)  NBFix between carboxylate and sodium
psfgen) 
psfgen) skipping statements at end of file due to end or return statement
psfgen) building segment ION
psfgen) setting patch for first residue to NONE
psfgen) setting patch for last residue to NONE
psfgen) Info: generating structure...segment complete.
Autoionize) Randomizing ion positions...
Autoionize) Assigning ion coordinates...
psfgen) Info: writing psf file rotate_b2ac_popcwi.psf
psfgen) total of 38546 atoms
psfgen) total of 34298 bonds
psfgen) total of 53864 angles
psfgen) total of 69827 dihedrals
psfgen) total of 997 impropers
psfgen) total of 0 explicit exclusions
psfgen) total of 269 cross-terms
psfgen) Info: psf file complete.
psfgen) Info: writing pdb file rotate_b2ac_popcwi.pdb
psfgen) Info: pdb file complete.
Autoionize) Loading new system with added ions...
Autoionize) System net charge after adding ions: 2.355128526687622e-5e.
Autoionize) All done.
>Main< (MD4) 183 % 