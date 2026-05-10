# Automated Protein–Ligand Docking Pipeline using AutoDock Vina

This repository provides an automated workflow for:

- Ligand preparation
- Conversion of structure files (`PDB → MOL2 → PDBQT`)
- High-throughput docking using AutoDock Vina
- Visualization of docked complexes
- Movie generation using PyMOL
- GIF animation creation using ImageMagick

The workflow is designed for molecular docking studies involving multiple ligands against a target protein receptor.

---

# Project Structure

```bash
.
├── output_docking1/                 # Docking output directory
│   ├── protein_ligand1_ad4_out.pdbqt
│   └── ...
│
├── movie_script/                    # PyMOL movie generation scripts
│   ├── movie_script.pml
│   └── ...
│
├── ligand_convert_script.step1.sh  # Ligand conversion script
├── automated_docking_script_step2.sh
├── protein.pdb
├── ligand_1.pdbqt
└── README.md


# Installation
Create a Conda Environment for AutoDock Vina
conda create -n vina python=3.10
conda activate vina

conda config --env --add channels conda-forge

conda install -c conda-forge numpy swig boost-cpp libboost sphinx sphinx_rtd_theme
conda install -c conda-forge vina

# Check Installation
vina --help

# Install Additional Packages

These packages are required for ligand file conversion.

#two other package for file conversion from pdb to pdbqt
# Open Babel
conda install -c conda-forge openbabel

# Meeko
conda install -c conda-forge meeko

Install ImageMagick
ImageMagick is used to convert PNG frames into GIF animations.

sudo apt update
sudo apt install imagemagick

Convert PNG → GIF
convert -delay 5 -loop 0 frames/frame*.png animation.gif

or 
convert -delay 10 frames/frame*.png animation.gif

--------------------------------
# Features
----------------------------------
1. Automated ligand splitting
2. Batch ligand preparation
3. PDB → MOL2 → PDBQT conversion
4. Automated docking using AutoDock Vina
5. Docked complex generation
6. PyMOL visualization support
7. GIF/movie generation

---
_______________________________________________
Automated Ligand Preparation
_______________________________________________

Convert all ligands from:

PDB → MOL2
MOL2 → PDBQT

#########################################
bash ligand_convert_script.step1.sh
########################################

__________________________________________
Automated Docking
___________________________________________
Run the docking workflow:

bash automated_docking_script_step2.sh

-----------------------------------------
---
