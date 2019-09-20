package com.dev.filehandling;

import java.io.FileWriter;
import java.io.IOException;

public class WriteOnFile {

	public static void main(String[] args) throws IOException {
	   
		FileWriter fw = new FileWriter("D:\\text.txt");
		fw.write("helloo Sri.....");
		fw.close();

	}

}
