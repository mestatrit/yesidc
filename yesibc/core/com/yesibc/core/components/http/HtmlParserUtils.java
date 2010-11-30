package com.yesibc.core.components.http;

import java.util.ArrayList;
import java.util.List;

import org.htmlparser.Node;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.HasAttributeFilter;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.filters.TagNameFilter;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.tags.TableColumn;
import org.htmlparser.tags.TableRow;
import org.htmlparser.tags.TableTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

public class HtmlParserUtils {

	/**
	 * 取得所有的链接。
	 * 
	 * @param result
	 * @param charSet
	 * @return
	 * @throws ParserException
	 */
	public static Node[] getLinkNodes(String result, String charSet) throws ParserException {
		if (result == null) {
			return null;
		}
		Parser parser = Parser.createParser(result, charSet);
		NodeFilter linkFilter = new NodeClassFilter(LinkTag.class);
		NodeList nodelist = parser.parse(linkFilter);
		if (nodelist == null) {
			return null;
		}
		Node[] nodes = nodelist.toNodeArray();
		return nodes;
	}

	/**
	 * 根据HTML的ID取得该节点。
	 * 
	 * @param html
	 * @param id
	 * @param charSet
	 * @return
	 * @throws ParserException
	 */
	public static Node getHtmlById(String html, String id, String charSet) throws ParserException {
		if (html == null || id == null) {
			return null;
		}
		Parser parser = Parser.createParser(html, charSet);
		NodeList list = parser.parse(new HasAttributeFilter("id", id));
		if (list == null || list.size() < 1) {
			return null;
		}
		return list.elementAt(0);
	}

	/**
	 * 根据HTML标签属性名，取得该节点。如果有多个，取第一个。
	 * 
	 * @param html
	 * @param tagName
	 * @param charSet
	 * @return
	 * @throws ParserException
	 */
	public static Node getHtmlByTag(String html, String tagName, String charSet) throws ParserException {
		if (html == null || tagName == null) {
			return null;
		}
		Parser parser = Parser.createParser(html, charSet);
		NodeList list = parser.parse(new TagNameFilter(tagName));
		if (list == null || list.size() < 1) {
			return null;
		}
		return list.elementAt(0);
	}

	/**
	 * 根据取得标签属性和内容标志，取得文字内容长度最小的Node. 即避免了无用的HTML内容。
	 * 
	 * @param html
	 * @param tagName
	 * @param txts
	 * @param charSet
	 * @return
	 * @throws ParserException
	 */
	public static Node getHtmlByTag0Txt(String html, String tagName, String[] txts, String charSet)
			throws ParserException {
		if (html == null || tagName == null) {
			return null;
		}
		Parser parser = Parser.createParser(html, charSet);
		NodeList list = parser.parse(new TagNameFilter(tagName));
		if (list == null || list.size() < 1) {
			return null;
		}

		String temp = null;
		Node node = null;
		int length = 0;
		for (int i = 0; i < list.size(); i++) {
			Node n = list.elementAt(i);
			boolean have = true;
			if (n == null) {
				continue;
			}
			temp = n.toHtml();
			for (String txt : txts) {
				if (temp.indexOf(txt) < 0) {
					have = false;
					break;
				}
			}

			if (have) {
				if (length == 0) {
					length = temp.length();
				}
				if (length >= temp.length()) { // 只有一个时=
					length = temp.length();
					node = n;
				}
			}
		}

		return node;

	}

	/**
	 * 根据TableTag，取得所有行的内容，以数组形式。
	 * @param table
	 * @return
	 */
	public static List<String[]> getAllTRs(TableTag table) {
		if (table == null || table.getRows() == null) {
			return null;
		}

		TableRow[] trs = table.getRows();
		List<String[]> trList = new ArrayList<String[]>();
		for (TableRow tr : trs) {
			TableColumn[] tds = tr.getColumns();
			if (tds == null) {
				continue;
			}
			String[] tdArray = new String[tds.length];
			int index = 0;
			for (TableColumn td : tds) {
				tdArray[index] = td.toPlainTextString();
				index++;
			}
			trList.add(tdArray);
		}

		return trList;
	}

}
