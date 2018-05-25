//Here is general function(main for the GUI)

public void writeToTextArea(){
  txtDisplay.setText("List of Names");
  if(dropListSort.getSelectedIndex()==0){
    for(int i = 0; i<studentNames.size();i++){
     txtDisplay.appendText(studentNames.get(i)); 
    }
  } else if(dropListSort.getSelectedIndex()==1){
    for(int i = studentNames.size()-1; i>=0;i--){
     txtDisplay.appendText(studentNames.get(i)); 
    }
  }
  
}

public void printNames(){
 
   for(int i=0; i < studentNames.size(); i++){
      println(studentNames.get(i));
   }
   
}