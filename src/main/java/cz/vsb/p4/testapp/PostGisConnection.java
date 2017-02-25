package cz.vsb.p4.testapp;

import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by s on 11/6/2016.
 */
public class PostGisConnection {

    public String geojsonfile;

    //osm is database name
    String url = "jdbc:postgresql://127.0.0.1:5432/osm";
    String user = "postgres";
    String passwd = "saeed";

    public int getNumcolumn() {
        return Numcolumn;
    }

    public void setNumcolumn(int numcolumn) {
        Numcolumn = numcolumn;
    }

    public int getNumrows() {
        return Numrows;
    }

    public void setNumrows(int numrows) {
        Numrows = numrows;
    }

    public int Numcolumn,Numrows;


    public String getTable() {
        return table;
    }

    public void setTable(String table) {
        this.table = table;
    }

    public  String table;

    public List<String> getGeomlist() {
        return geomlist;
    }

    public void setGeomlist(List<String> geomlist) {
        this.geomlist = geomlist;
    }

    public List<String> geomlist;

    public String getGeojsontable() {
        return geojsontable;
    }

    public void setGeojsontable(String geojsontable) {
        this.geojsontable = geojsontable;
    }

    public String geojsontable;







    public String number_of_attribute(String point,String NT) throws IOException, SQLException {
            Connection connection = DriverManager.getConnection(url, user, passwd);
            Statement s12 = connection.createStatement();
        ResultSet r12 = s12.executeQuery("SELECT count(*)AS geometry FROM "+NT+" where tags ? '"+ point +"'");
        String count112;
        if(r12.next()) {
            count112 = r12.getString("geometry");
        } else {
            count112 = "no results";
        }
            r12.close();
            return count112;
    }








    public String Number_of_Values(String point,String key1,String NT) throws IOException, SQLException {
        Connection connection = DriverManager.getConnection(url, user, passwd);
        Statement s1 = connection.createStatement();
        ResultSet r1 = s1.executeQuery("SELECT count(*)AS geometry FROM "+NT+" where tags @> '"+key1 +"=>"+point+"'");
        String count11;
        if(r1.next()) {
            count11 = r1.getString("geometry");
        } else {
            count11 = "no results";
        }
        r1.close();
        return count11;
    }




    public int NumberOfColums(String NT){
        try{

            Connection connection = DriverManager.getConnection(url, user, passwd);
            PreparedStatement ps=connection.prepareStatement("select * from "+NT+"");
            ResultSet rs=ps.executeQuery();
            ResultSetMetaData rsmd=rs.getMetaData();
            int count5 =rsmd.getColumnCount();
            this.setNumcolumn(count5);
            return Numcolumn;
        }catch (SQLException e){
            System.out.println("connection failed! check output console");
            e.printStackTrace();
            return Numcolumn;
        }
    }



    public int NumberOfRows(String NT){
        try{

            Connection connection = DriverManager.getConnection(url, user, passwd);
            Statement ss = connection.createStatement();
            ResultSet rr = ss.executeQuery("SELECT COUNT(*) AS rowcount FROM "+NT+"");
            rr.next();
            int count6 = rr.getInt("rowcount");
            rr.close();
            this.setNumrows(count6);
            return Numrows;
        }catch (SQLException e){
            System.out.println("connection failed! check output console");
            e.printStackTrace();
            return Numrows;
        }
    }










    //create view geojson
    public String geojsonview(String NameOfView, String NameOfTable,String NameOfKey, String NameOfValue, String NameOfTag, String LimitNumber) throws IOException, SQLException {
        Connection connection = DriverManager.getConnection(url, user, passwd);
        Statement s12 = connection.createStatement();
        int r12 = s12.executeUpdate("DROP VIEW IF EXISTS "+NameOfView+"_geojson; DROP VIEW IF EXISTS "+NameOfView+"; CREATE VIEW "+ NameOfView +" AS select id, tags->'"+NameOfTag+"' :: text as "+NameOfTag+", geometry from "+NameOfTable+" where tags @> '"+NameOfKey+"=>"+NameOfValue+"' :: hstore limit "+LimitNumber+"; CREATE VIEW "+NameOfView+"_geojson AS SELECT row_to_json(fc) AS geojson FROM (SELECT 'FeatureCollection' As type, array_to_json(array_agg(f)) As features FROM (SELECT 'Feature' As type, ST_AsGeoJSON((ST_Transform(lg.geometry, 4326)))::json As geometry, row_to_json((id,"+NameOfTag+")) As properties FROM "+ NameOfView +" As lg) As f ) As fc;");
        String count888="View '"+NameOfView+"_geojson' is successfully created into PostgreSQL";
        return count888;
    }





    //extract geojson
    public String geojsontext(String NameOfView) throws IOException, SQLException {
        Connection connection = DriverManager.getConnection(url, user, passwd);
        Statement s12 = connection.createStatement();
        ResultSet rr = s12.executeQuery("select geojson from "+NameOfView+"_geojson");
        rr.next();
        String count80 = rr.getString("geojson");
        rr.close();
        return count80;
    }























}
