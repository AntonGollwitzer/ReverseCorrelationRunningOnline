//Reverse Correlation (Faces) for Online Studies/Experiments
//Credit: Anton Gollwitzer anton.gollwitzer@yale.edu
//I am happy to help out and host your experiment on my server. Please contact me if this is the case. 

//You need to preload all the images. Below loads to 100. If you want to load more you can run the python script on the github
//labeled "CodeToProduceTextATopProcessingCode" and set the trial number to how many images you want.
//It will produce text that you simply replace the line below with.

/* @pjs preload="rcic_mnes_1_00001_inv.jpg","rcic_mnes_1_00001_ori.jpg","rcic_mnes_1_00002_inv.jpg","rcic_mnes_1_00002_ori.jpg","rcic_mnes_1_00003_inv.jpg","rcic_mnes_1_00003_ori.jpg","rcic_mnes_1_00004_inv.jpg","rcic_mnes_1_00004_ori.jpg","rcic_mnes_1_00005_inv.jpg","rcic_mnes_1_00005_ori.jpg","rcic_mnes_1_00006_inv.jpg","rcic_mnes_1_00006_ori.jpg","rcic_mnes_1_00007_inv.jpg","rcic_mnes_1_00007_ori.jpg","rcic_mnes_1_00008_inv.jpg","rcic_mnes_1_00008_ori.jpg","rcic_mnes_1_00009_inv.jpg","rcic_mnes_1_00009_ori.jpg","rcic_mnes_1_00010_inv.jpg","rcic_mnes_1_00010_ori.jpg","rcic_mnes_1_00011_inv.jpg","rcic_mnes_1_00011_ori.jpg","rcic_mnes_1_00012_inv.jpg","rcic_mnes_1_00012_ori.jpg","rcic_mnes_1_00013_inv.jpg","rcic_mnes_1_00013_ori.jpg","rcic_mnes_1_00014_inv.jpg","rcic_mnes_1_00014_ori.jpg","rcic_mnes_1_00015_inv.jpg","rcic_mnes_1_00015_ori.jpg","rcic_mnes_1_00016_inv.jpg","rcic_mnes_1_00016_ori.jpg","rcic_mnes_1_00017_inv.jpg","rcic_mnes_1_00017_ori.jpg","rcic_mnes_1_00018_inv.jpg","rcic_mnes_1_00018_ori.jpg","rcic_mnes_1_00019_inv.jpg","rcic_mnes_1_00019_ori.jpg","rcic_mnes_1_00020_inv.jpg","rcic_mnes_1_00020_ori.jpg","rcic_mnes_1_00021_inv.jpg","rcic_mnes_1_00021_ori.jpg","rcic_mnes_1_00022_inv.jpg","rcic_mnes_1_00022_ori.jpg","rcic_mnes_1_00023_inv.jpg","rcic_mnes_1_00023_ori.jpg","rcic_mnes_1_00024_inv.jpg","rcic_mnes_1_00024_ori.jpg","rcic_mnes_1_00025_inv.jpg","rcic_mnes_1_00025_ori.jpg","rcic_mnes_1_00026_inv.jpg","rcic_mnes_1_00026_ori.jpg","rcic_mnes_1_00027_inv.jpg","rcic_mnes_1_00027_ori.jpg","rcic_mnes_1_00028_inv.jpg","rcic_mnes_1_00028_ori.jpg","rcic_mnes_1_00029_inv.jpg","rcic_mnes_1_00029_ori.jpg","rcic_mnes_1_00030_inv.jpg","rcic_mnes_1_00030_ori.jpg","rcic_mnes_1_00031_inv.jpg","rcic_mnes_1_00031_ori.jpg","rcic_mnes_1_00032_inv.jpg","rcic_mnes_1_00032_ori.jpg","rcic_mnes_1_00033_inv.jpg","rcic_mnes_1_00033_ori.jpg","rcic_mnes_1_00034_inv.jpg","rcic_mnes_1_00034_ori.jpg","rcic_mnes_1_00035_inv.jpg","rcic_mnes_1_00035_ori.jpg","rcic_mnes_1_00036_inv.jpg","rcic_mnes_1_00036_ori.jpg","rcic_mnes_1_00037_inv.jpg","rcic_mnes_1_00037_ori.jpg","rcic_mnes_1_00038_inv.jpg","rcic_mnes_1_00038_ori.jpg","rcic_mnes_1_00039_inv.jpg","rcic_mnes_1_00039_ori.jpg","rcic_mnes_1_00040_inv.jpg","rcic_mnes_1_00040_ori.jpg","rcic_mnes_1_00041_inv.jpg","rcic_mnes_1_00041_ori.jpg","rcic_mnes_1_00042_inv.jpg","rcic_mnes_1_00042_ori.jpg","rcic_mnes_1_00043_inv.jpg","rcic_mnes_1_00043_ori.jpg","rcic_mnes_1_00044_inv.jpg","rcic_mnes_1_00044_ori.jpg","rcic_mnes_1_00045_inv.jpg","rcic_mnes_1_00045_ori.jpg","rcic_mnes_1_00046_inv.jpg","rcic_mnes_1_00046_ori.jpg","rcic_mnes_1_00047_inv.jpg","rcic_mnes_1_00047_ori.jpg","rcic_mnes_1_00048_inv.jpg","rcic_mnes_1_00048_ori.jpg","rcic_mnes_1_00049_inv.jpg","rcic_mnes_1_00049_ori.jpg","rcic_mnes_1_00050_inv.jpg","rcic_mnes_1_00050_ori.jpg","rcic_mnes_1_00051_inv.jpg","rcic_mnes_1_00051_ori.jpg","rcic_mnes_1_00052_inv.jpg","rcic_mnes_1_00052_ori.jpg","rcic_mnes_1_00053_inv.jpg","rcic_mnes_1_00053_ori.jpg","rcic_mnes_1_00054_inv.jpg","rcic_mnes_1_00054_ori.jpg","rcic_mnes_1_00055_inv.jpg","rcic_mnes_1_00055_ori.jpg","rcic_mnes_1_00056_inv.jpg","rcic_mnes_1_00056_ori.jpg","rcic_mnes_1_00057_inv.jpg","rcic_mnes_1_00057_ori.jpg","rcic_mnes_1_00058_inv.jpg","rcic_mnes_1_00058_ori.jpg","rcic_mnes_1_00059_inv.jpg","rcic_mnes_1_00059_ori.jpg","rcic_mnes_1_00060_inv.jpg","rcic_mnes_1_00060_ori.jpg","rcic_mnes_1_00061_inv.jpg","rcic_mnes_1_00061_ori.jpg","rcic_mnes_1_00062_inv.jpg","rcic_mnes_1_00062_ori.jpg","rcic_mnes_1_00063_inv.jpg","rcic_mnes_1_00063_ori.jpg","rcic_mnes_1_00064_inv.jpg","rcic_mnes_1_00064_ori.jpg","rcic_mnes_1_00065_inv.jpg","rcic_mnes_1_00065_ori.jpg","rcic_mnes_1_00066_inv.jpg","rcic_mnes_1_00066_ori.jpg","rcic_mnes_1_00067_inv.jpg","rcic_mnes_1_00067_ori.jpg","rcic_mnes_1_00068_inv.jpg","rcic_mnes_1_00068_ori.jpg","rcic_mnes_1_00069_inv.jpg","rcic_mnes_1_00069_ori.jpg","rcic_mnes_1_00070_inv.jpg","rcic_mnes_1_00070_ori.jpg","rcic_mnes_1_00071_inv.jpg","rcic_mnes_1_00071_ori.jpg","rcic_mnes_1_00072_inv.jpg","rcic_mnes_1_00072_ori.jpg","rcic_mnes_1_00073_inv.jpg","rcic_mnes_1_00073_ori.jpg","rcic_mnes_1_00074_inv.jpg","rcic_mnes_1_00074_ori.jpg","rcic_mnes_1_00075_inv.jpg","rcic_mnes_1_00075_ori.jpg","rcic_mnes_1_00076_inv.jpg","rcic_mnes_1_00076_ori.jpg","rcic_mnes_1_00077_inv.jpg","rcic_mnes_1_00077_ori.jpg","rcic_mnes_1_00078_inv.jpg","rcic_mnes_1_00078_ori.jpg","rcic_mnes_1_00079_inv.jpg","rcic_mnes_1_00079_ori.jpg","rcic_mnes_1_00080_inv.jpg","rcic_mnes_1_00080_ori.jpg","rcic_mnes_1_00081_inv.jpg","rcic_mnes_1_00081_ori.jpg","rcic_mnes_1_00082_inv.jpg","rcic_mnes_1_00082_ori.jpg","rcic_mnes_1_00083_inv.jpg","rcic_mnes_1_00083_ori.jpg","rcic_mnes_1_00084_inv.jpg","rcic_mnes_1_00084_ori.jpg","rcic_mnes_1_00085_inv.jpg","rcic_mnes_1_00085_ori.jpg","rcic_mnes_1_00086_inv.jpg","rcic_mnes_1_00086_ori.jpg","rcic_mnes_1_00087_inv.jpg","rcic_mnes_1_00087_ori.jpg","rcic_mnes_1_00088_inv.jpg","rcic_mnes_1_00088_ori.jpg","rcic_mnes_1_00089_inv.jpg","rcic_mnes_1_00089_ori.jpg","rcic_mnes_1_00090_inv.jpg","rcic_mnes_1_00090_ori.jpg","rcic_mnes_1_00091_inv.jpg","rcic_mnes_1_00091_ori.jpg","rcic_mnes_1_00092_inv.jpg","rcic_mnes_1_00092_ori.jpg","rcic_mnes_1_00093_inv.jpg","rcic_mnes_1_00093_ori.jpg","rcic_mnes_1_00094_inv.jpg","rcic_mnes_1_00094_ori.jpg","rcic_mnes_1_00095_inv.jpg","rcic_mnes_1_00095_ori.jpg","rcic_mnes_1_00096_inv.jpg","rcic_mnes_1_00096_ori.jpg","rcic_mnes_1_00097_inv.jpg","rcic_mnes_1_00097_ori.jpg","rcic_mnes_1_00098_inv.jpg","rcic_mnes_1_00098_ori.jpg","rcic_mnes_1_00099_inv.jpg","rcic_mnes_1_00099_ori.jpg","rcic_mnes_1_00100_inv.jpg","rcic_mnes_1_00100_ori.jpg"*/

