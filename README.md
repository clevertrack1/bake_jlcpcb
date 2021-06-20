# bake_jlcpcb

Dont waste time selecting component footprints and then finding the JLCPCB part numbers. These scripts do it all.
My goal is to have a feature in Kicad like Annotate that does all the neccessary junk to get an assembled pcb from JLCPCB.

This project is a set of Awk Scripts to add JLCPCB fields to Kicad schematics for automation using KiKit.

Here are awk scripts for basic smd resistors, choose the script based on the smd size you are using.

This script will add the LCSC field containing the LCSC part number for the matching resistance value 
  for resistors with no footprint 
  or resistors with a matching footprint and no LCSC field.

HOW TO USE
Copy the kicad schematic to a backup file and then 

  gawk -f bake_jlcpcb_r0402.awk backup_echematic >original_schematic
  
