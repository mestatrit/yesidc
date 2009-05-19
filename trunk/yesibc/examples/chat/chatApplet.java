package chat;

import java.applet.Applet;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Event;
import java.awt.FlowLayout;
import java.awt.Label;
import java.awt.Panel;
import java.awt.TextArea;
import java.awt.TextField;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.Socket;
import java.util.StringTokenizer;

public class chatApplet extends Applet {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6945068747626252322L;
	/* 以下用于定义UI变量 */
	Panel panel1 = new Panel(); // 用于放置输入姓名和连接两个按钮
	BorderLayout borderLayout1 = new BorderLayout();
	Panel panel2 = new Panel(); // 用于放置聊天信息显示和聊天人员列表
	Panel panel3 = new Panel(); // 用于放置发送信息区域
	FlowLayout flowLayout1 = new FlowLayout();
	FlowLayout flowLayout2 = new FlowLayout();
	Label label1 = new Label();
	TextField name_txt = new TextField(15);
	Button button1 = new Button();
	Button button2 = new Button();
	TextArea chat_txt = new TextArea(15, 30);
	Label label2 = new Label();
	Button button3 = new Button();
	TextField msg_txt = new TextField(20);
	java.awt.List list1 = new java.awt.List(13);

	/* 以下定义数据流和网络变量 */
	Socket soc = null; // 定义连接套接字
	PrintStream ps = null; // 定义打印流
	Listen listen = null; // 定义一个客户端线程

	public void init() // 初始化图形界面
	{
		resize(475, 350);
		this.setLayout(borderLayout1);
		panel2.setLayout(flowLayout1);
		panel3.setLayout(flowLayout2);
		label1.setText("姓名：");

		button1.setLabel("连接");
		button2.setLabel("断开连接");

		chat_txt.setEditable(false);
		panel2.setBackground(Color.cyan);
		panel1.setBackground(Color.cyan);
		label2.setText("聊天信息：");
		button3.setLabel("发送");
		msg_txt.setText("请输入聊天信息");
		panel3.setBackground(Color.cyan);
		this.add(panel1, BorderLayout.NORTH);
		panel1.add(label1, null);
		panel1.add(name_txt, null);
		panel1.add(button1, null);
		panel1.add(button2, null);
		this.add(panel2, BorderLayout.CENTER);
		panel2.add(chat_txt, null);
		panel2.add(list1, null);
		this.add(panel3, BorderLayout.SOUTH);
		panel3.add(label2, null);
		panel3.add(msg_txt, null);
		panel3.add(button3, null);
	}

	public boolean action(Event evt, Object obj) // 事件触发代码
	{
		if (evt.target instanceof Button) {
			String label = (String) obj;
			if (label.equals("连接")) // 如果点击连接后
			{
				if (soc == null) {
					try {
						soc = new Socket(InetAddress.getLocalHost(), 2525); // 使用端口2525实例化一个本地套接字
						System.out.println(soc); // 在控制台打印实例化的结果
						ps = new PrintStream(soc.getOutputStream()); // 将ps指向soc的输出流
						StringBuffer info = new StringBuffer("INFO: "); // 定义一个字符缓冲存储发送信息
						// 其中INFO为关键字让服务器识别为连接信息
						// 并将name和ip用"："分开，在服务器端将用一个
						// StringTokenizer类来读取数据
						String userinfo = name_txt.getText() + ":" + InetAddress.getLocalHost().toString();
						ps.println(info.append(userinfo));

						ps.flush();
						listen = new Listen(this, name_txt.getText(), soc); // 将客户端线程实例化
						listen.start(); // 启动线程
					} catch (IOException e) {
						System.out.println("Error:" + e);
						disconnect();
					}
				} // end of if
			}// end of if
			else if (label.equals("断开连接")) // 如果点击断开连接按钮则运行disconnect()
			{
				disconnect();
			} else if (label.equals("发送")) // 如果点击发送按钮
			{
				if (soc != null) {
					StringBuffer msg = new StringBuffer("MSG: "); // 定义并实例化一个字符缓冲存储发送的聊天信息
					// 其中MSG为关键词
					// try {
					// String msgtxt = new String(msg_txt.getText());
					// } catch (Exception e) {
					// }

					ps.println(msg.append(msg_txt.getText())); // 用打印流发送聊天信息
					ps.flush();
				}
			}
		}
		return true;
	} // end of method action

	@SuppressWarnings("deprecation")
	public void disconnect() // 客户端点击断开连接要运行的方法
	{
		if (soc != null) {
			try {
				listen.suspend();
				ps.println("QUIT"); // 用打印流发送QUIT信息通知服务器断开此次通信
				ps.flush();
				soc.close(); // 关闭套接字
			} catch (IOException e) {
				System.out.println("Error:" + e);
			} finally {

			}
		}// end of if
	}

	class Listen extends Thread // 客户端线程类用来监听服务器传来的信息
	{
		String name = null; // 用来存储客户端连接后的name信息
		DataInputStream dis = null; // 用来实现客户端接受服务器数据的输入流
		PrintStream ps = null; // 用来实现从客户端发送数据到服务器的打印流
		Socket socket = null; // 用来存储客户端的socket信息
		chatApplet parent = null; // 用来存储当前运行的chatApplet实例

		public Listen(chatApplet p, String n, Socket s) // Listen类的构造器
		{
			// 接受参数
			parent = p;
			name = n;
			socket = s;

			try {
				// 实例化两个数据流
				dis = new DataInputStream(s.getInputStream());
				ps = new PrintStream(s.getOutputStream());

			} catch (IOException e) {
				System.out.println("Error:" + e);
				parent.disconnect();
			}
		} // end of Listen constractor

		@SuppressWarnings("deprecation")
		public void run() // 线程运行方法
		{
			String msg = null;
			while (true) {
				try {
					msg = dis.readLine();
				} // 读取从服务器传来的信息
				catch (IOException e) {
					System.out.println("Error:" + e);
					parent.disconnect();
				}
				if (msg == null) // 如果从服务器传来的信息为空则断开此次连接
				{
					parent.listen = null;
					parent.soc = null;
					parent.list1.clear();
					return;
				}
				StringTokenizer st = new StringTokenizer(msg, ":"); // 用StringTokenizer类来实现读取分段字符
				String keyword = st.nextToken(); // 读取信息头即关键字用来识别是何种信息

				if (keyword.equals("PEOPLE")) // 如果是PEOPLE则是服务器发来的客户连接信息
				// 主要用来刷新客户端的用户列表
				{
					parent.list1.clear();
					while (st.hasMoreTokens()) // 遍历st取得目前所连接的客户
					{
						String str = st.nextToken();
						parent.list1.addItem(str);
					}
				} else if (keyword.equals("MSG")) // 如果关键字是MSG则是服务器传来的聊天信息
				// 主要用来刷新客户端聊天信息区将每个客户的聊天内容显示出来
				{
					String usr = st.nextToken();
					parent.chat_txt.appendText(usr);
					parent.chat_txt.appendText(st.nextToken("\0"));
					parent.chat_txt.appendText("\n\n");
				} else if (keyword.equals("QUIT")) // 如果关键字是QUIT则是服务器关闭的信息
				// 用来切断此次连接
				{
					System.out.println("Quit");
					try {
						parent.listen.stop();
						parent.listen = null;
						parent.soc.close();
						parent.soc = null;
					} catch (IOException e) {
						System.out.println("Error:" + e);
					}
					parent.list1.clear();

					return;
				}
			}

		} // end of run method
	} // end of Listen inner class

} // end of chatApplet class
