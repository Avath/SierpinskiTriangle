int heights;
Boolean swtitch=false; 
public void setup()
{
size(800,800);

} 
public void draw()
{
	background(200,200,225);
  sierpinski(0,800,heights ); 
  System.out.println(swtitch);
  }

public void keyPressed() {
	if(keyCode==32) {
 
swtitch=true;

  }
if(keyCode==18) {
 
swtitch=false;

  }
}
public void mouseDragged()//optional 
{
if(mousePressed==true){
	heights=mouseX;

}
}
public void sierpinski(int x, int y, int len) 
{
if(swtitch==false){
if(len<20){
	noStroke();
	fill(mouseX/4,mouseY/4, mouseX+mouseY/4   ); 
	triangle(x, y, x+len, y, x+len/2, y-len);
	
}
else{
	noStroke();
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);

}
}
if(swtitch==true){
if(len<20){
	noStroke();
	fill(mouseX/4,mouseY/4, mouseX+mouseY/4   ); 
		rect(x,y,len,len);
}
else{
	noStroke();

sierpinski(x,y,len/3);
sierpinski(x+len/3,y,len/3);  
sierpinski(x+len/3*2,y,len/3);
sierpinski(x,y-len/3,len/3);
sierpinski(x+len/3*2,y-len/3,len/3);
sierpinski(x,y-len/3*2,len/3);
sierpinski(x+len/3,y-len/3*2,len/3);
sierpinski(x+len/3*2,y-len/3*2,len/3);
}
}
}