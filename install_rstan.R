dotR <- file.path(Sys.getenv("HOME"), ".R")
if (!dir.exists(dotR)) dir.create(dotR)
M <- file.path(dotR, "Makevars")
if (!file.exists(M)) file.create(M)
cat("\nCXXFLAGS=-O3", file = M, sep = "\n", append = TRUE)
cat("\nCXXFLAGS+=-flto -ffat-lto-objects", 
    file = M, sep = "\n", append = TRUE)


Sys.setenv(MAKEFLAGS = "-j4")

install.packages("rstan", dependencies = TRUE)