///////////////////////////////////********USER VARIABLES YOU CAN CHANGE EASILY***********//////////////////

//Type of ID asked for text
public String userIDText = "Please enter your MTurk Worker ID (by starting to type): ";
//Intro text (the \n indicate line breaks)
public String introText = "You will be shown pairs of faces. Simply select the face in each pair \n that you think looks more trustworthy \n \n Click your mouse on this screen when you are ready to continue.";
//Prompt above the faces
//public String facesPrompt = "Which face do you think looks more trustworthy?"; 
public String facesPrompt = "Select the face in each pair that you think looks more trustworthy";
//The End message presented to participants
String endText = "The survey is NOT over. Please return to \n qualtrics to complete the survey. \n Your code is ";
//Whether a code is presented at the end or not (change to false if you do not want a code to be presented.
Boolean includeCode = true;
//The number of trails you want to run (e.g., for 300 pairs of faces right 300). 300 is the recommended amount for generating average faces for 
//each participant. 
public int totalNumberTrials = 100;
//server location where the php file is located. Change to match your server (do NOT change the "saveToCSV.php?dataToFile=" portion)
//make sure you have the saveToCSV.php?dataToFile on your server (it's hosted on the github page of this project)
public String serverLocation = "http://www.psychpopup.com/RCor/saveToCSV.php?dataToFile=";

