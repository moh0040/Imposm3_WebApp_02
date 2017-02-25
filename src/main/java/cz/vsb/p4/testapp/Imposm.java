package cz.vsb.p4.testapp;

import java.io.*;

/**
 * Created by ruz76 on 31.10.2016.
 */
public class Imposm {


    public long newlength;

    public void importToDb(String json_final, String pbf) throws IOException {

        String filepath=pbf;
        File ff = new File(filepath);
        System.out.println("WAITING...for import .Pbf file from file-dir to postgresql");
        while (ff.exists() != true) {
        }
        try {
            Thread.sleep(1000);
        } catch (InterruptedException ignored) {
        }
        newlength = ff.length();

        System.out.println("The size of .Pbf file is: " + newlength+" Bytes");// print out the size for testing
        System.out.println(".Pbf file is successfully import to server!");




        Runtime rt = Runtime.getRuntime();
//HETE MUST BE CHAGE TO json_final (from controller )TO RUN THE IMPOSM3 IN LINUX NOT WINDOWS
        Process pr = rt.exec(json_final);
        BufferedReader input = new BufferedReader(new InputStreamReader(pr.getInputStream()));

        String line=null;
        System.out.printf("Output of running  process is: \n");
        while((line=input.readLine()) != null) {
            System.out.println(line);
        }

    }
}
