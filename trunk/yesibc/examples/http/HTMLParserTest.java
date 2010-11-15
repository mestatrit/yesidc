package http;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.htmlparser.Node;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.AndFilter;
import org.htmlparser.filters.HasAttributeFilter;
import org.htmlparser.filters.HasParentFilter;
import org.htmlparser.filters.HasSiblingFilter;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.filters.NotFilter;
import org.htmlparser.filters.OrFilter;
import org.htmlparser.filters.TagNameFilter;
import org.htmlparser.nodes.TextNode;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.tags.TitleTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.visitors.HtmlPage;

public class HTMLParserTest {
	public static void main(String args[]) throws Exception {
		getTeamPlayer();
		// main1();
	}

	@SuppressWarnings("unused")
	private static void main1() throws MalformedURLException, IOException, UnsupportedEncodingException, Exception {
		String path = "http://www.blogjava.net/amigoxie";
		URL url = new URL(path);
		URLConnection conn = url.openConnection();
		conn.setDoOutput(true);

		InputStream inputStream = conn.getInputStream();
		InputStreamReader isr = new InputStreamReader(inputStream, "utf8");
		StringBuffer sb = new StringBuffer();
		BufferedReader in = new BufferedReader(isr);
		String inputLine;

		while ((inputLine = in.readLine()) != null) {
			sb.append(inputLine);
			sb.append("\n");
		}

		String result = sb.toString();

		readByHtml(result);
		readTextAndLinkAndTitle(result);
	}

	/** */
	/**
	 * 按页面方式处理.解析标准的html页面
	 * 
	 * @param content
	 *            网页的内容
	 * @throws Exception
	 */
	public static void readByHtml(String content) throws Exception {
		Parser myParser;
		myParser = Parser.createParser(content, "utf8");
		HtmlPage visitor = new HtmlPage(myParser);
		myParser.visitAllNodesWith(visitor);

		String textInPage = visitor.getTitle();
		System.out.println(textInPage);
		NodeList nodelist;
		nodelist = visitor.getBody();

		System.out.print(nodelist.asString().trim());
	}

	/** */
	/**
	 * 分别读纯文本和链接.
	 * 
	 * @param result
	 *            网页的内容
	 * @throws Exception
	 */
	public static void readTextAndLinkAndTitle(String result) throws Exception {
		Parser parser;
		NodeList nodelist;
		parser = Parser.createParser(result, "utf8");
		NodeFilter textFilter = new NodeClassFilter(TextNode.class);
		NodeFilter linkFilter = new NodeClassFilter(LinkTag.class);
		NodeFilter titleFilter = new NodeClassFilter(TitleTag.class);
		OrFilter lastFilter = new OrFilter();
		lastFilter.setPredicates(new NodeFilter[] { textFilter, linkFilter, titleFilter });
		nodelist = parser.parse(lastFilter);
		Node[] nodes = nodelist.toNodeArray();
		String line = "";

		for (int i = 0; i < nodes.length; i++) {
			Node node = nodes[i];
			if (node instanceof TextNode) {
				TextNode textnode = (TextNode) node;
				line = "TextNode-" + textnode.getText();
			} else if (node instanceof LinkTag) {
				LinkTag link = (LinkTag) node;
				line = link.getLink();
			} else if (node instanceof TitleTag) {
				TitleTag titlenode = (TitleTag) node;
				line = titlenode.getTitle();
			}

			if (isTrimEmpty(line))
				continue;
			System.out.println(line);
		}
	}

	/** */
	/**
	 * 去掉左右空格后字符串是否为空
	 */
	public static boolean isTrimEmpty(String astr) {
		if ((null == astr) || (astr.length() == 0)) {
			return true;
		}
		if (isBlank(astr.trim())) {
			return true;
		}
		return false;
	}

	/** */
	/**
	 * 字符串是否为空:null或者长度为0.
	 */
	public static boolean isBlank(String astr) {
		if ((null == astr) || (astr.length() == 0)) {
			return true;
		} else {
			return false;
		}
	}

	public static String url = "http://nba.sports.sina.com.cn/team.php?id=5";

