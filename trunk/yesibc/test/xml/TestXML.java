package xml;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.List;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;

import com.yesibc.core.utils.XMLFileUtil;

public class TestXML {

	static String s = "D:/new/txt.xml";
	static String s1 = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><ROWS><ROW no=\"1\"><INPUT><gmsfhm>420281198106054212</gmsfhm><xm>xuxinyu</xm></INPUT><OUTPUT><ITEM><gmsfhm></gmsfhm><result_gmsfhm>ok</result_gmsfhm></ITEM><ITEM><xm></xm><result_xm>good</result_xm></ITEM><ITEM><xp></xp></ITEM></OUTPUT></ROW></ROWS>";
	public static void main(String[] args) { 
//		Document doc = XMLFileUtil.LoadXmlFile(s);
//		System.out.println("===");
//		System.out.println("===33" + (doc==null));
//		Element el = doc.getRootElement();
//		System.out.println(doc.getText());
//		System.out.println(doc.getStringValue());
//		System.out.println(el.getName());
//		System.out.println(doc.getText());
//		System.out.println("===");
		
		String s = "在在在aaa";
		System.out.println(s.length());
		System.out.println(s.substring(0,5));
		
		    SAXBuilder builder = new SAXBuilder();
		    Document doc = null;
		    Reader in = new StringReader(s1);
		    try {
				doc = builder.build(in);
			} catch (JDOMException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		    Element root = doc.getRootElement();
		    List ls = root.getChildren();// 注意此处取出的是root节点下面的一层的Element集合
		    Element Configuration = (Element) ls.get(0);
		    Element Test = (Element) Configuration.getChildren().get(0);
		    List<Element> list = Test.getChildren();
		    for (Element e : list) {
		      System.out.println(e.getName() + "/" + e.getValue());
		    }
	}

}
