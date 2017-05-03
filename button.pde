class Button{
  
  Text txt = new Text();
  color button_color = color(0, 192, 200);
  
  public boolean button_large(int x, int y){
    int h = width/10;
    int w = width/2;
    fill(this.button_color);
    rect(x-w/2, y, w, h);
    return button_over(x,y,w,h);
  }
  
  public boolean button_medium(int x, int y){
    int h = width/10;
    int w = width/3;
    fill(this.button_color);
    rect(x-w/2, y, w, h);
    return button_over(x,y,w,h);
  }
  
  public boolean button_tiny(int x, int y){
    int h = width/10;
    int w = width/4;
    fill(this.button_color);
    rect(x-w/2, y, w, h);
    return button_over(x,y,w,h);
  }
  
  public boolean button_text(int x, int y,String text){
    int h = width/10;
    int w = width/2;
    fill(this.button_color);
    rect(x-w/2, y, w, h);
    txt.print_with_font(text,x,y+h/3);
    return button_over(x,y,w,h);
  }
  
  public boolean button_text(int x, int y,String text,color text_color){
    int h = width/10;
    int w = width/2;
    fill(this.button_color);
    rect(x-w/2, y, w, h);
    txt.set_text_color(text_color);
    txt.print_with_font(text,x,y+h/3);
    return button_over(x,y,w,h);
  }
  
  public void set_button_color(color button_color){
    this.button_color = button_color;
  }
  
  private boolean button_over(int x, int y, int w, int h){
    if (mouseX >= x-w/2 && mouseX <= x+w/2 && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }
  
}