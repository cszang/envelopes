env_pisy <- read.csv("raw_data/PISY.csv")
env_fasy <- read.csv("raw_data/FASY.csv")
env_pcab <- read.csv("raw_data/PCAB.csv")

save(env_pisy, env_fasy, env_pcab, file = "data/envelopes.rda")
