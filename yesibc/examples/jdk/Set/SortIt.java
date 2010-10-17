package jdk.Set;

import java.awt.BorderLayout;
import java.awt.Container;
import java.io.*;
import java.text.*;
import java.util.*;
import javax.swing.*;

@SuppressWarnings("unchecked")
public class SortIt {

	public static class CollatorComparator implements Comparator {
		Collator collator = Collator.getInstance();

		public int compare(Object element1, Object element2) {
			CollationKey key1 = collator.getCollationKey(element1.toString());
			CollationKey key2 = collator.getCollationKey(element2.toString());
			return key1.compareTo(key2);
		}
	}

	public static class CaseInsensitiveComparator implements Comparator {
		public int compare(Object element1, Object element2) {
			String lower1 = element1.toString().toLowerCase();
			String lower2 = element2.toString().toLowerCase();
			return lower1.compareTo(lower2);
		}
	}

	public static void main(String args[]) {
		String words[] = { "man", "Man", "Woman", "woman", "Manana", "manana",
				"ma?ana", "Ma?ana", "Mantra", "mantra", "mantel", "Mantel" };

		// Create frame to display sortings
		JFrame frame = new JFrame("Sorting");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container contentPane = frame.getContentPane();
		JTextArea textArea = new JTextArea();
		JScrollPane pane = new JScrollPane(textArea);
		contentPane.add(pane, BorderLayout.CENTER);

		// Create buffer for output
		StringWriter buffer = new StringWriter();
		PrintWriter out = new PrintWriter(buffer);

		// Create initial list to sort
		List list = new ArrayList(Arrays.asList(words));
		out.println("Original list:");
		out.println(list);
		out.println();

		// Perform default sort
		Collections.sort(list);
		out.println("Default sorting:");
		out.println(list);
		out.println();

		// Reset list
		list = new ArrayList(Arrays.asList(words));

		// Perform case insensitive sort
		Comparator comp = new CaseInsensitiveComparator();
		Collections.sort(list, comp);
		out.println("Case insensitive sorting:");
		out.println(list);
		out.println();

		// Reset list
		list = new ArrayList(Arrays.asList(words));

		// Perform collation sort
		comp = new CollatorComparator();
		Collections.sort(list, comp);
		out.println("Collator sorting:");
		out.println(list);
		out.println();

		// Fill text area and display
		textArea.setText(buffer.toString());
		frame.pack();
		frame.setVisible(true);
	}
}