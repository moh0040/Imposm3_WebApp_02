package cz.vsb.p4.testapp;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;

/**
 * Created by ruz76 on 20.10.2016.
 */
public class Downloader extends Thread {
    public String filename;
    public Downloader() {
       // long milis = System.currentTimeMillis();
       // filename = milis + "-malta-latest.osm.pbf";
        //i can remove below code besase this file will be download from url and save as file name but in my case i will use ready pbf file from pc it is fast
        filename = "C:/s/romania.osm.pbf";
    }
    public void run() {

        //TODO
            URL website = null;
            try {
                website = new URL("https://s3.amazonaws.com/metro-extracts.mapzen.com/cluj_romania.osm.pbf");
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
            ReadableByteChannel rbc = null;
            try {
                rbc = Channels.newChannel(website.openStream());

                FileOutputStream fos = new FileOutputStream(filename);
                fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
            } catch (IOException e) {
                e.printStackTrace();
            }

    }
}
