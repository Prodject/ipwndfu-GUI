/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:520344:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  exploit();
} //_CODE_:button1:520344:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:774951:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
  boot();
} //_CODE_:button2:774951:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:574246:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
  sendSelect();
} //_CODE_:button3:574246:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("ipwndfu-GUI by Adryzz. Not for commercial use.");
  label1 = new GLabel(this, 160, 50, 270, 31);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("ipwndfu-GUI by Adryzz Not for commercial use.");
  label1.setOpaque(false);
  button1 = new GButton(this, 489, 147, 80, 30);
  button1.setText("Exploit!");
  button1.addEventHandler(this, "button1_click1");
  label2 = new GLabel(this, 55, 143, 418, 39);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Connect the Iphone in DFU mode and click on the exploit button.\nThen, use the exploit with the buttons below.");
  label2.setOpaque(false);
  button2 = new GButton(this, 62, 239, 80, 30);
  button2.setText("Boot");
  button2.addEventHandler(this, "button2_click1");
  label3 = new GLabel(this, 46, 281, 118, 30);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Boots in Verbose mode");
  label3.setOpaque(false);
  button3 = new GButton(this, 300, 240, 80, 30);
  button3.setText("Send file");
  button3.addEventHandler(this, "button3_click1");
}

// Variable declarations 
// autogenerated do not edit
GLabel label1; 
GButton button1; 
GLabel label2; 
GButton button2; 
GLabel label3; 
GButton button3; 