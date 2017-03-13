package cz.vsb.p4.testapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * This is test controller to demonstrate spring MVC capabilities
 */
@org.springframework.stereotype.Controller
public class MainController extends JSON {


    //THIS IS FOR HAVE A SELECTION ALL IN ONE (POINT,LINE,POLY...)
        @RequestMapping(method = RequestMethod.POST, path = "/createObject")

        public String createObject(Model model,
                @RequestParam("city") String city,
                @RequestParam("host") String host,
                @RequestParam("database") String database,
                @RequestParam("user") String user,
                @RequestParam("password") String password,
                @RequestParam("state") String state,
                @RequestParam("cachedir") String cachedir,
                @RequestParam(value = "jsondir", required = false) String[] jsondir,
                @RequestParam(value = "key", required = false) String[] key,
                @RequestParam(value = "key", required = false) String key1,
                @RequestParam(value = "Ntable", required = false) String[] Ntable,
                @RequestParam(value = "Ntable", required = false) String NT,
                @RequestParam(value = "Ntable", required = false) String[] NT1,
                @RequestParam(value = "geometry", required = false) String[] geometry,
                @RequestParam(value = "geometry", required = false) String GT,
                @RequestParam(value = "value", required = false) String[] value)
                throws IOException, SQLException {




            String source ="";
            if(city.equals("Prague")){
                source="/home/saeed/down/source/prague.pbf";
            }else if(city.equals("Brno")){
                source="/home/saeed/down/source/brno.pbf";
            }else if(city.equals("Ostrava")) {
                source = "/home/saeed/down/source/ostrava.pbf";
            }else if(city.equals("Plzen")){
                source="/home/saeed/down/source/plzen.pbf";
            }else if(city.equals("Olomouc")) {
                source = "/home/saeed/down/source/olomouc.pbf";
            }else if(city.equals("Pardubice")){
                source="/home/saeed/down/source/Pardubice.pbf";
            }else if(city.equals("Ceskebudejovice")) {
                source = "/home/saeed/down/source/Ceskebudejovice.pbf";
            };










            //adresse="-write -connection postgis://osm:osm@localhost/osm"; //should be like this

        String Postgis="-write"+" "+"-connection"+" "+"postgis://"+user+":"+password+"@"+host+"/"+database;

        System.out.println("this is the addreass of database:"+ Postgis+"\n");





        //connect to json class and get the filterd json file(here i get json file from pc which json class save the result into pc and i get json file from pc becase imposm needs a json file not a simple string )
        JSON dd = new JSON();
        dd.JSONFilter(value,key,Ntable,geometry,jsondir);
        String jsonadd= dd.jsonfile;









        //create table on import schema
        String json_final="imposm3 import -mapping "+jsonadd+" -read "+" "+source+" "+" "+state+" "+Postgis+"?prefix=NONE -deployproduction -cachedir "+cachedir;

            System.out.println("this is the full address for imposm3:"+ json_final+"\n");

        //this code will run the imposm3 into terminal by just adding above code

        Imposm im = new Imposm();

        im.importToDb(json_final,source);
        long size = im.newlength;
        double size2 = size*0.00000095367432;
        DecimalFormat df = new DecimalFormat("0.00");
        System.out.println(df.format(size2));


        //so now we send all data with filter from pbf to postgis data base

        //connect ot postgis
        PostGisConnection postgis = new PostGisConnection();

        int numset5 = postgis.NumberOfColums(NT);
        int numset6 = postgis.NumberOfRows(NT);

        model.addAttribute("NC",numset5);
        model.addAttribute("NR",numset6);
        model.addAttribute("S","Public");
        model.addAttribute("T",NT);
        model.addAttribute("GT",GT);
        model.addAttribute("SD",df.format(size2)+" Mb");



            String names[] = value;

            String[] number_of_attribute = new String[names.length];
            String[] Number_of_Values = new String[names.length];



            for (int i=0; i<value.length; i++){
                names[i] =  value[i].toString();
                number_of_attribute[i] = postgis.number_of_attribute(value[i],NT);
                Number_of_Values[i] = postgis.Number_of_Values(value[i],key1,NT);
            }



            model.addAttribute("names", names);
            model.addAttribute("number", number_of_attribute);
            model.addAttribute("Number_of_Values", Number_of_Values);




       return "/statistic";
           // return "redirect:/";

    }




    @RequestMapping(method = RequestMethod.GET, path = "/")
    public String viewSchema() {
        return "/index";
    }


    @RequestMapping(method = RequestMethod.GET, path = "/index")
    public String viewSchema3() {
        return "/index";
    }

    @RequestMapping(method = RequestMethod.GET, path = "/about")
    public String viewSchema4() {
        return "/about";
    }

    @RequestMapping(method = RequestMethod.GET, path = "/map")
    public String viewSchema8() {
        return "/map";
    }






    @RequestMapping(method = RequestMethod.GET, path = "/statistic")
        public String viewSchema5(Model model) {



            return "/statistic";
        }



// this is creating view in page map

    @RequestMapping(method = RequestMethod.POST, path = "/createView")

    public String createObject(Model model,
                               @RequestParam("NameOfView") String NameOfView,
                               @RequestParam("NameOfTable") String NameOfTable,
                               @RequestParam("NameOfKey") String NameOfKey,
                               @RequestParam("NameOfValue") String NameOfValue,
                               @RequestParam("NameOfTag") String NameOfTag,
                               @RequestParam("LimitNumber") String LimitNumber)
            throws IOException, SQLException {



        PostGisConnection postgis = new PostGisConnection();


        String geojsonview;
        String geojsontext;

        geojsonview = postgis.geojsonview(NameOfView,NameOfTable,NameOfKey,NameOfValue,NameOfTag,LimitNumber);
        model.addAttribute("CreateGeojson", geojsonview);


        geojsontext=postgis.geojsontext(NameOfView);
        model.addAttribute("GeoJsonText", geojsontext);
        model.addAttribute("Name", NameOfTag);

        return "/map";

    }


}
