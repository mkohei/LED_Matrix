/*******************************/
/********** CONSTANTS **********/
/*******************************/
final int LED_RADIUS = 10;
final int LED_INTERVAL = 5;

final int LED_NUM_Y = 32;
final int LED_NUM_X = 32;


TestMove1 move;


/***************************/
/********** SETUP **********/
/***************************/
void setup() {
  //fullScreen();
  size(500, 500);
  
  frameRate(10);
  
  move = new TestMove1(LED_NUM_X, LED_NUM_Y);
}



/**************************/
/********** DEAW **********/
/**************************/
void draw() {
  draw_LED_matrix(move.move());
}

void keyPressed() {
  if (key==27) exit();
}



/*******************************/
/********** FUNCTIONS **********/
/*******************************/
void draw_LED_matrix(int[][] LED_matrix) {
  background(0);
  
  noStroke();
  fill(30);
  int x, y;
  for (int j=0; j<LED_NUM_Y; j++) {
    y = LED_INTERVAL*(j+1) + LED_RADIUS*(2*j+1); 
    for (int i=0; i<LED_NUM_X; i++) {
      x = LED_INTERVAL*(i+1) + LED_RADIUS*(2*i+1);
      
      switch(LED_matrix[j][i]) {
        case 0: {fill(30); break;}
        case 1: {fill(200, 200, 40); break;}
        default: {}
      }
      ellipse(x, y, 2*LED_RADIUS, 2*LED_RADIUS);
    }
  }
}