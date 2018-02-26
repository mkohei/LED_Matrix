import java.util.Arrays;

class TestMove1 {
  int LED_mat[][];
  int X_LEN, Y_LEN;
  
  int cnt; 
  
  TestMove1(int X, int Y) {
    X_LEN = X;
    Y_LEN = Y;
    LED_mat = new int[Y][X];
    cnt = 0;
  }
  
  int[][] move() {
    for (int[] row: LED_mat) Arrays.fill(row, 0);
    LED_mat[cnt/X_LEN][cnt%X_LEN] = 1;
    cnt = (cnt+1) % (X_LEN*Y_LEN);
    
    return LED_mat;
  }
}