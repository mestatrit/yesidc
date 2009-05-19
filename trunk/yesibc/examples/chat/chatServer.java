package chat;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.net.*;
import java.io.*;
import java.util.*;

public class chatServer extends JFrame {
	/**
	 * 
	 */
	private static final long serialVersionUID = -9013209242546367748L;
	// 以下为图形界面变量
	JPanel contentPane;
	JMenuBar jMenuBar1 = new JMenuBar();
	JMenu jMenuFile = new JMenu();
	JMenuItem jMenuFileExit = new JMenuItem();
	JMenu jMenuHelp = new JMenu();
	JMenuItem jMenuHelpAbout = new JMenuItem();
	JLabel statusBar = new JLabel();
	BorderLayout borderLayout1 = new BorderLayout();
	JPanel jPanel1 = new JPanel();
	BorderLayout borderLayout2 = new BorderLayout();
	JLabel jLabel1 = new JLabel();
	static java.awt.List jList1 = new java.awt.List(13);

	JScrollPane scrollpane = new JScrollPane(jList1);

	// 以下为网络相关变量
	static Vector<Client> clients = new Vector<Client>(10); // 用vector向量数组存储连接客户变量
	static ServerSocket server = null; // 建立服务器socket
	static int active_connects = 0; // 用来存储目前连接的客户数
	static Socket socket = null; // 用来存储一个套接字连接

	// chatServer main method
	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (Exception e) {
			e.printStackTrace();
		}
		chatServer chatServer1 = new chatServer(); // 实例化一个chatServer类
		chatServer1.show();
		System.out.println("Server starting ...");

		try {
			server = new ServerSocket(2525); // 使用端口2525初始化服务器套接字
		} catch (IOException e) {
			System.out.println("Error:" + e);
		}
		while (true) {

			if (clients.size() < 5) // 当客户数小于5个时开始连接
			{
				try {
					socket = server.accept(); // 用来存储连接上的客户socket
					if (socket != null) {
						System.out.println(socket + "连接"); // 在控制台打印客户连接信息

					}
				} catch (IOException e) {
					System.out.println("Error:" + e);
				}
				int i = 0;

				do {

					Client c = new Client(socket); // 定义并实例化一个Client线程类，一个就对应一个客户连接
					clients.addElement(c); // 加入clients数组中
					if (checkName(c)) // 调用checkName方法验证c的合法性
					{
						int connum = ++active_connects; // 定义栏位来存储活动连接数
						String constr = "目前有" + connum + "客户相连"; // 在状态栏里显示连接数
						chatServer1.statusBar.setText(constr);
						Client listdata = (Client) clients.elementAt(i); // 将连接客户的socket信息存储进listdata数组

						chatServer.jList1.addItem(listdata.ip + "连接", i); // 将客户socket信息写入list框
						c.start(); // 启动线程
						notifyRoom(); // 用notifyRoom方法来监视聊天室连接变化
						// 不断改变clients数组并刷新客户端信息

					} else {
						// 如果名字不合法
						c.ps.println("TAKEN");

						disconnect(c);

					}
					i++;
					break;

				} while (i < clients.size());

			} else // 如果clients数组超过了5个
			{
				try {
					Thread.sleep(200);
				} catch (InterruptedException e) {
				}
			}
		}// end of while
	}// end of main method

	/** Construct the frame */
	public chatServer() // chatServer类的构造器用来初始化一些UI信息
	{
		enableEvents(AWTEvent.WINDOW_EVENT_MASK);
		try {
			jbInit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/** Component initialization */
	private void jbInit() throws Exception {
		// setIconImage(Toolkit.getDefaultToolkit().createImage(Frame1.class.getResource("[Your Icon]")));
		contentPane = (JPanel) this.getContentPane();
		contentPane.setLayout(borderLayout1);
		this.setSize(new Dimension(400, 300));
		this.setTitle("简易聊天服务器端");
		statusBar.setText("目前的连接数为：");

		jMenuFile.setText("File");
		jMenuFileExit.setText("Exit");
		jMenuFileExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				jMenuFileExit_actionPerformed(e);
			}
		});
		jMenuHelp.setText("Help");
		jMenuHelpAbout.setText("About");
		jMenuHelpAbout.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				jMenuHelpAbout_actionPerformed(e);
			}
		});

		jPanel1.setLayout(borderLayout2);
		jLabel1.setText("服务器端连接客户");
		jMenuFile.add(jMenuFileExit);
		jMenuHelp.add(jMenuHelpAbout);
		jMenuBar1.add(jMenuFile);
		jMenuBar1.add(jMenuHelp);
		this.setJMenuBar(jMenuBar1);
		contentPane.add(statusBar, BorderLayout.SOUTH);
		contentPane.add(jPanel1, BorderLayout.CENTER);
		jPanel1.add(jLabel1, BorderLayout.NORTH);
		jPanel1.add(scrollpane, BorderLayout.CENTER);

	}// end of jbinit

	/** File | Exit action performed */
	public void jMenuFileExit_actionPerformed(ActionEvent e) // 实现退出菜单方法
	{
		sendClients(new StringBuffer("QUIT")); // 向客户端发送断开连接信息
		closeAll(); // 调用closeAll方法关闭所有连接
		System.exit(0);
	}

	/** Help | About action performed */
	@SuppressWarnings("deprecation")
	public void jMenuHelpAbout_actionPerformed(ActionEvent e) // 实现about对话框，意义不大，可以去掉
	{
		chatServer_AboutBox dlg = new chatServer_AboutBox(this);
		Dimension dlgSize = dlg.getPreferredSize();
		Dimension frmSize = getSize();
		Point loc = getLocation();
		dlg.setLocation((frmSize.width - dlgSize.width) / 2 + loc.x, (frmSize.height - dlgSize.height) / 2 + loc.y);
		dlg.setModal(true);
		dlg.show();
	}

	/** Overridden so we can exit when window is closed */
	protected void processWindowEvent(WindowEvent e) // 实现关闭服务器程序要进行的操作
	{
		super.processWindowEvent(e);
		if (e.getID() == WindowEvent.WINDOW_CLOSING) {
			jMenuFileExit_actionPerformed(null);
		}
	}

	/* 以下实现各种方法 */
	public static void notifyRoom() // 用来监视连接信息，不断刷新clients数组并刷新客户端用户列表信息
	{
		StringBuffer people = new StringBuffer("PEOPLE");
		for (int i = 0; i < clients.size(); i++) {
			Client c = (Client) clients.elementAt(i);
			people.append(":" + c.name);

		}
		sendClients(people); // 用sendClients方法向客户端发送信息
	}

	public static synchronized void sendClients(StringBuffer msg) // 实现sendClients方法专用来向每个连接的客户端发送信息
	{
		for (int i = 0; i < clients.size(); i++) {
			Client c = (Client) clients.elementAt(i);
			c.send(msg);
		}
	}

	public static void closeAll() // 实现关闭所有连接信息
	{
		while (clients.size() > 0) // 遍历clients数组删除所有连接客户信息
		{
			Client c = (Client) clients.firstElement();
			try {
				c.socket.close();
			} catch (IOException e) {
				System.out.println("Error:" + e);
			} finally {
				clients.removeElement(c);
			}
		}// end of while
	}// end of closeAll method

	public static boolean checkName(Client newclient) // 实现检查连接客户的socket信息是否合法
	{
		for (int i = 0; i < clients.size(); i++) {
			Client c = (Client) clients.elementAt(i);
			if ((c != newclient) && c.equals(newclient.name))
				return false;
		}
		return (true);
	}// end of checkName method

	@SuppressWarnings("deprecation")
	public static synchronized void disconnect(Client c) // 实现断开单个客户的方法
	{
		try {
			jList1.addItem(c.ip + "断开连接"); // 在服务器端程序的list框中显示断开信息

			chatServer.active_connects--; // 将连接数减1
			c.send(new StringBuffer("QUIT")); // 向客户发送断开连接信息
			c.socket.close();

		} catch (IOException e) {
			System.out.println("Error:" + e);
		} finally {
			clients.removeElement(c); // 从clients数组中删除此客户的相关socket等信息
		}
	}

}

