public void setup()
{
	size(1000, 1000);
	rectMode(CENTER);

}
public void draw()
{
	background(250, 0, 0);
	myFractal(500, 500, 400);
	fill(250, 0, 250);
}
public void myFractal(int x, int y, int siz){
	rect(x , y , siz , siz);
	if(siz > 10){
		myFractal(x - siz/2, y , siz / 2);
		myFractal(x + siz/2, y , siz / 2);
		myFractal(x , y - siz/2, siz / 2);
		myFractal(x , y + siz/2, siz / 2);
		myFractal(x - siz/2, y - siz/2, siz / 2);
		myFractal(x + siz/2, y + siz/2, siz / 2);
	}
}