#!/bin/bash

##AutoDock Workflow
obabel 34_ligand_convert.pdb -O ligand_.pdb -m
##This generates:
## ligand_1.pdb
##ligand_2.pdb
##ligand_3.pdb
##...

##ligand conversion to pdbqt
for num in {1..34}
do
obabel ligand_${num}.pdb -O ligand_${num}.mol2 -h       	
mk_prepare_ligand.py -i ligand_${num}.mol2 -o ligand_${num}.pdbqt
echo "$num"
done
