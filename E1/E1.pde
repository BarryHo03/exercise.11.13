// Number of columns and rows in the grid
int cols = 10;
int rows = 10;
boolean[][] grid= new boolean[cols][rows];
float spacing;

void setup() {
  size(200,200);
  spacing=width/cols;
  for(int i=0; i<rows;i++){
    for(int j=0;j<cols;j++){
     // fill(100);
     //rect(i*spacing, j*spacing, spacing, spacing);
    grid[i][j] = true;  
    }
  }   
}

void draw() {
  background(0);
  for(int i=0;i<rows;i++){
    for(int j=0;j<cols;j++){   
      if(grid[i][j]==true){
        stroke(0);
        fill(0);
      }else{
        fill(255);
        stroke(0);
      }
  rect(i*spacing, j*spacing, spacing, spacing);
    }  
  }
}
void mouseReleased(){
  int colB=int (mouseX/spacing);
  int rowB=int (mouseY/spacing);
  grid[colB][rowB]=!grid[colB][rowB];
  if (colB-1>=0){
    grid[colB-1][rowB]=!grid[colB-1][rowB];
  }
  if (rowB-1>=0){
    grid[colB][rowB-1]=!grid[colB][rowB-1];
  }
  if(colB+1<=9){
  grid[colB+1][rowB]=!grid[colB+1][rowB];
  }
  if(rowB+1<=9){
  grid[colB][rowB+1]=!grid[colB][rowB+1];
  }
}
