import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Bbb extends JFrame {

   private int count = 0;
   private JButton myButton = new JButton("Push Me!");
   private JLabel label = new JLabel("Count: " + count);

   public Bbb() {
      setDefaultCloseOperation(EXIT_ON_CLOSE);
      setLayout(new FlowLayout(FlowLayout.LEFT)); //set layout manager
      add(myButton); //add components
      add(label);

      myButton.addActionListener(new ActionListener() {
         public void actionPerformed(ActionEvent e) {
            count++;
            label.setText("Count: " + count);
         }
      });
      pack();
      setVisible(true);
   }

   public static void main(String[] args) {
      try {
         UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
      } catch (Exception exc) {}
      new Bbb();
   }
}