#!/bin/bash

## Prepare the pdbqt file for the Protein ##
mk_prepare_receptor.py -i protein.pdb -o protein_receptor -p -v -g --box_size 50 50 50 --box_center 23.768259048461914 16.592430114746094 12.018509864807129

## creating the map file ##
autogrid4 -p protein_receptor.gpf -l protein_receptor.glg


## Running Atuodoc using Autodock4 forcefield ##

for num in {1..2}
do
	mkdir -p output${num}
vina  --ligand ../ligand_${num}.pdbqt --maps protein_receptor --scoring ad4 --exhaustiveness 32 --out output_docking${num}/protein_ligand${num}_ad4_out.pdbqt
echo "$num"
done



