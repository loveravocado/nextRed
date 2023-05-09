Iluminaion iluminaion;


void setup(){
  iluminaion = new Iluminaion();
  size(2000, 1500);
  colorMode(HSB, 360, 100, 100);
  background(0);
  smooth();
  frameRate(12);
  
  iluminaion.cricle();
  
  
}

void draw(){
    
    for(int i=0; i < iluminaion.num; i++){
      fill(0);
      ellipse(iluminaion.cricle_xbox[i], iluminaion.cricle_ybox[i], 
      iluminaion.cricle_sizebox[i] + 0.5, iluminaion.cricle_sizebox[i] + 0.5);
    }
  
  
    for(int i=0; i < iluminaion.num; i++){
      iluminaion.cricle_xbox[i] += iluminaion.cricle_move_xbox[i];
      iluminaion.cricle_ybox[i] += iluminaion.cricle_move_ybox[i];
      
      fill(iluminaion.cricle_colorbox[i], 50, iluminaion.cricle_s, 100);
      noStroke();
      ellipse(iluminaion.cricle_xbox[i], iluminaion.cricle_ybox[i], 
      iluminaion.cricle_sizebox[i], iluminaion.cricle_sizebox[i]);
    }
    
    
    if(mousePressed == true){
      iluminaion.turn_red();
      iluminaion.turn_blue();
    } 
  
}



class Iluminaion{
    int num = 300;
    float cricle_size;
    float[] cricle_sizebox = new float[num];
    
    float cricle_color;
    float[] cricle_colorbox = new float[num];
    
    
    float cricle_x;
    float cricle_y;
    float[] cricle_xbox = new float[num];
    float[] cricle_ybox = new float[num];
    
    float move_x;
    float move_y;
    float [] cricle_move_xbox = new float[num];
    float [] cricle_move_ybox = new float[num];
    
    float cricle_s = 100;
    
  void cricle(){
    
    
    
    for(int i = 0; i < num; i++){  
    cricle_x = random(10, width-10);
    cricle_y = random(10, height-10);
    
    cricle_xbox[i] = cricle_x;
    cricle_ybox[i] = cricle_y;

    
    move_x = random(-0.5, 0.5);
    move_y = random(-0.5, 0.5);
    
    cricle_move_xbox[i] = move_x;
    cricle_move_ybox[i] = move_y;
   
    
    cricle_size = random(40, 100);
    cricle_sizebox[i] = cricle_size;
    
    cricle_color = random(65, 165);
    cricle_colorbox[i] = cricle_color;
    
    fill(cricle_color, 50, cricle_s, 100);
    noStroke();
    ellipse(cricle_x, cricle_y, cricle_size, cricle_size);
    }
  }
  
  void turn_red(){
    for(int i = 0; i < num; i++){
      if(abs(mouseX - cricle_xbox[i]) < 80 &
      abs(mouseY - cricle_ybox[i]) < 80){
        cricle_colorbox[i] = 0;
     }
     if(abs(mouseX - cricle_xbox[i]) < 15 &
      abs(mouseY - cricle_ybox[i]) < 15){
         cricle_s = 100;
        break;
      }
    }
  }
  
  void turn_blue(){
    for(int i = 0; i < num; i++){
    if(abs(mouseX - cricle_xbox[i]) < 20 &
      abs(mouseY - cricle_ybox[i]) < 20){
        cricle_colorbox[i] = 235;
        break;
      }
    }
  }
}