class Client extends Thread // 实现 Client线程类
{
	Socket socket; // 用来存储一个连接客户的socket信息
	String name; // 用来存储客户的连接姓名
	String ip; // 用来存储客户的ip信息
	DataInputStream dis; // 用来实现接受从客户端发来的数据流
	PrintStream ps; // 用来实现向客户端发送信息的打印流

	public void send(StringBuffer msg) // 实现想客户端发送信息的方法
	{
		ps.println(msg); // 用打印流发送信息
		ps.flush();
	}

	@SuppressWarnings("deprecation")
	public Client(Socket s) // Client线程类的构造器
	{
		socket = s;
		try {
			dis = new DataInputStream(s.getInputStream()); // 存储特定客户socket的输入流接受s这个客户发送到服务器端的信息
			ps = new PrintStream(s.getOutputStream()); // 存储特定客户socket的输出流发送服务器给s这个客户的信息
			String info = dis.readLine(); // 读取接受来的信息

			StringTokenizer stinfo = new StringTokenizer(info, ":"); // 用StringTokenizer类来读取用"："分段字符
			String head = stinfo.nextToken(); // head用来存储类似于关键字的头信息
			if (stinfo.hasMoreTokens())
				name = stinfo.nextToken(); // 关键字后的第二段数据是客户名信息
			if (stinfo.hasMoreTokens())
				ip = stinfo.nextToken(); // 关键字后的第三段数据是客户ip信息
			System.out.println(head); // 在控制台打印头信息
		} catch (IOException e) {
			System.out.println("Error:" + e);
		}
	}// end of Client constrator

	@SuppressWarnings("deprecation")
	public void run() // 线程运行方法
	{
		while (true) {
			String line = null;
			try {
				line = dis.readLine(); // 读取客户端发来的数据流

			} catch (IOException e) {
				System.out.println("Error" + e);
				chatServer.disconnect(this);
				chatServer.notifyRoom();
				return;
			}

			if (line == null) // 客户已离开
			{
				chatServer.disconnect(this);
				chatServer.notifyRoom();
				return;
			}

			StringTokenizer st = new StringTokenizer(line, ":");
			String keyword = st.nextToken();

			if (keyword.equals("MSG")) // 如果关键字是MSG则是客户端发来的聊天信息
			{
				StringBuffer msg = new StringBuffer("MSG:"); // 在服务器端再重新建立一个字符缓冲
				msg.append(name);
				msg.append(st.nextToken("\0"));
				chatServer.sendClients(msg); // 再将某个客户发来的聊天信息发送到每个连接客户的聊天栏中
			} else if (keyword.equals("QUIT")) // 如果关键字是QUIT则是客户端发来断开连接的信息
			{

				chatServer.disconnect(this); // 服务器断开与这个客户的连接
				chatServer.notifyRoom(); // 继续监听聊天室并刷新其他客户的聊天人名list
				this.stop();
			}
		}
	}
} // end of class Client
