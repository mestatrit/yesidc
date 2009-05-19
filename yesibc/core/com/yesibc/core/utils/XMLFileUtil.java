package com.yesibc.core.utils;

/* * @(#)XMLFileUtil.java    1.0 2004/12/20 * * Copyright 2004 Shark Wang, All rights reserved.  */
import java.net.URL;
import java.util.Iterator;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

/**
 * * The <code>XmlUtil</code> class supported your code to read/write xml * data
 * from the file. all methods in this class depend on <code>dom4j</code>. * * @author
 * Shark Wang * @version 1.0, 2004/12/20 * @since Tutorial 1.0
 */

@SuppressWarnings("unchecked")
public class XMLFileUtil {
	private static Logger logger = LogManager.getLogger(XMLFileUtil.class);

	/**
	 * * read xml content from some file, and load xml data into the * Document
	 * object. * * @param filePath String * @return Document
	 */
	public static Document LoadXmlFile(String filePath) {
		/*
		 * marked by Shark Wang //get resolver to ignore the DTD validation
		 * EntityResolver resolver = new EntityResolver() { public InputSource
		 * resolveEntity(String publicId, String systemId) { return new
		 * InputSource(new StringBufferInputStream("")); } }; //create reader
		 * SAXReader reader = new SAXReader(); //set reader attribute to ignore
		 * DTD validation reader.setEntityResolver(resolver);
		 * reader.setValidation(false);
		 * reader.setIncludeExternalDTDDeclarations(false);
		 * reader.setIncludeInternalDTDDeclarations(false);
		 */
		SAXReader reader = new SAXReader(); // try to load xml data into
		// Document object
		Document doc = null;
		try {
			String urlString = null;
			if (filePath.startsWith("/")) {
				urlString = "file://" + filePath;
			} else {
				urlString = "file:///" + filePath;
			}
			logger.debug("XML File's URL :" + urlString);
			doc = reader.read(new URL(urlString));
		} catch (Exception ex) {
			logger.info("Can not load " + filePath);
			logger.debug(ex.getMessage(), ex);
		}
		// return Document object
		return doc;
	}

	/**
	 * * Get attribute value by
	 * 
	 * @param element
	 *            Element *
	 * @param attributeName
	 *            String *
	 * @return String
	 */
	public static String getAttributeValue(Element element, String attributeName) {
		String attributeValue = null;
		for (Iterator i = element.attributeIterator(); i.hasNext();) {
			Attribute attribute = (Attribute) i.next();
			if (attribute.getName().equals(attributeName)) {
				attributeValue = (String) attribute.getData();
				break;
			}
		}
		return attributeValue;
	}

	public static Element findElement(Element searchedElement, String targetNodePrefix, String targetNodeAttributeName,
			String targetNodeAttributeValue) {
		Element elementTarget = null;
		for (Iterator i = searchedElement.elementIterator(targetNodePrefix); i.hasNext();) {
			Element element = (Element) i.next();
			String strManagerName = XMLFileUtil.getAttributeValue(element, targetNodeAttributeName);
			if (strManagerName.equals(targetNodeAttributeValue)) {
				elementTarget = element;
				break;
			}
		}
		return elementTarget;
	}

	private XMLFileUtil() {
	}

}
