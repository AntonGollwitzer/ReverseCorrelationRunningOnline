
# Install reverse correlation toolbox
install.packages("rcicr")

# Load reverse correlation toolbox
library(rcicr)

# Generate and save stimuli
generateStimuli2IFC(base_face_files=list('mnes'='MNES.jpg'), n_trials=100)
