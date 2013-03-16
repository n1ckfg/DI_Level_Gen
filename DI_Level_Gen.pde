Data data = new Data();
int levelStart = 50; //50
int levelEnd = 99; //99
int expPoints = 30000;
float multPoints = 1.1;
int addPoints = 0;

void setup(){
  Settings settings = new Settings("settings.txt");  
}

void draw(){
  data.beginSave();
  for(int i=levelStart;i<levelEnd+1;i++){
      if(i>levelStart) expPoints = int(float(expPoints) * multPoints)+addPoints;
      data.add("<level id=\"" + i + "\">");
      data.add("\t" + "<prop n=\"ExpToNextLevel\" v=\"" + expPoints + "\"/>");
      data.add("\t" + "<prop n=\"AllowedSkillsCount\" v=\"" + (i-1) + "\"/>");
      data.add("</level>");
  }
  data.endSave("output.txt");
  exit();
}


