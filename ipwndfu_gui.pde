// Need G4P library
import g4p_controls.*;
import java.nio.file.FileSystems;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.Files;
import java.nio.file.attribute.FileTime;
import java.io.File;
import processing.sound.*;
import javax.swing.JOptionPane;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JFrame;
import java.io.IOException;
import javax.swing.JRootPane;
import javax.swing.JFrame;
import processing.awt.PSurfaceAWT.SmoothCanvas;
import com.sun.awt.AWTUtilities;

boolean exploited = false;
Iphone iphone;
public void setup() {
  size(640, 480);
  createGUI();
  customGUI();
  // Place your setup code here
}

public void draw() {
  background(230);
  //strokeWeight(2);
  line(0, (height/2)-20, width, (height/2)-20);
  line((width/2)-60, (height/2)-20, (width/2)-60, height);
  //rect();
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI() {
}

public void exploit() {
  exploited = true;
  iphone = new Iphone();
  try {
    exec("./bin/ipwndfu -p");
  } 
  catch (Exception ex) {
    javax.swing.JOptionPane.showMessageDialog(null, ex + "\nMaybe this software is corrupted. re-download it.");
    exploited = false;
  }
}

void boot() {
  if (exploited) {
    try {
      exec("./bin/ipwndfu --boot ");
    } 
    catch (Exception ex) {
      javax.swing.JOptionPane.showMessageDialog(null, ex);
    }
  } else {
    notExploited();
  }
}
public void notExploited() {
  javax.swing.JOptionPane.showMessageDialog(null, "First you have to exploit the device!");
}

void sendSelect() {
  javax.swing.JOptionPane.showMessageDialog(null, "Note: Big files can take a while to be sent"); 
  String selected = G4P.selectInput("Select a file to send to the device", "*", "File");
  if (exploited) {
    if (selected != null) {
      sendFile(selected);
    }
  } else {
    notExploited();
  }
}
void sendFile(String file) {
  try {
    exec("./bin/ipwndfu -f " + file);
  } 
  catch (Exception ex) {
    javax.swing.JOptionPane.showMessageDialog(null, ex);
  }
}
