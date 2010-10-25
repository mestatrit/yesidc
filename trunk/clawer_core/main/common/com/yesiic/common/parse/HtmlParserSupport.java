package com.yesiic.common.parse;

import org.htmlparser.Node;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

public class HtmlParserSupport {

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

}