///////////////////////////////////********END OF USER VARIABLES YOU CAN CHANGE EASILY***********//////////////////


import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.*;
import java.util.Iterator;
import java.util.Collections;

public int width;
public int height;
int state; 
public int trialNum=0;
int currentTime;

int randomEndCode;

public boolean leftIsInverse;
float mouseXCord = mouseX;
float mouseYCord = mouseY;

String typing = "";
//stores ID entered by the participant
public String code = "";
boolean startTool = false;
boolean textHit = false;
boolean inIntro = true;

boolean outOfPresentIntro1 = false;
boolean outOfPresentIntro2 = false;

public ArrayList<imageObject> images = new ArrayList<imageObject>();
ArrayList<String> responses = new ArrayList<String>();

int listNum;

boolean moveOn = false;

imageObject imagePair; 
  
void setup() {
  width=1000;
  height=555;
  // setup is called once at start up.
  size(1000, 555);
  randomEndCode = int(random(1000));
  state=99;
  background(0);
  noStroke();
  smooth();
  for(int i=1; i<=totalNumberTrials; i++){
      imageObject currentPair = new imageObject(i);
      //print(currentPair.imageName1 + "\n");
      //print(currentPair.imageName2 + "\n");
      images.add(currentPair);
    }
  shuffleList();
  listNum=0; 
}

