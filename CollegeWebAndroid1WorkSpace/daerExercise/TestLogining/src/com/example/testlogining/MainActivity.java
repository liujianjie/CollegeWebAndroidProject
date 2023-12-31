package com.example.testlogining;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.app.AppCompatActivity;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity implements OnClickListener{
	private EditText edtName, edtPwd;
	private CheckBox ckbSave, ckbAuto;
	private Button btnLogin;
	private SharedPreferences spLogin, spAccess;
	private String sName, sPwd;
	private boolean bSave, bAuto;
	private int count;
	
	// welcome的组件
	private TextView wel_tx;
	private LinearLayout linear;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		spLogin = getSharedPreferences("login", MODE_PRIVATE);
		spAccess = getSharedPreferences("access", MODE_PRIVATE);
		initView();
		getInfoTo();// 从shared中读取信息到变量中
		showCount();// 显示第几次登录
		selectUserInfo();// 自动显示之前保存的信息
		isAutoLogin();// 不需登录直接进入欢迎页面
	}
	public void initView(){
		edtName = (EditText) findViewById(R.id.edt_name);
		edtPwd = (EditText) findViewById(R.id.edt_pwd);
		ckbSave = (CheckBox) findViewById(R.id.ckb_save);
		ckbAuto = (CheckBox) findViewById(R.id.ckb_auto);
		btnLogin = (Button) findViewById(R.id.btn_login);
		btnLogin.setOnClickListener(this);
	}
	// 获取信息
	public void getInfoTo(){
		sName = spLogin.getString("name", null);
		sPwd = spLogin.getString("pwd", null);
		bSave = spLogin.getBoolean("isSave", false);
		bAuto = spLogin.getBoolean("isAuto", false);
		count = spAccess.getInt("count", 0);// 当第一次进入的时候给0
	}
	// （1）输入用户名和密码，单击登录按钮，跳转到欢迎页面，同时将用户名和密码保存到首选项文件login中。
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		sName = edtName.getText().toString();
		sPwd = edtPwd.getText().toString();
		bSave = ckbSave.isChecked();
		bAuto = ckbAuto.isChecked();
		
		SharedPreferences.Editor edtLogin = spLogin.edit();
		edtLogin.putString("name", sName);
		edtLogin.putString("pwd", sPwd);
		edtLogin.putBoolean("isSave", bSave);
		edtLogin.putBoolean("isAuto", bAuto);
		edtLogin.commit();
		
		Toast.makeText(this, "跳到欢迎页面", Toast.LENGTH_SHORT).show();
		toWelcome();// 去欢迎页面
	}
	// （2）若选中“记住密码”复选框，则再次进入程序时用户名和密码框中自动显示之前保存的信息，不需重新输入。
	public void selectUserInfo(){
		if(bSave){
			edtName.setText(sName);
			edtPwd.setText(sPwd);
		}
		// 设置复选框是否选中
		ckbSave.setChecked(bSave);
		ckbAuto.setChecked(bAuto);
	}
	// （3）若选中“自动登录”复选框，则再次进入程序时不需登录直接进入欢迎页面。
	public void isAutoLogin(){
		if(bAuto){
			toWelcome();
		}
	}
	public void toWelcome(){
		setContentView(R.layout.activity_welcome);
		wel_tx = (TextView) findViewById(R.id.wel_tx);
		wel_tx.setText("欢迎您："+sName+",登录成功");
		
		linear = (LinearLayout) findViewById(R.id.wel_linear);
		// 绑定菜单
		registerForContextMenu(linear);
	}
	
	// （5）每次进入程序，弹出对话框，显示访问程序的总次数，该数据保存在首选项文件access中。
	public void showCount(){
		count++;// 当前进入的次数
		// 弹出框显示
		Toast.makeText(this, "欢迎您,这是第"+count+"次访问！", Toast.LENGTH_SHORT).show();
		// 再重新保存在sharedPreference文件中
		SharedPreferences.Editor edtAcess = spAccess.edit();
		edtAcess.putInt("count", count);
		edtAcess.commit();
	}
	// （4）创建选项菜单，可以注销登录和退出程序。
	@Override
	public void onCreateContextMenu(ContextMenu menu, View v, ContextMenuInfo menuInfo) {
		// TODO Auto-generated method stub
		super.onCreateContextMenu(menu, v, menuInfo);
		
		MenuInflater inflater = getMenuInflater();
	    inflater.inflate(R.menu.contextmenu, menu);
	}
	// 菜单点击事件
	@Override
	public boolean onContextItemSelected(MenuItem item) {
		// TODO Auto-generated method stub
		switch (item.getItemId()) {
			case R.id.menu_zhuxiao:
				// 实现注销用户
				SharedPreferences.Editor edtLogin = spLogin.edit();
				edtLogin.putString("name", null);
				edtLogin.putString("pwd", null);
				edtLogin.putBoolean("isSave", false);
				edtLogin.putBoolean("isAuto", false);
				edtLogin.commit();
				
				Toast.makeText(this, "注销用户成功", Toast.LENGTH_SHORT).show();
				break;
			case R.id.menu_exit:
				// 退出
				finish();
				break;	
			default:
				break;
		}
		return super.onOptionsItemSelected(item);
	}
}
