import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class StreetSim extends PApplet {

public void setup()
{
	size(500,500);
	background(0);
}
public void draw()
{
	//middle divider
 	stroke(255, 236, 94);
 	strokeWeight(2);
 	for (int b = 240; b < 261; b = b + 20) {
 		for (int a = 0; a < 500; a = a+50) {
 			line(a,b,a+40,b);
 		}
 	}
 	//pavement
 	noStroke();
 	strokeWeight(0);
 	fill(150);
 	rect(0,0,500,96);
 	rect(0,404,500,500);
 	//Houses
 	stroke(0);
 	fill(227, 149, 118);
 	rect(0,0,64,32);
 	line(0, 32 , 500, 32);
 	line(0, 468, 500, 468);
 	//Cross Street
 	stroke(255);
 	fill(255);
 	strokeWeight(2);
 	for(int c = 96; c < 400; c = c + 170)
 	{
 		for(int d = 450; d < 500; d = d + 46)
 		{
 	 	 	line(d, c, d, c + 138);
 		}
 		for(int a = 0; a < 5; a++ )
 		{
 	 	 	rect(450, c + 12 + 24*a, 46, 12);
 		}

 	}
}
class vehicle
{
	int myX, myY;
	vehicle()
	{

	}
}

class person
{
	int myX, myY;
	person()
	{

	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "StreetSim" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
