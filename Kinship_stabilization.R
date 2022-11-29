# load kinship data, add small value to diagonal for numerical stability and
# do an eigendecomposition
indir <- "/mnt/jack-5/vperelygin/data/GenSim/Hapgen_b36/60k" # genotypes dir
kinship <- read.table(paste(indir,
                            "/genotypes_genome_hapgen.controls.grm.rel",sep=""),
                      sep="\t", header=FALSE)

kinship <- as.matrix(kinship)
diag(kinship) <- diag(kinship) + 1e-4
kinship_decomposed <- eigen(kinship)

write.table(kinship,
            paste(indir, "/genotypes_genome_hapgen.controls.grm.rel",
                  sep=""),
            sep="\t", col.names=FALSE, row.names=FALSE)

write.table(kinship_decomposed$values,
            paste(indir, "/genotypes_eigenvalues",
                  sep=""), sep="\t", col.names=FALSE, row.names=FALSE)

write.table(kinship_decomposed$vectors, paste(indir, 
                                              "/genotypes_eigenvectors", sep=""),
            sep="\t", col.names=FALSE, row.names=FALSE)
