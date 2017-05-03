class Text{

  color text_color = color(0);
  String font_name = "font/8bitOperatorPlus8-Regular.ttf";
  
  public void print_with_font(String text,int align_x,int align_y){
    PFont font;
    font = createFont(this.font_name,32);
    textFont(font);
    //textAlign(CENTER, CENTER);
    fill(this.text_color);
    text(text, align_x, align_y);
  }
  
  public void print_with_font(String text,int size,int align_x,int align_y){
    PFont font;
    font = createFont(this.font_name,size);
    textFont(font);
    textAlign(CENTER, CENTER);
    fill(this.text_color);
    text(text, align_x, align_y);
  }
  
  public void set_text_color(color text_color){
    this.text_color = text_color;
  }
  
}