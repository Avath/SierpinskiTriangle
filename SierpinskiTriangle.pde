int heights;
public void setup()
{
size(800,800);

} 
public void draw()
{
	background(200,200,225);
  sierpinski(0,800,heights ); 
}
public void mouseDragged()//optional
{
if(mousePressed==true){
	heights=mouseX;

}
}
public void sierpinski(int x, int y, int len) 
{

if(len<20){
	fill(mouseX/4,mouseY/4, mouseX+mouseY/4   ); 
	triangle(x, y, x+len, y, x+len/2, y-len);
}
else{
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);


}

}