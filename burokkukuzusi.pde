import ddf.minim.*;//music

Minim minim;//music
AudioPlayer player,fole,fole2,fole3;//music HENSUU

void setup(){
 minim = new Minim(this); //music
 player = minim.loadFile("204.mp3"); //BGM
 player.play();//BGM Play
 fole = minim.loadFile("falling2a.mp3");//fole music 
 fole2 = minim.loadFile("falling2a2.mp3");//fole2 music
 fole3 = minim.loadFile("falling2a3.mp3");//fole3 music 
 size(800,600);//window size
 frameRate(5000);//1sec
}


float x = 350;//ball.start.X
float y = 250;//ball.start.Y
float dx = 0;//ball.speed.X
float dy = 2;//ball.speed.Y

int life = 3 ;//start.life

int sum ;//Block


void rblock ( int n , int m , int l ) {//red.block
 if(hp[n]!=0){//block
   if( mouseY <= 200 ){
     fill(255,100,100);
     if(y==30+60*l){
       if(x>=30+120*m && x<=120+120*m){//block.large.potision
         dy = -2;//refrect
         hp[n]--;
       }
     }
     if(y==70+60*l){
       if(x>=30+120*m && x<=120+120*m){//block.large.potision
         dy = 2;//refrect
         hp[n]--;
       }
     }
     if(x==30+120*m){
       if(y>=30+60*l && y<=70+60*l){//block.large.potision
         dx = -1;//refrect
         hp[n]--;
       }
     }
     if(x==120+120*m){
       if(y>=30+60*l && y<=70+60*l){//block.large.potision
         dx = 1;//refrect
         hp[n]--;
       }
     }
   } else {
     fill(150,0,0,200);
   }
   rect(30+120*m,30+60*l,90,40);//block.large.potision
 }else{
 }
}

void yblock ( int n , int m , int l ) {//yellow.block
 if(hp[n]!=0){//block
   if( mouseY > 200 && mouseY < 400 ){
     fill(255,255,100);
     if(y==30+60*l){
       if(x>=30+120*m && x<=120+120*m){//block.large.potision
         dy = -2;//refrect
         hp[n]--;
       }
     }
     if(y==70+60*l){
       if(x>=30+120*m && x<=120+120*m){//block.large.potision
         dy = 2;//refrect
         hp[n]--;
       }
     }
     if(x==30+120*m){
       if(y>=30+60*l && y<=70+60*l){//block.large.potision
         dx = -1;//refrect
         hp[n]--;
       }
     }
     if(x==120+120*m){
       if(y>=30+60*l && y<=70+60*l){//block.large.potision
         dx = 1;//refrect
         hp[n]--;
       }
     }
   } else {
     fill(150,150,0,200);
   }
   rect(30+120*m,30+60*l,90,40);//block.large.potision
 }else{
 }
}

void bblock ( int n , int m , int l ) {//blue.block
 if(hp[n]!=0){
   if( mouseY >= 400 ){
     fill(100,100,255);
     if(y==30+60*l){
       if(x>=30+120*m && x<=120+120*m){//block.large.potision
         dy = -2;//refrect
         hp[n]--;
       }
     }
     if(y==70+60*l){
       if(x>=30+120*m && x<=120+120*m){//block.large.potision
         dy = 2;//refrect
         hp[n]--;
       }
     }
     if(x==30+120*m){
       if(y>=30+60*l && y<=70+60*l){//block.large.potision
         dx = -1;//refrect
         hp[n]--;
       }
     }
     if(x==120+120*m){
       if(y>=30+60*l && y<=70+60*l){//block.large.potision
         dx = 1;//refrect
         hp[n]--;
       }
     }
   } else {
     fill(0,0,150,200);
   }
   rect(30+120*m,30+60*l,90,40);//block.large.potision
 }else{
 }
}

int hp[] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1};//block.life

