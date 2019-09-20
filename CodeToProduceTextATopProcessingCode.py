#code that produces the text portion you need to put at the top of the processing code
#at the top of ReverseCorrelation.pde

#enter the number of images you generated to use in the reverse correlation task
totalTrialNum = 100

#enter the name of your base image
baseImageName = "mnes"

facesNames = ""

i=1

while i<=totalTrialNum:
    if i<10:
        facesNames = facesNames + "\"rcic_" + baseImageName + "_1_0000" + str(i) +"_inv.jpg\""
        facesNames = facesNames + ","
        facesNames = facesNames + "\"rcic_" + baseImageName + "_1_0000" + str(i) +"_ori.jpg\""
    elif i>9 and i<100:
        facesNames = facesNames + "\"rcic_" + baseImageName + "_1_000" + str(i) +"_inv.jpg\""
        facesNames = facesNames + ","
        facesNames = facesNames + "\"rcic_" + baseImageName + "_1_000" + str(i) +"_ori.jpg\""
    else:
        facesNames = facesNames + "\"rcic_" + baseImageName + "_1_00" + str(i) +"_inv.jpg\""
        facesNames = facesNames + ","
        facesNames = facesNames + "\"rcic_" + baseImageName + "_1_00" + str(i) +"_ori.jpg\""
    
    if i != totalTrialNum:
        facesNames = facesNames + ","
    i=i+1


print("/* @pjs preload="+facesNames+"*/")
