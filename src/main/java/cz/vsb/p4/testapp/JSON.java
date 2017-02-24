package cz.vsb.p4.testapp;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by s on 11/3/2016.
 */
public class JSON{


    public String jsonfile;



//FOR NOT ALL IN ONE VARIANT
//    public String JSONFilter(String[] point, String[] line, String[] polygon, String[] multipolygon)throws IOException {

    //FOR ALL IN ONE VARAINT
    public String JSONFilter(String[] value,String [] key,String[] Ntable,String[] geometry,String[] jsondir)throws IOException {
        String count01="{\n" +
                "  \"tags\": {\n" +
                "    \"load_all\": true,\n" +
                "    \"exclude\": [\n" +
                "      \"created_by\",\n" +
                "      \"source\"\n" +
                "    ]\n" +
                "  },\n" +
                "  \"tables\": {\n" ;

        for (int i=0; i<Ntable.length; i++){
            String b10 = "\""+Ntable[i].toString()+"\"";
            count01+=b10;
        }

                        String count0004=": {\n" +
                "      \"fields\": [\n" +
                "        {\n" +
                "          \"type\": \"id\",\n" +
                "          \"name\": \"osm_id\"\n" +
                "        },\n" +
                "        {\n" +
                "          \"type\": \"geometry\",\n" +
                "          \"name\": \"geometry\"\n" +
                "        },\n" +
                "        {\n" +
                "          \"type\": \"hstore_tags\",\n" +
                "          \"name\": \"tags\"\n" +
                "        }\n" +
                "      ],\n" +
                "      \"type\":";

        for (int i=0; i<geometry.length; i++){
            String b11 = "\""+geometry[i].toString()+"\"";
            count0004+=b11;
        }

        String count005=",\"mapping\":{";


        for (int i=0; i<key.length; i++){
            String b12 = "\""+key[i].toString()+"\"";
            count005+=b12;
        }

        String count03 = ":[";
        for (int i=0; i<value.length; i++){
            String b1 = "\""+value[i].toString()+"\",";
            count03+=b1;
        }
        count03 = count03.replaceAll(",$", "");
        String count04= count03+"]";
        String count06= "}}}}";

        String part_final=count01+count0004+count005+count04+count06;
        System.out.println(part_final);
        //////////////////////////////////////////////////////create a json file and save in to pc

        for (int i=0; i<jsondir.length; i++){
            jsonfile  = jsondir[i].toString();
        }


        File file = new File(jsonfile);
        // creates the file
        file.createNewFile();
        // creates a FileWriter Object
        FileWriter writer = new FileWriter(file);
        // Writes the content to the file
        writer.write(part_final);
        writer.flush();
        writer.close();
        // Creates a FileReader Object
        FileReader fr = new FileReader(file);
        char [] a = new char[50];
        fr.read(a);   // reads the content to the array
        for(char c : a)
         //System.out.print(c);   // prints the characters one by one
        fr.close();
        return part_final;
    }

}
