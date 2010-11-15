package com.yesibc.core.components.http;

import org.htmlparser.Node;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.HasAttributeFilter;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.filters.TagNameFilter;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

public class HtmlParserUtils {
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

}
