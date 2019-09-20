
# Load reverse correlation toolbox
library(rcicr)
library(stringr)

# Load data
rcdata <- read.csv('results.csv')

# Extract stimulus number based on trial number
rcdata$StimR <- substr(rcdata$Stim, 3, 7)
#check if Stim recoding worked (e.g., 00005, 00098, 00153)
head(rcdata$StimR)

rcdata$StimR = as.numeric(rcdata$StimR)
rcdata$response = as.numeric(rcdata$response)

# Generate CI
ci <- generateCI2IFC(rcdata$StimR, rcdata$response, 'mnes', 'stimuli/rcic_seed_1_time_Sep_19_2019_16_34.Rdata', scaling='matched')

# Generate anti-CI
ci <- generateCI2IFC(rcdata$StimR, rcdata$response, 'mnes', 'stimuli/rcic_seed_1_time_Sep_19_2019_16_34.Rdata', scaling='matched', antiCI=T)
