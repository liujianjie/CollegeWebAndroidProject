/*
 * T1.java
 *
 * Created on 2019年9月18日, 上午10:22
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package gui;

/**
 *
 * @author Administrator
 */

import java.awt.Button;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/*
 * MyFrame.java
 *
 * Created on 2019年9月17日, 下午10:47
 */

/**
 *
 * @author  Administrator
 */
public class MyFrame extends javax.swing.JFrame {
    Button bt = new Button("32");
    /** Creates new form MyFrame */
    public MyFrame() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" 生成的代码 ">
    private void initComponents() {
        jLabelInput = new javax.swing.JLabel();
        jTextFieldOutput = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("GUITest");
        jLabelInput.setText("jLabel1");

        jTextFieldOutput.setText("jTextField1");
        bt.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				jTextFieldOutputActionPerformed(e);
			}
			
		});
        
        setLayout(new FlowLayout());
        add(jLabelInput);
        add(jTextFieldOutput);
        add(bt);
        pack();
    }// </editor-fold>
    private class Button2Handler implements ActionListener{
    	public void actionPerformed(ActionEvent e){
    		jTextFieldOutputActionPerformed(e);
    	}
    }

    private void jTextFieldOutputActionPerformed(java.awt.event.ActionEvent evt) {                                                 
// TODO 将在此处添加您的处理代码：
        System.out.println("1111");
        String getMessage = this.jTextFieldOutput.getText().trim();
        if(getMessage.equals(""))
            this.jLabelInput.setText("你没有输入任何内容");
        else
            this.jLabelInput.setText("你输入的内容是："+getMessage);
    }                                                
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
         System.out.println("222");
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MyFrame().setVisible(true);
            }
        });
    }
    
    // 变量声明 - 不进行修改
    private javax.swing.JLabel jLabelInput;
    private javax.swing.JTextField jTextFieldOutput;
    // 变量声明结束
    
}

