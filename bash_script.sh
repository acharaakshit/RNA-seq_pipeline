#!/bin/bash
eval "stringtie -L ~/RNA_nanopore.brain.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC_genome_convert.sorted.bam >> brain.gtf"
eval "tail -n +1 ~/brain.gtf | head -n 1001 > ~/first1000_brain.gtf"
eval "stringtie -L ~/RNA_nanopore.liver.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC_genome_convert.sorted.bam >> liver.gtf"
eval "tail -n +1 ~/liver.gtf | head -n 1001 > ~/first1000_liver.gtf"
eval "tablemaker -p 3 -q -W -G first1000_brain.gtf -o ~/brain_output ~/RNA_nanopore.brain.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC_genome_convert.sorted.bam"
eval "tablemaker -p 3 -q -W -G first1000_liver.gtf -o ~/liver_output ~/RNA_nanopore.liver.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC_genome_convert.sorted.bam"
