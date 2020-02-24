# RNA-seq_pipeline


These are the selection test scripts for the GSOC-project 'Creating a new pipeline for long-read RNA-seq using StringTie v2'

NOTE: Please give co-authorship if you are using or modifying this code!

Stringtie v2 was used to create gtf files,the output generated by tablemaker by using the gtf and bam input files  was used to
create a ballgown object and an FPKM matrix was generated and stored into a csv file.

The bash script bash_script.sh is used to 
1) Create the gtf files using stringtie v2.
2) Store the output into first1000_brain.gtf and first1000_liver.gtf in your home folder.
3) Store the output generated by tablemaker in brain_output and liver_output folders in your home directory.


The output generated by tablemaker is used by the R script and the FPKM matrix is stored in the csv files.
