class Menu{
  Button btn = new Button();
  boolean play = false;
  boolean setting = false;
  boolean over_play;
  boolean over_setting;
  
  public void create_menu(){
    int button_space = width/9;
    
    txt.print_with_font("A sad story",h1,get_x_middle(),get_y_top());
    btn.set_button_color(color(0));
    over_play = btn.button_text(get_x_middle(),get_y_top()+button_space,"Play",color(255));
    over_setting = btn.button_text(get_x_middle(),get_y_top()+button_space*2,"Setting",color(255));
    
    if(mousePressed){
      if(over_play){
        play = true;
        delay(1000);
      }
      else if(over_setting){
        setting = true;
        delay(1000);
      }
    }
  }
  
  public boolean play_pressed(){
    return this.play;
  }
  
  public boolean setting_pressed(){
    return this.setting;
  }
}