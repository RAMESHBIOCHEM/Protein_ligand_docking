import os
os.makedirs("frames", exist_ok=True)

load ../protein.pdb 
load ../output1/protein_ligand1_ad4_out.pdbqt
set orthoscopic, on

bg_color white
show cartoon
spectrum count, rainbow, selection=protein

##orient

##better quality
set ray_trace_frames, 1
mpng frames/frame 

quit
