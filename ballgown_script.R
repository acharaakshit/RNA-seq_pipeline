library(ballgown)

#brain 
bg_brain <- ballgown(samples = "~/brain_output" , meas = 'all')
brain_fpkm_mat <- texpr(bg_brain, meas = "FPKM")
write.csv(brain_fpkm_mat , "brain_fpkm.csv", row.names = FALSE)

#liver
bg_liver <- ballgown(samples = "~/liver_output", meas = "all")
liver_fpkm_mat <- texpr(bg_liver, meas = "FPKM")
write.csv(liver_fpkm_mat,"liver_fpkm.csv", row.names = FALSE)

#Mapping Nanopore 2D cDNA reads using minimap2
bg <- ballgown(samples = "~/spl_output", meas = 'all')
fpkm_mat <- texpr(bg_ecoli, meas = "FPKM")
write.csv(fpkm_mat, "minimap_fpkm.csv", row.names = FALSE)
