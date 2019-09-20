package com.dev.filehandling;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Scanner;

import org.apache.commons.io.FileUtils;

public class ReadFromFile {

	public static void main(String[] args) throws IOException {
		
		File file = new File("D:\\text.txt");
		Scanner scanner = new Scanner(file);
		while (scanner.hasNextLine()) {
			System.out.println(scanner.nextLine());
		}
		scanner.close();
		
		/*BufferedReader in = new BufferedReader(new FileReader("D:\\text.txt"));
		String str;
		while ((str = in.readLine()) != null)
			System.out.println(str);
		in.close();

		InputStream istream;
		OutputStream ostream;
		int c;
		final int EOF = -1;
		ostream = System.out;
		try {
			File inputFile = new File("D:/Data.txt");
			FileUtils.touch(inputFile);
			istream = new FileInputStream(inputFile);
			try {
				while ((c = istream.read()) != EOF)
					ostream.write(c);
			} catch (IOException e) {
				System.out.println("Error: " + e.getMessage());
			} finally {
				try {
					istream.close();
					ostream.close();
				} catch (IOException e) {
					System.out.println("File did not close");
				}
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			System.exit(1);
		}
*/
	}
}
