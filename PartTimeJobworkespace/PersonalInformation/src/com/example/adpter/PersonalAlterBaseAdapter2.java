package com.example.adpter;

import java.util.List;

import com.example.bean.PersonalBean;
import com.example.personalinformation.PersonalAlterActivity;
import com.example.personalinformation.R;

import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;

public class PersonalAlterBaseAdapter2 extends BaseAdapter {
	private LayoutInflater layout;
	private List<PersonalBean> array;

	// 使用这个Adapter的context
	private PersonalAlterActivity personalalteractivity;

	public PersonalAlterBaseAdapter2(PersonalAlterActivity per) {
		layout = LayoutInflater.from(per.getBaseContext());
		personalalteractivity = per;
	}

	public void SetData(List<PersonalBean> a) {
		array = a;
	}

	@Override
	public int getCount() {
		// TODO 自动生成的方法存根
		if (array == null) {
			return 0;
		}
		return array.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO 自动生成的方法存根
		return null;
	}

	@Override
	public long getItemId(int position) {
		// TODO 自动生成的方法存根
		return 0;
	}
	int index = -1;
	int index2 = -1;

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View view = null;
		ViewHoler viewholder = null;
		if (convertView == null) {
			
			view = layout.inflate(R.layout.personalalter_item, null);
			viewholder = new ViewHoler();
			viewholder.title = (EditText) view.findViewById(R.id.personalalter_itemtitle);
			viewholder.context = (EditText) view.findViewById(R.id.personalalter_itemcontext);
			viewholder.btalter = (Button) view.findViewById(R.id.personalalter_itembtalter);
			viewholder.btdel = (Button) view.findViewById(R.id.personalalter_itembtdel);
			view.setTag(viewholder);

			// 设置文本框的标记
			viewholder.title.setTag(position);
			// 焦点问题
			viewholder.title.setOnTouchListener(new View.OnTouchListener() {
				
				@Override
				public boolean onTouch(View v, MotionEvent event) {
					// TODO Auto-generated method stub
					if(event.getAction() == MotionEvent.ACTION_UP){
						index = (Integer)v.getTag();
					}
					return false;
				}
			});
			// 离开焦点值重绘问题
			viewholder.title.setOnFocusChangeListener(new View.OnFocusChangeListener() {
				@Override
				public void onFocusChange(View v, boolean hasFocus) {
					// TODO Auto-generated method stub
					EditText et = (EditText)v;
					int pos = (Integer)v.getTag();
					if(!hasFocus){
						array.get(pos).setTitle(et.getText().toString());
					}
				}
			});
			
			// 设置标记
			viewholder.context.setTag(position);
			viewholder.context.setOnTouchListener(new View.OnTouchListener() {
				
				@Override
				public boolean onTouch(View v, MotionEvent event) {
					// TODO Auto-generated method stub
					if(event.getAction() == MotionEvent.ACTION_UP){
						index2 = (Integer)v.getTag();
					}
					return false;
				}
			});
			// 焦点离开值重绘的问题
			viewholder.context.setOnFocusChangeListener(new View.OnFocusChangeListener() {
//				MyTextWatcher mytextwa = new MyTextWatcher(index);
				@Override
				public void onFocusChange(View v, boolean hasFocus) {
					// TODO Auto-generated method stub
					EditText et = (EditText)v;
					int pos = (Integer)v.getTag();
					if(!hasFocus){
						array.get(pos).setContext(et.getText().toString());
					}
				}
			});
			
			// 改变值得时候位置监听
			viewholder.title.addTextChangedListener(new TextWatcher() {
				
				@Override
				public void onTextChanged(CharSequence arg0, int arg1, int arg2, int arg3) {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public void beforeTextChanged(CharSequence arg0, int arg1, int arg2, int arg3) {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public void afterTextChanged(Editable v) {
					// TODO Auto-generated method stub
					array.get(1).setTitle(v. toString());
				}
			});
			viewholder.context.addTextChangedListener(new TextWatcher() {
				
				@Override
				public void onTextChanged(CharSequence arg0, int arg1, int arg2, int arg3) {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public void beforeTextChanged(CharSequence arg0, int arg1, int arg2, int arg3) {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public void afterTextChanged(Editable v) {
					// TODO Auto-generated method stub
					array.get(1).setTitle(v.toString());
				}
			});
			
		} else {
			view = convertView;
			viewholder = (ViewHoler) view.getTag();
		}
		viewholder.title.clearFocus();
		viewholder.context.clearFocus();
		if (index != -1 && index == position) {
			viewholder.title.requestFocus();
			index = -1;
        }
		if (index2 != -1 && index2 == position) {
			viewholder.context.requestFocus();
			index2 = -1;
        }
		PersonalBean per = array.get(position);
		viewholder.title.setText(per.getTitle());
		viewholder.context.setText(per.getContext());
		
		// 添加按钮监听
		viewholder.btalter.setOnClickListener(new MyAlterButtonLis(position));
		viewholder.btdel.setOnClickListener(new MyDelButtonLis(position));
		return view;
	}
	class ViewHoler {
		EditText title;
		EditText context;
		Button btalter;
		Button btdel;
	}
	
	class MyTextWatcher implements TextWatcher {
		int position;
		int state;
		
		public MyTextWatcher(int pos, int state){
			position = pos;
			this.state = state;
		};
		@Override
		public void afterTextChanged(Editable s) {
			// TODO Auto-generated method stub
			if(s != null){
				// 改变list中的这个值, 为了让修改时根据position获取到
				if(state == 1){
					array.get(position).setTitle(s.toString());
				}else if(state == 2){
					array.get(position).setContext(s.toString());
				}
			}
		}

		@Override
		public void beforeTextChanged(CharSequence arg0, int arg1, int arg2, int arg3) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void onTextChanged(CharSequence arg0, int arg1, int arg2, int arg3) {
			// TODO Auto-generated method stub
			
		}
	}
	// 自定义监听
	// 删除
	class MyDelButtonLis implements OnClickListener{
		int position;
		public MyDelButtonLis(int pos) {
			// TODO Auto-generated constructor stub
			position = pos;
		}
		@Override
		public void onClick(View arg0) {
			// TODO Auto-generated method stub
			Log.i("check", "btdel点击");
			// 删除
			personalalteractivity.PersonalDelete(position);
		}
	}
	// 点击修改
	class MyAlterButtonLis implements OnClickListener{
		int position;
		public MyAlterButtonLis(int pos) {
			// TODO Auto-generated constructor stub
			position = pos;
		}
		@Override
		public void onClick(View v) {
			// 读取文本
			PersonalBean per = array.get(position);
//			// 根据perid修改数据库信息
			personalalteractivity.PersonalAlter(position, per.getTitle(),per.getContext());
		}
	}
	
	// 文本框监听
//	class MyTextWatcher implements TextWatcher {
//		private int state;//是第一个还是第二个
//		
//		private ViewHoler mHolder;
//		public MyTextWatcher(){};
//		public MyTextWatcher(ViewHoler v, int s) {
//			// TODO Auto-generated constructor stub
//			mHolder = v;
//			state = s;
//		}
//
//		@Override
//		public void afterTextChanged(Editable s) {
//			// TODO Auto-generated method stub
//			if(s != null){
//				int position = (Integer)mHolder.title.getTag();
//				// 改变list中的这个值, 为了让修改时根据position获取到
//				if(state == 1){
//					array.get(position).setTitle(s.toString());
//				}else if(state == 2){
//					array.get(position).setContext(s.toString());
//				}
//			}
//		}
//
//		@Override
//		public void beforeTextChanged(CharSequence arg0, int arg1, int arg2, int arg3) {
//			// TODO Auto-generated method stub
//			
//		}
//
//		@Override
//		public void onTextChanged(CharSequence arg0, int arg1, int arg2, int arg3) {
//			// TODO Auto-generated method stub
//			
//		}
//	}
}