	static class Player {
		private Integer no;
		private String name;
		private String position;
		private String height;
		private String weight;
		private String age;
		private Date birth;
		private String seniority;

		public Integer getNo() {
			return no;
		}

		public void setNo(Integer no) {
			this.no = no;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getPosition() {
			return position;
		}

		public void setPosition(String position) {
			this.position = position;
		}

		public String getHeight() {
			return height;
		}

		public void setHeight(String height) {
			this.height = height;
		}

		public String getWeight() {
			return weight;
		}

		public void setWeight(String weight) {
			this.weight = weight;
		}

		public String getAge() {
			return age;
		}

		public void setAge(String age) {
			this.age = age;
		}

		public Date getBirth() {
			return birth;
		}

		public void setBirth(Date birth) {
			this.birth = birth;
		}

		public String getSeniority() {
			return seniority;
		}

		public void setSeniority(String seniority) {
			this.seniority = seniority;
		}

		@Override
		public String toString() {
			return "Player [age=" + age + ", birth=" + birth + ", height=" + height + ", name=" + name + ", no=" + no
					+ ", position=" + position + ", seniority=" + seniority + ", weight=" + weight + "]";
		}
	}

	public static List<Player> getTeamPlayer() throws Exception {
		Parser myParser = new Parser(url);
		myParser.setEncoding("gb2312");
		List<Player> list = new ArrayList<Player>();

		NodeFilter playerFilter = //
		new AndFilter(// --11
				new HasParentFilter(// -2
						new AndFilter(// -3
								new HasParentFilter(// --33
										new AndFilter(// -4
												new HasParentFilter(//
														new AndFilter(// -6
																new HasSiblingFilter(// --8
																		// 并列兄弟节点
																		new AndFilter(new HasAttributeFilter("name",
																				"roster"),// --9
																				new TagNameFilter("a")// --9
																		)// -8
																), // --7
																new TagNameFilter("table")// --7
														)// -6
												),// --55
												new TagNameFilter("tr")// --55
										)// -4
								), // --33
								new TagNameFilter("td")// --33
						)// -3
				),// --11
				new TagNameFilter("a")// -2
		);// --11
		NodeList playerList = myParser.extractAllNodesThatMatch(playerFilter);
		Node[] nodes = playerList.toNodeArray();
		for (Node node : nodes) {
			System.out.println(node.toHtml());
		}

		// 获取表中非herf的td
		myParser.reset();
		playerFilter = //
		new AndFilter(// --1
				new HasParentFilter(// --2
						new AndFilter(// --3
								new HasParentFilter(// --5
										new AndFilter(
										// --6
												new HasParentFilter(//
														new AndFilter(//
																new HasSiblingFilter(//
																		new AndFilter(
																				//
																				new HasAttributeFilter("name", "roster"),
																				new TagNameFilter("a"))//
																), //
																new TagNameFilter("table")//
														)//
												),// --
												new TagNameFilter("tr")//
										)// --6
								), // --4 --5
								new TagNameFilter("td")// --4
						)// --3
				), // --11 --2
				new NotFilter(new TagNameFilter("a"))// --11
		);// --1
		NodeList infoList = myParser.extractAllNodesThatMatch(playerFilter);

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		int index = 8;

		for (int i = 0; i < playerList.size(); i++) {
			Player player = new Player();
			for (int j = index; j < infoList.size(); j++) {
				String data = infoList.elementAt(j).toPlainTextString();
				switch (j % 8) {
				case 0:
					player.setNo(Integer.parseInt(data));
					break;
				case 2:
					player.setPosition(data);
					break;
				case 3:
					player.setHeight(data);
					break;
				case 4:
					player.setWeight(data);
					break;
				case 5:
					player.setAge(data);
					break;
				case 6:
					player.setBirth(format.parse(data));
					break;
				case 7:
					player.setSeniority(data);
					break;
				}
				if (j % 8 == 7) {
					index = j + 1;
					break;
				}
			}
			player.setName(playerList.elementAt(i).toPlainTextString());
			list.add(player);
		}
		for (Player player : list) {
			System.out.println(player.toString());
		}
		return list;
	}
}