void draw() {
  // draw is called repeatedly
  // clear out the background
  if (state == 99) {
    enterTurkCode();
  }
  if(state == 100){
    presentIntro1();
  }
  // pick two images/faces and present
  else if (state==1) {
    if(trialNum==totalNumberTrials){
      state=3;
    }
    else{
      mousePressed=false;
      background(0);
      imagePair = images.get(listNum);
      //println(imagePair.imageName1);
      imagePair.display();
      images.remove(listNum);
      state=2;
      //print(imagePair.imageName1 + " hi \n");
    }
  }
  //wait for mouse click and continue when mouse clicked (one face image chosen)
  else if (state==2) {
    if(mousePressed)
    {
      //println(mouseX);
      mouseXCord = mouseX;
      mouseYCord = mouseY;
      if(mouseXCord>(width/2)){
        if(leftIsInverse==true){
          imagePair.response = 1;
        }
        if(leftIsInverse==false){
          imagePair.response = -1;
        }
        imagePair.recordResponse();
        //println("as 1: " + mouseX);
      }
      if(mouseXCord<=(width/2)){
        if(leftIsInverse==true){
          imagePair.response = -1;
        }
        if(leftIsInverse==false){
          imagePair.response = 1;
        }
        imagePair.recordResponse();
        //println("as -1: " + mouseX);
      }
      trialNum++;
      mousePressed=false;
      state=1;
    }
  }
  else if (state==3) {
   textSize(25);
  background(0);
    textAlign(CENTER,CENTER);
    text("Please wait. Your responses are being recorded... ", width/2, height/2);
    state=4;
  }
  else if(state==4){
    for(int x=0; x<totalNumberTrials; x++){
      //println("Output: " + responses.get(x));
      loadStrings(serverLocation+responses.get(x));
    }
     textSize(25);
    background(0);
    fill(255);
    textAlign(CENTER,CENTER);
    if(includeCode==true){
        text(endText + randomEndCode, width/2, height/2);
    }
    else{
       text(endText, width/2, height/2);
    }
    state++;
  }
}



void enterTurkCode() {

  textSize(25);
  background(0);
  textAlign(LEFT);
  if (mouseX>200 && mouseX <400 && mouseY> 0 && mouseY<150 && mousePressed==true) {

    textHit = true;
  }
  if (textHit==false) {
    text("Please click here [ click me ] ", 100, 100);
  } else {
    text("If you mistype your ID, refresh the page", 100, 100); 
    text("and do not press backspace!", 100, 130);
  }
  text("After Clicking Above", 100, 175);
  text(userIDText, 100, 225); 
  text("then press enter", 100, 275);
  text(typing, 100, 335);
  stroke(225);
  strokeWeight(3);
  line(100, 345, 400, 345);
  //if filename has been entered continue
  if (startTool == true) {
    state = 100;
    //print("code: "+code);
    startTool = false;
    inIntro = false;
  }
}

void presentIntro1() {
  instructions();
  if(mousePressed){
        background(0);
        state=1;
  }
}


void instructions() {

   textSize(25);
  background(0);
  textAlign(CENTER,CENTER);
  text(introText,width/2,height/2);
}


void keyPressed()
{
  /* you do not need to say key.toString() in the processing application. You can just say:
   typing += key;
   However, when uploading online, you will need to use toString()
   */

  if (inIntro == true) { 
    if (key != CODED) {
          //COMMENT OUT THE BELOW CODE WHEN RUNNING LOCALLY (it allows participants to type their participant number when uploaded to your server but locally
          //it will cause the program to crash)
          //typing += key.toString();
    }
    //COMMENT OUT THIS CODE WHEN RUNNING ONLINE
    typing += key;

    //unfortunately backspace is permanent-coded as go back a tab in many browsers. Thus, this code does not work.  
    if (keyCode == BACKSPACE) {
      if (typing.length() > 1) {
        typing = typing.substring(0, typing.length()-2);
      }
    } else { 
      typing = typing; // Each character typed by the user is added to the end of the String variable.
    }

    if (keyCode == ENTER)
    {
      code = typing;
      typing = "";
      //typeFilename = false;
      keyCode=RIGHT;
      startTool=true;
    }
  }
}

 // coded manually because Collections.shuffle does not convert to javascript properly via the processing compiler. 
 // absurdly inefficient and brute forced but for our purposes it will do 
