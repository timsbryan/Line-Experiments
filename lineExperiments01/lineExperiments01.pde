
/****************************************
 *
 * Author: Tim Bryan
 * Date: 13/08/2011
 *
 * A little line experiment based on the Tron Legacy title credit graphics.
 * DONE: Move Line drawing into a single class.
 * TODO: Move line drawing to a method rather than calling it from draw().
 * TODO: Keep an array of information for the lines point data.
 * TODO: Add Highlight once all the rest of the stuff is done.
 * TODO: Consider using line instead of point for inital line.
 * TODO: Move everything over to 3D
 *
 ****************************************/
int flipFrequency; //How often the horizontal line will flip to be a diagonal line.
int timer;
LineShape myLine;

void setup() {
    //Nice ratio :)
    size(900,600,P2D);
    background(0);
    stroke(255);

    timer=0;
    myLine = new LineShape();

}

void draw() {
    myLine.drawLine();
/*    if(myLine.diagonal(timer)){
        timer=0;
    }
    myLine.increment();
*/
    timer++;
}

