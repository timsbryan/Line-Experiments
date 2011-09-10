class LineShape {

    //Not implemented yet.    float speed; //Hold the speed that the highlighted line will move across the darker line
    int x, y; //the current X&Y of the point in draw()
    int[] pointX; //to hold the construction of the line.
    int[] pointY; //to hold the construction of the line.
    int initX, initY; //The inital X&Y where the point starts (May not be needed later on)
    int timer; //Timer to regulate how far the point has travelled
    //Depreceated    //int diagonalTimer; //Timer to regulate how far the point has travelled diagonally
    int diagonalLength; //How long the line will stay diagonal for.
    float diagonalDirection; /*The direction in which the diagonal line travels (NE||SE)
                               Might move to boolean for now to free up mem */
    int stateChangeLimit;//How many stateChanges will line have.
    int stateChanges;//Log how many times the line has changed direction.

    LineShape() {

        initX=int(0); //Starting on the very left of the screen
        initY=int(height/2); //Starting in the middle of the screen
        x=initX; //initx/y hand off to x&y to start progressing through draw()
        y=initY;

        timer=0; //start timer at 0 (Obvs!)
        stateChanges=0;//how many times the line has switched between straight and diagonal
        flipFrequency=int(random(20,100)); //line flips to diagonal randomly.
        diagonalLength=3; //line flips back to horizontal once it has moved 3 units in either NE||SE direction
        int isDiagonal={int(round(random(0,1)))};
        int[][] lineProperties=setPointProperties();
    }

    void drawLine(){
        //TODO Next up!

        int[] diagonalDirection=lineProperties[1];
        int[] segmentLength=lineProperties[2];



        /* for debugging through the 2d array.
         *for(int r=0; r<lineProperties.length; r++){
         *    for(int c=0; c<lineProperties[r].length; c++){
         *        print(lineProperties[r][c]+" ");
         *    }
         *    println("");
         *}
         *println("");
         */

    }

    int[][] setPointProperties(/*TODO May put arguments here*/){
        //Complete!!
        //int stateChanges=0;
        int stateChangeLimit=6;

        int[] diagonalDirection=new int[stateChangeLimit];
        //int[] diagonalDirection=new int[stateChangeLimit/2];
        int[] segmentLength=new int[stateChangeLimit];
        //int[] segmentLength=new int[stateChangeLimit/2];

        //create random values for all arrays in method
        for(int i=0; i<stateChangeLimit; i++){
            //for(int i=0; stateChanges<stateChangeLimit/2; i++){
            //set the properties for this loop.
            diagonalDirection[i]=int(round(random(0,1)));
            segmentLength[i]=int(random(3,20));
            stateChanges++;

        }
        //collect all arrays in method and put into 2d array and return array
        int[][] lineProperties={ diagonalDirection, segmentLength };
        return lineProperties;
    }
}
