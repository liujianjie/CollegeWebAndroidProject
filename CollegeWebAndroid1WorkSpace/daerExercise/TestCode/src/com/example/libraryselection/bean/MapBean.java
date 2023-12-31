package com.example.libraryselection.bean;

import com.example.libraryselection.resource.MapConstant;

// 地图的bean 
public class MapBean {
	public int fid;// 编号
	public int flayer;// 楼层
	public String flayermap;// 存储在数据库的二维数组 
	
	public int mapdata[][];// int二维数组
	
	// 初始化的时候，初始化mapdata，边缘数据为bar
	public MapBean(){
		mapdata = new int[MapConstant.i][MapConstant.j];
		// 边缘为bar
		for(int i = 0; i < MapConstant.i; i++){
			for(int j = 0; j < MapConstant.j; j++){
				if(i == 0 || i == MapConstant.i - 1 || j == 0 || j == MapConstant.j - 1){
					mapdata[i][j] = MapConstant.BAR;
				}
			}
		}
	}
	
	// 二维数组变为string
	public String mapToStr(){
		StringBuilder sb = new StringBuilder();
		for(int m = 0; m < MapConstant.i; m++){
			for(int n = 0; n < MapConstant.j; n++){
//				sb.append((char)(mapdata[m][n] + '0'));// 要转换为字符
				sb.append(mapdata[m][n]);
			}
			sb.append("\n");
		}
		return sb.toString();
	}
	public static void main(String[] args) {
		System.out.println(new MapBean().mapToStr());
	}
}
