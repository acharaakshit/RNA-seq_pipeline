#!/bin/bash
eval "stringtie -L ~/RNA_nanopore.brain.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC_genome_convert.sorted.bam >> brain.gtf"
eval "tail -n +1 ~/brain.gtf | head -n 1001 > ~/first1000_brain.gtf"
eval "stringtie -L ~/RNA_nanopore.liver.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC_genome_convert.sorted.bam >> liver.gtf"
eval "tail -n +1 ~/liver.gtf | head -n 1001 > ~/first1000_liver.gtf"
eval "stringtie --merge ~/first1000_brain.gtf -o merged_brain.gtf"
eval "stringtie --merge ~/first1000_liver.gtf -o merged_liver.gtf"

VAR1=`find . -name brain_output -print`
VAR2=`find . -name liver_output -print`

if [ -z "$VAR1" ]
then
	eval "mkdir ~/brain_output"
else 
	eval "rm -rf ~/brain_output"
fi	

if [ -z "$VAR2" ]
then
	eval "mkdir ~/liver_output"
else
        eval "rm -rf ~/liver_output"
fi

eval "stringtie -B -G merged_brain.gtf -o ~/brain_output/brain.out ~/RNA_nanopore.brain.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC_genome_convert.sorted.bam"
eval "stringtie -B -G merged_liver.gtf -o ~/liver_output/liver.out ~/RNA_nanopore.liver.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC_genome_convert.sorted.bam"
