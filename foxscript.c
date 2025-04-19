#include "DigiKeyboard.h"

void setup() {}

void loop() {
  DigiKeyboard.sendKeyStroke(0);
  DigiKeyboard.delay(1000);

  // Open Notepad (Windows)
  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);
  DigiKeyboard.delay(300);
  DigiKeyboard.print("notepad");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(800);

  // Type fox ASCII
  DigiKeyboard.print("   _,-='\\\"-.__               /\\_/\\");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.print("   `-.}       `=._,.-==-._.,  @ @._,");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.print("      `-.__   _,-.   )       _,.-'");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.print("           `\"     \\^m^/  \"`");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);

  // Stop execution
  for (;;) {}
}
