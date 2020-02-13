
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



#NOTE: the 'rcic_seed_1_time_Sep_19_2019_16_34.Rdata' below needs to be replaced by the Rdata output file that was 
#produced when you created the stimuli/face images earlier. 
#the base name face needs to be replaced with the name of the base face that you used when you created
#the stimuli/face images earlier. 

# Generate Overall CI
ci <- generateCI2IFC(rcdata$StimR, rcdata$response, 'mnes', 'rcic_seed_1_time_Sep_19_2019_16_34.Rdata', scaling='matched')

# Generate Overall anti-CI
ci <- generateCI2IFC(rcdata$StimR, rcdata$response, 'mnes', 'rcic_seed_1_time_Sep_19_2019_16_34.Rdata', scaling='matched', antiCI=T)


# Generate CI for each participant
cis <- batchGenerateCI2IFC(rcdata, "ID", "StimR", "response", 'mnes', 'rcic_seed_1_time_Sep_19_2019_16_34.Rdata')

# Generate CI for each condition
# You must add a condition column in the results csv file and manually label each response according
# to which condition someone was in. Make sure the header of this column is "Condition"  
cis <- batchGenerateCI2IFC(rcdata, "Condition", "StimR", "response", 'mnes', 'rcic_seed_1_time_Sep_19_2019_16_34.Rdata')
