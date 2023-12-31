package 杂包;

import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

//进度条源代码在  23 11 光盘上
public class ExampleFrame_11 extends JFrame {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static void main(String args[]) {
		ExampleFrame_11 frame = new ExampleFrame_11();
		frame.setVisible(true);
	}
	
	public ExampleFrame_11() {
		super();
		getContentPane().setLayout(new GridBagLayout());
		setBounds(100, 100, 500, 375);
		setBounds(100, 100, 266, 132);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		final JLabel label = new JLabel();
		final GridBagConstraints gridBagConstraints = new GridBagConstraints();
		gridBagConstraints.gridy = 0;
		gridBagConstraints.gridx = 0;
		getContentPane().add(label, gridBagConstraints);
		
		final JProgressBar progressBar = new JProgressBar();// 创建进度条对象
		progressBar.setStringPainted(true);// 设置显示提示信息
		progressBar.setIndeterminate(true);// 设置采用不确定进度条
		progressBar.setString("正在登录......");// 设置提示信息
		final GridBagConstraints gridBagConstraints_1 = new GridBagConstraints();
		gridBagConstraints_1.insets = new Insets(5, 0, 0, 0);
		gridBagConstraints_1.gridy = 1;
		gridBagConstraints_1.gridx = 0;
		getContentPane().add(progressBar, gridBagConstraints_1);
		
		final JButton button = new JButton();
		//button.setText("完成");
		//button.setEnabled(false);
		//button.addActionListener(new ActionListener() {
		//	public void actionPerformed(ActionEvent e) {
		//		System.exit(0);
		//	}
		//});
		
		final GridBagConstraints gridBagConstraints_2 = new GridBagConstraints();
		gridBagConstraints_2.insets = new Insets(5, 0, 0, 0);
		gridBagConstraints_2.gridy = 2;
		gridBagConstraints_2.gridx = 1;
		//getContentPane().add(button, gridBagConstraints_2);
		new Progress(progressBar, button).start();// 利用线程模拟一个在线升级任务
	}
	
	class Progress extends Thread {// 利用线程模拟一个在线升级任务
		private final int[] progressValue = { 6, 18, 27, 39, 51, 66, 81,
				100 };// 模拟任务完成百分比
		private JProgressBar progressBar;// 进度条对象
		private JButton button;// 完成按钮对象
		
		public Progress(JProgressBar progressBar, JButton button) {
			this.progressBar = progressBar;
			this.button = button;
		}
		
		public void run() {
			// 通过循环更新任务完成百分比
			for (int i = 0; i <progressValue.length; i++) {
				try {
					Thread.sleep(1000);// 令线程休眠1秒
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				progressBar.setValue(progressValue[i]);// 设置任务完成百分比
			}
			progressBar.setIndeterminate(false);// 设置采用确定进度条
			progressBar.setString("登录成功！");// 设置提示信息
			button.setEnabled(true);// 设置按钮可用
		}
	}
}
