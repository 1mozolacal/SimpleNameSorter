// Need G4P library
import g4p_controls.*;


public ArrayList<String> studentNames = new ArrayList<String>();


public void setup(){
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  
}

public void draw(){
  background(230);
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}

public void addName(String name){
  
  boolean notPlacedYet = true;
  for(int i =0; i< studentNames.size();i++){
    if(isHigherRated(name,studentNames.get(i),0)){
      notPlacedYet = false;
      studentNames.add(i,name);
      i=studentNames.size();
    }
  }
  
  if(notPlacedYet){
    studentNames.add(name);
  }
  
  
}


public boolean isHigherRated(String nameToCheck, String otherName, int charToCheck){
    
  int firstNameNum;
  int secondNameNum;
  
  if(nameToCheck.length()<=charToCheck){//have to make sure there is a char at the location that you want to look at
    firstNameNum = 0;
  }else {
     firstNameNum = nameToCheck.charAt(charToCheck); 
  }
  
  if(otherName.length()<=charToCheck){//have to make sure there is a char at the location that you want to look at
    secondNameNum = 0;
  }else {
     secondNameNum = otherName.charAt(charToCheck); 
  }
  
  if(firstNameNum < secondNameNum || (firstNameNum==0 && secondNameNum ==0)){return true;}//The condition after || will protect against the same name
  else if(firstNameNum == secondNameNum){return isHigherRated(nameToCheck,otherName,charToCheck+1);}
  else {return false;}
  
}