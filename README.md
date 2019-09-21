# ReverseCorrelationRunningOnline
Reverse Correlation (Faces; Run Online)

Project entails a program created using Processing (https://processing.org/) that allows you to run reverse correlation experiments online. 

An Example of what the program looks like: http://www.psychpopup.com/RCorExample/index.html

Please read the following options carefully:

a) To Test/Edit the Program Locally Follow these steps: 

1) Download the files included in this repository and store them in a local folder on your computer (name this folder:
ReverseCorrelationOpenSource; this is actually important as the folder needs to be named the same as the Processing script [see below]).
That is, change the dowloaded folder name from "ReverseCorrelationRunningOnline-master" to "ReverseCorrelationOpenSource"
2) Download Processing: https://processing.org/download/
3) Open the ReverseCorrelationOpenSource.pde file using Processing and click on run (arrow on the top left).
4) Please Note: The steps above are only to test/edit the Processing code locally. The program CANNOT be used to collect data locally; it can only be used to collect data online. 

b) To Create Your Own Reverse Correlation Progam That Runs Online Follow these steps (read all the steps BEFORE beginning):

1) Download the files included in this repository and store them in a local folder on your computer (name this folder:
ReverseCorrelationOpenSource; this is actually important as the folder needs to be named the same as the Processing script [see below])

2) Delete all the face images that you downloaded from this repository (all the files that start with "rcic_mnes_...") from 
your ReverseCorrelationOpenSource folder.
Also delete the "rcic_seed_1_time_Sep_19_2019_16_34.rData" file from ReverseCorrelationOpenSource (this is IMPORTANT). 

3) Open R (Rstudio) and run the rcicr package created by Ron Dotsch to generate stimulus faces. Instructions on how to do this can be found
here: http://www.rondotsch.nl/rcicr/ 
here: https://rdrr.io/rforge/rcicr/man/rcicr-package.html  
and here: http://www.rondotsch.nl/wp-content/uploads/2014/09/Reverse-correlation-tutorial-1.pdf (if you don't know how to use R, I suggest
looking at the start of this).

4) Add the face stimuli that were outputted by the rcicr prompts in R to ReverseCorrelationOpenSource (found in a folder labeled stimuli).
The stimuli folder output of the rcicr prompts also includes an rData file that should be added to your ReverseCorrelationOpenSource folder. 
MAKE SURE to add these files into ReverseCorrelationOpenSource directly (i.e., open the stimuli folder, select all, and copy paste into 
your ReverseCorrelationOpenSource folder; do NOT simply copy-paste the stimuli folder into ReverseCorrelationOpenSource). 

5) If you want to have less or more than 100 face pairs in your reverse correlation program (i.e., you had rcicr output less or more than
100 image pairs) or if you used a different base face in rcicr open CodeToProduceTextATopProcessingCode.py 
- To open CodeToProduceTextATopProcessingCode.py you need to download python if you don't have it pre-installed. Here's a primer on how to download and run scripts in python: 
https://www.techwalla.com/articles/how-to-run-a-python-script

6) Edit CodeToProduceTextATopProcessingCode.py to match the names of your face images and the number of your images and then run. You will
need this output for step (8) below.

7) Download Processing: https://processing.org/download/

8) Open the ReverseCorrelationOpenSource.pde file using Processing, add the output of (6) at the top of the code where directed. 
Change the number of trials variable to the number of image pairs you want to run (as directed at the top of the code). 
Run the code (arrow on the top left).

9) You now have a locally running reverse correlation script. Next steps are getting everything online. 

10) You need to set up a server. Unfortunately, this isn't an easy task per se. But there are many online resources on how to do this.
IMPORTANT: You do NOT need to code your website (i.e., html, etc.). The index.html file in the repository will do this for you.
IMPORTANT: Do not use wix.com or squarespace or something like that. You need to get a domain name and a server, NOT a fancy website
built by one of these companies. 
- I can host your experiment if need be. Simply email me: anton.gollwitzer@gmail.com 

If you set up your own server I'd recommend the following three steps: 
- Get a domain and simple hosting from godaddy (there are cheaper and better options) or some other website hosting company.
- Download a ssh (recommended)/ftp program (I recommend Bitvise ssh client [free and fast]). 
- On the website hosting company, get the host and username info to your simple hosting. Use the ssh/ftp program to access your 
server using this info.  

For more info see this primer on how to do all this (again there are many other options for instructions on how to do this):
https://medium.com/notes-from-the-classroom/basic-guide-to-get-a-domain-set-up-web-hosting-and-upload-your-first-website-via-ftp-ecc7e5e4d557

11) Go into the ReverseCorrelationOpenSource.pde and follow the instructions at the start of the code for setting up the link with your
server and about uncommenting/commenting specific lines of the code to make it run online. 

12) Set up a new directory (folder) on your server. Then use ftp or ssh to upload all the files in your 
ReverseCorrelationOpenSource folder to your new directory. 

13) Navigate to your webpage to test out the program, for example: www.myWebsite/myDirectory/index.html

14) Make sure that a results.csv file appears in your directory (i.e., on your server) after completing the test run 
(Note: you need to get to the end of the test run [when it says "the survey is not over..."] for your responses to be stored and for the
results.csv file to appear). 

15) Send participants to your study: wwww.yourWebsite.com/yourDirectory/index.html

16) If you want to have different conditions in your experiment, simply copy the ReverseCorrelationOpenSource.pde file and 
name the new file ReverseCorrelationOpenSource2.pde. Go into the new ReverseCorrelationOpenSource2.pde file and
search/find "results.csv" and change it to "results2.csv." Then copy the index.html file and name it index2.html. Go into the new 
index2.html file and change the line that include "ReverseCorrelationOpenSource.pde" to "ReverseCorrelationOpenSource2.pde" Make sure the new
files are uploaded to your directory on your server. Then send participants in one condition to 
wwww.yourWebsite.com/yourDirectory/index.html, and the others to wwww.yourWebsite.com/yourDirectory/index2.html.
- Participants in the first condition will see the program as in ReverseCorrelationOpenSource.pde and participants in the second condition 
will see the program as in ReverseCorrelationOpenSource2.pde
- The responses of participants in the first condition will be stored in results.csv, the responses of participants in the second
condition will be stored in results2.csv.

c) Analyze your data after running your online experiment

1) Download the results.csv output file that appeared on your server to your local machine/computer (Note: at least one person has to have
completed the fill online reverse correlation task for this file to show up). 

2) Open resultsEdited.csv file that is included in this repository and add the first line from this csv file 
(the headings) to the results.csv file that you downloaded in (1).  

3) I edited the analysis file provided by Ron Dotsch so that it matches the results (i.e., results.csv) that your program outputs. 
Open R (Rstudio) and open the generate_classification_images_Gollwitzer R file included in this repository (and which should be in 
your ReverseCorrelationOpenSource folder locally if you downloaded this repository).

4) Run the R code. Variations of analyses can be found below and these can then be edited to match the headings you added to your 
results.csv file and to run one participants versus many participants versus conditions, etc.  
here: http://www.rondotsch.nl/rcicr/ 
here: https://rdrr.io/rforge/rcicr/man/rcicr-package.html  
