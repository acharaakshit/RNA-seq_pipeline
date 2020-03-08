#!/bin/bash
eval "minimap2 -ax splice ~/minimap2/SIRV_E2.fa ~/minimap2/SIRV_ont-cdna.fa > align.sam"
eval "samtools view -S -b align.sam > align.bam"
eval "samtools sort align.bam -o align.sorted.bam"
eval "stringtie -L ~/align.sorted.bam > align.gtf"
eval "stringtie --merge ~/align.gtf -o merged_align.gtf"

if [ -z ~/ballgown_minimap_input ];
then
	eval "mkdir ~/ballgown_minimap_input"
else
	eval "rm -rf ~/ballgown_minimap_input"	
fi

eval "stringtie -B -G merged_align.gtf -o ~/ballgown_minimap_input/brain.out ~/align.sorted.bam"