void bhp ( int h , int p ){//life
 hp[h]=p;
 hp[h+1]=p;
 hp[h+2]=p;
 hp[h+3]=p;
 hp[h+4]=p;
 hp[h+5]=p;
 hp[h+6]=p;
 hp[h+7]=p;
 hp[h+8]=p;
 hp[h+9]=p;
 hp[h+10]=p;
 hp[h+11]=p;
 hp[h+12]=p;
 hp[h+13]=p;
 hp[h+14]=p;
 hp[h+15]=p;
 hp[h+16]=p;
 hp[h+17]=p;
 hp[h+18]=p;
}

void moji ( int a , int b , int c , int d , int e , int f , int g ){//text size
 textSize(a);
 fill(b,c,d);
 text(e,f,g);
}

void draw(){
 
 sum = hp[1]+hp[2]+hp[3]+hp[4]+hp[5]+hp[6]+hp[7]+hp[8]+hp[9]+hp[10]+hp[11]+hp[12]+hp[13]+hp[14]+hp[15]+hp[16]+hp[17]+hp[18] ;//block
 
 
 if ( y > height) {//refrect
   dy = dy*-1;
 } else if ( y < 0 ) {
   dy = dy*-1;
 }
 
 if ( x > width -70 ){//refrect
   dx = dx*-1;
 } else if ( x < 0 ){
   dx = dx*-1;
 }
     
 background(0);//back.color
 
 
 x = x+dx ;//ball.move.x
 y = y+dy ;//ball.move.y
 
 
 fill ( 255 , 100 , 100);
 rect ( 765 , 0 , 50 , 200 );
 
 fill ( 255 , 255 , 100 );
 rect ( 765 , 200 , 50 , 200 );
 
 fill ( 100 , 100 , 255 );
 rect ( 765 , 400 , 50 , 200 );
 
 fill ( 100 , 100 , 100 );
 rect ( 750 , 0 , 15 , 600 );
 
 fill ( 255 );
 triangle( 750 , mouseY+10 , 750 , mouseY-10 , 780 , mouseY );
 
 rblock(1,0,0);//red.block
 rblock(2,3,0);
 rblock(3,2,1);
 rblock(4,5,1);
 rblock(5,1,2);
 rblock(6,4,2);
 yblock(7,1,0);//yellow.block
 yblock(8,4,0);
 yblock(9,0,1);
 yblock(10,3,1);
 yblock(11,2,2);
 yblock(12,5,2);
 bblock(13,2,0);//blue.block
 bblock(14,5,0);
 bblock(15,1,1);
 bblock(16,4,1);
 bblock(17,0,2);
 bblock(18,3,2);
 
 
 if( mouseY <= 200 ){//mousey.blockcolor
   fill(255,100,100);
 } else if ( mouseY > 200 && mouseY < 400 ){
   fill(255,255,100);
 } else if ( mouseY >= 400 ){
   fill(100,100,255);
 }
 
 ellipse(x,y,20,20);//ball
 
   
 fill(255);//bar
 rect(mouseX,550,80,5);//bar.large
 
 textSize(20);//life.text
 text ( "LIFE" , 10 , 580 );
 text ( life-1 , 120 , 580 );
 
 
 if ( y > 535 ) {
   if ( x >= mouseX-10 && x < mouseX + 36 ){
     dy = -2;
     dx = -1;
   }else if ( x > mouseX+44 && x <= mouseX+90){
     dy = -2;
     dx = 1;
   }else if ( x > mouseX+35 && x < mouseX+45){
     dy = -2;
     dx = 0;
   } else if ( y >= 590 ) {
     x = 350;
     y = 250;
     dx= 0;
     dy= 2;
     life = life - 1;
     bhp(0,1);
     if(life == 3){
       fole.play();
     }else if (life == 2){
       fole2.play();
     }else if (life == 1){
       fole3.play();
     }
   }
 }
 if( life == 0 ){
   dy = 0;
   background(0);
   textSize(30);
   fill(255);
   text("GameOver",200,300);
   text("Click to Restart",200,400); 
   if(mousePressed){
   x = 350;
   y = 250;
   dx= 0;
   dy= 2;
   life = 3;
   bhp(0,1);
   }
 }
 if( sum == 0 ){
   dx = 0 ;
   dy = 0 ;
   background(0);
   textSize(50);
   fill(255);
   text("GameClear",100,300);
 }
}