void shuffleList() {
  
  ArrayList <Integer> newPosition = new ArrayList<Integer>();
  ArrayList <imageObject> shuffledImages = new ArrayList<imageObject>();
  for(int i=0; i<totalNumberTrials; i++){
      newPosition.add(-1);
      shuffledImages.add(null);
    }
  for(int i=0; i<totalNumberTrials; i++){
      boolean needToAdd = true;
       while(needToAdd){
         int pos = int(random(totalNumberTrials));
         if(newPosition.get(pos)==-1){
            newPosition.set(pos, 99);
            shuffledImages.set(pos,images.get(i));
            needToAdd=false;
         }
       }
   }
   images = shuffledImages;
   //Test the shuffle to make sure it worked
   //for(int i=0; i<totalNumberTrials; i++){
     // println(images.get(i).imageName1 + "\n");
    //}
}

public class imageObject{
  public String imageName1 = null;
  public PImage imageFace1 = null;
  public String imageName2 = null;
  public PImage imageFace2 = null;
  public int response = 99;
  
  int clickX=99999;
  int clickY=99999;
  
  // constructor
  imageObject(int i)
  {
    if(i<10){
      imageName1 = "rcic_mnes_1_0000" + i +"_inv.jpg";
      imageFace1 = loadImage("rcic_mnes_1_0000" + i +"_inv.jpg");
      imageName2 = "rcic_mnes_1_0000" + i +"_ori.jpg";
      imageFace2 = loadImage("rcic_mnes_1_0000" + i +"_ori.jpg");
    }
    if(i>9 && i<100){
      imageName1 = "rcic_mnes_1_000" + i +"_inv.jpg";
      imageFace1 = loadImage("rcic_mnes_1_000" + i +"_inv.jpg");
      imageName2 = "rcic_mnes_1_000" + i +"_ori.jpg";
      imageFace2 = loadImage("rcic_mnes_1_000" + i +"_ori.jpg");
    }
     if(i>99){
      imageName1 = "rcic_mnes_1_00" + i +"_inv.jpg";
      imageFace1 = loadImage("rcic_mnes_1_00" + i +"_inv.jpg");
      imageName2 = "rcic_mnes_1_00" + i +"_ori.jpg";
      imageFace2 = loadImage("rcic_mnes_1_00" + i +"_ori.jpg");
    }
  }

  // display
  void display()
  {
      textSize(25);
      background(0);
      textAlign(CENTER,CENTER);
      text(facesPrompt,width/2,height/10);
      int percentComplete = int((trialNum*100)/totalNumberTrials);
      text("Progress: " + percentComplete + "%",width/2,height-50);
      int randomInt = int(random(2));
      if(randomInt==0){
        image(imageFace1, width*(1.0/9.0), height*(1.0/5.0), width*(1.0/3.0), height*(3.0/5.0));
        image(imageFace2, width*(5.0/9.0), height*(1.0/5.0), width*(1.0/3.0), height*(3.0/5.0));
        leftIsInverse = true;
      }
      if(randomInt==1){
        image(imageFace2, width*(1.0/9.0), height*(1.0/5.0), width*(1.0/3.0), height*(3.0/5.0));
        image(imageFace1, width*(5.0/9.0), height*(1.0/5.0), width*(1.0/3.0), height*(3.0/5.0));
        leftIsInverse = false;
      }

  }
  void recordResponse()
  {
      String sequenceNumber = imageName1.substring(12,17);
      //loads the following in csv for each participant: ID code (entered at the start by the particiapnt, the sequence number of the trial of faces, 
      //the trial number (the order the faces were presented), the name of the image on the left, the name of the image on the right, and the participants response
      //(-1 for inverted, 1 for original).
      String leftIsInverseText = "ERROR";
      if(leftIsInverse==true){
        leftIsInverseText = "LeftInverse";
      }
      else{
        leftIsInverseText = "RightInverse";
      }
      String testData = "results.csv" + "remove" + code + "," + "S_"+sequenceNumber +"," + leftIsInverseText + ","  + imageName1 + "," + imageName2 + "," + mouseXCord + "," + mouseYCord + "," + response + "," + randomEndCode + "\n";
      responses.add(testData);
      print(testData + "\n");
      //println("GOT HERE: " + sequenceNumber);
  }
}

  
