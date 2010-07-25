package http;

import junit.framework.TestCase;

import org.apache.log4j.Logger;
import org.htmlparser.Node;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.filters.OrFilter;
import org.htmlparser.filters.TagNameFilter;
import org.htmlparser.tags.ImageTag;
import org.htmlparser.tags.InputTag;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.tags.OptionTag;
import org.htmlparser.tags.SelectTag;
import org.htmlparser.tags.TableTag;
import org.htmlparser.util.NodeIterator;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;
import org.htmlparser.visitors.ObjectFindingVisitor;

public class ParserTestCase extends TestCase {

	private static final Logger logger = Logger.getLogger(ParserTestCase.class);

	public ParserTestCase(String name) {
		super(name);
	}

	/*
	 * 测试ObjectFindVisitor的用法
	 */
	public void testImageVisitor() {   
        try {   
            ImageTag imgLink;   
            ObjectFindingVisitor visitor = new ObjectFindingVisitor(   
                    ImageTag.class);   
            Parser parser = new Parser();   
            parser.setURL("http://www.google.com");   
            parser.setEncoding(parser.getEncoding());   
            parser.visitAllNodesWith(visitor);   
            Node[] nodes = visitor.getTags();   
            for (int i = 0; i < nodes.length; i++) {   
                imgLink = (ImageTag) nodes[i];   
                logger.fatal("testImageVisitor() ImageURL = "   
                        + imgLink.getImageURL());   
                logger.fatal("testImageVisitor() ImageLocation = "   
                        + imgLink.extractImageLocn());   
                logger.fatal("testImageVisitor() SRC = "   
                        + imgLink.getAttribute("SRC"));   
            }   
        }   
        catch (Exception e) {   
            e.printStackTrace();   
        }   
    }
	/*
	 * 测试TagNameFilter用法
	 */
	public void testNodeFilter() {   
        try {   
            NodeFilter filter = new TagNameFilter("IMG");   
            Parser parser = new Parser();   
            parser.setURL("http://www.google.com");   
            parser.setEncoding(parser.getEncoding());   
            NodeList list = parser.extractAllNodesThatMatch(filter);   
            for (int i = 0; i < list.size(); i++) {   
                logger.fatal("testNodeFilter() " + list.elementAt(i).toHtml());   
            }   
        } catch (Exception e) {   
            e.printStackTrace();   
        }   
  
    }
	/*
	 * 测试NodeClassFilter用法
	 */
	public void testLinkTag() {   
        try {   
  
            NodeFilter filter = new NodeClassFilter(LinkTag.class);   
            Parser parser = new Parser();   
            parser.setURL("http://www.google.com");   
            parser.setEncoding(parser.getEncoding());   
            NodeList list = parser.extractAllNodesThatMatch(filter);   
            for (int i = 0; i < list.size(); i++) {   
                LinkTag node = (LinkTag) list.elementAt(i);   
                logger.fatal("testLinkTag() Link is :" + node.extractLink());   
            }   
        } catch (Exception e) {   
            e.printStackTrace();   
        }   
  
    }
	/*
	 * 测试<link href=" text=’text/css’ rel=’stylesheet’ />用法
	 */
	public void testLinkCSS() {   
        try {   
  
            Parser parser = new Parser();   
            parser   
                    .setInputHTML("<head><title>Link Test</title>"   
                            + "<link href=’/test01/css.css’ text=’text/css’ rel=’stylesheet’ />"   
                            + "<link href=’/test02/css.css’ text=’text/css’ rel=’stylesheet’ />"   
                            + "</head>" + "<body>");   
            parser.setEncoding(parser.getEncoding());   
            NodeList nodeList = null;   
  
            for (NodeIterator e = parser.elements(); e.hasMoreNodes();) {   
                Node node = e.nextNode();   
                logger   
                        .fatal("testLinkCSS()" + node.getText()   
                                + node.getClass());   
  
            }   
        } catch (Exception e) {   
            e.printStackTrace();   
        }   
    }
	/*
	 * 测试OrFilter的用法
	 */
	public void testOrFilter() {   
        NodeFilter inputFilter = new NodeClassFilter(InputTag.class);   
        NodeFilter selectFilter = new NodeClassFilter(SelectTag.class);   
        Parser myParser;   
        NodeList nodeList = null;   
  
        try {   
            Parser parser = new Parser();   
            parser   
                    .setInputHTML("<head><title>OrFilter Test</title>"   
                            + "<link href=’/test01/css.css’ text=’text/css’ rel=’stylesheet’ />"   
                            + "<link href=’/test02/css.css’ text=’text/css’ rel=’stylesheet’ />"   
                            + "</head>"   
                            + "<body>"   
                            + "<input type=’text’ value=’text1′ name=’text1′/>"   
                            + "<input type=’text’ value=’text2′ name=’text2′/>"   
                            + "<select><option id=’1′>1</option><option id=’2′>2</option><option id=’3′></option></select>"   
                            + "<a href=’http://www.yeeach.com’>yeeach.com</a>"   
                            + "</body>");   
  
            parser.setEncoding(parser.getEncoding());   
            OrFilter lastFilter = new OrFilter();   
            lastFilter.setPredicates(new NodeFilter[] { selectFilter,   
                    inputFilter });   
            nodeList = parser.parse(lastFilter);   
            for (int i = 0; i <= nodeList.size(); i++) {   
                if (nodeList.elementAt(i) instanceof InputTag) {   
                    InputTag tag = (InputTag) nodeList.elementAt(i);   
                    logger.fatal("OrFilter tag name is :" + tag.getTagName()   
                            + " ,tag value is:" + tag.getAttribute("value"));   
                }   
                if (nodeList.elementAt(i) instanceof SelectTag) {   
                    SelectTag tag = (SelectTag) nodeList.elementAt(i);   
                    NodeList list = tag.getChildren();   
  
                    for (int j = 0; j < list.size(); j++) {   
                        OptionTag option = (OptionTag) list.elementAt(j);   
                        logger   
                                .fatal("OrFilter Option"   
                                        + option.getOptionText());   
                    }   
  
                }   
            }   
  
        } catch (ParserException e) {   
            e.printStackTrace();   
        }   
    }
	/*
	 * 测试对<table><tr><td></td></tr></table>的解析
	 */
	public void testTable() {   
        Parser myParser;   
        NodeList nodeList = null;   
        myParser = Parser.createParser("<body> " + "<table id=’table1′ >"   
                + "<tr><td>1-11</td><td>1-12</td><td>1-13</td>"   
                + "<tr><td>1-21</td><td>1-22</td><td>1-23</td>"   
                + "<tr><td>1-31</td><td>1-32</td><td>1-33</td></table>"   
                + "<table id=’table2′ >"   
                + "<tr><td>2-11</td><td>2-12</td><td>2-13</td>"   
                + "<tr><td>2-21</td><td>2-22</td><td>2-23</td>"   
                + "<tr><td>2-31</td><td>2-32</td><td>2-33</td></table>"   
                + "</body>", "GBK");   
        NodeFilter tableFilter = new NodeClassFilter(TableTag.class);   
        OrFilter lastFilter = new OrFilter();   
        lastFilter.setPredicates(new NodeFilter[] { tableFilter }); 
    }
}