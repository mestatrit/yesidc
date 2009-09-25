package com.yesibc.core.env;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

/**
 * 取得linux系统下的cpu、内存信息
 * 
 * <p>
 * @author javer QQ:84831612
 * </p>
 * 
 * @date 2005
 */
public final class LinuxSystemTool {
	/**
	 * get memory by used info
	 * 
	 * @return int[] result
	 *         result.length==4;int[0]=MemTotal;int[1]=MemFree;int[2
	 *         ]=SwapTotal;int[3]=SwapFree;
	 * @throws IOException
	 * @throws InterruptedException
	 */
	public static int[] getMemInfo() throws IOException, InterruptedException {
		File file = new File("/proc/meminfo");
		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
		int[] result = new int[4];
		String str = null;
		StringTokenizer token = null;
		while ((str = br.readLine()) != null) {
			token = new StringTokenizer(str);
			if (!token.hasMoreTokens())
				continue;

			str = token.nextToken();
			if (!token.hasMoreTokens())
				continue;

			if (str.equalsIgnoreCase("MemTotal:"))
				result[0] = Integer.parseInt(token.nextToken());
			else if (str.equalsIgnoreCase("MemFree:"))
				result[1] = Integer.parseInt(token.nextToken());
			else if (str.equalsIgnoreCase("SwapTotal:"))
				result[2] = Integer.parseInt(token.nextToken());
			else if (str.equalsIgnoreCase("SwapFree:"))
				result[3] = Integer.parseInt(token.nextToken());
		}

		return result;
	}

	/**
	 * get memory by used info
	 * 
	 * @return float efficiency
	 * @throws IOException
	 * @throws InterruptedException
	 */
	public static float getCpuInfo() throws IOException, InterruptedException {
		File file = new File("/proc/stat");
		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
		StringTokenizer token = new StringTokenizer(br.readLine());
		token.nextToken();
		int user1 = Integer.parseInt(token.nextToken());
		int nice1 = Integer.parseInt(token.nextToken());
		int sys1 = Integer.parseInt(token.nextToken());
		int idle1 = Integer.parseInt(token.nextToken());

		Thread.sleep(1000);

		br = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
		token = new StringTokenizer(br.readLine());
		token.nextToken();
		int user2 = Integer.parseInt(token.nextToken());
		int nice2 = Integer.parseInt(token.nextToken());
		int sys2 = Integer.parseInt(token.nextToken());
		int idle2 = Integer.parseInt(token.nextToken());

		return (float) ((user2 + sys2 + nice2) - (user1 + sys1 + nice1))
				/ (float) ((user2 + nice2 + sys2 + idle2) - (user1 + nice1 + sys1 + idle1));
	}

	public static void main(String[] args) throws Exception {
//		int[] memInfo = LinuxSystemTool.getMemInfo();
//		System.out.println("MemTotal：" + memInfo[0]);
//		System.out.println("MemFree：" + memInfo[1]);
//		System.out.println("SwapTotal：" + memInfo[2]);
//		System.out.println("SwapFree：" + memInfo[3]);
//
//		System.out.println("CPU利用率：" + LinuxSystemTool.getCpuInfo());
		
		File file = new File("D:/new/test15.TXT");
		FileReader fr = new FileReader(file);
		BufferedReader br = new BufferedReader(fr);
		String temp1 = br.readLine();
		String temp = temp1;
		String temp2 = "";
		String[] str1 = new String[2];
		while(temp1 != null){
			//继续读文件
			temp1 = br.readLine();
			if(temp1!=null){
				if(temp1.indexOf("swap")>-1){
					str1[0] = temp1;
				}
				temp = temp + temp1;
				temp2 = temp1;
			} else{
				str1[1] = temp2;
			}
		}
		
		System.out.println("str1[0]="+str1[0]);
		System.out.println("str1[1]="+str1[1]);
		
		String[] title = str1[0].split(" ");
		String[] runTimeData = str1[1].split(" ");
		
		List<String> titles = new ArrayList<String>();
		for(String str:title){
			if(!"".equals(str)){
				titles.add(str);
			}
		}
		List<String> runTimeDatas = new ArrayList<String>();
		for(String str:runTimeData){
			if(!"".equals(str)){
				runTimeDatas.add(str);
			}
		}
		
		
		System.out.println("title[0]="+titles.toString());
		System.out.println("runTimeData[0]="+runTimeDatas.toString());
		
	
	}
}
