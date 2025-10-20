final int SQUARESIZE = 100;
Board board;
KomaList komaList;
GameStatus gs;

void setup() {
  surface.setSize(6*SQUARESIZE, 4*SQUARESIZE);
  board = new Board();
  komaList = new KomaList();
  gs = new GameStatus();
}


void mouseReleased() {
  int x = mouseX/SQUARESIZE;
  int y = mouseY/SQUARESIZE;
  board.select(x, y);
}

void draw() {
  board.draw();
  komaList.draw();
}

  void select(int x, int y){
    AbstractKoma koma = komaList.getSelectedKoma();
    if(koma==null){
      komaList.select(x,y);
    }else{
      koma.move(x,y);
      koma.kStat.selected=false;
    }
  }
