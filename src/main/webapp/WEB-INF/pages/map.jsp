<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="resources/style/style.css" />
    <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
    <script src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
    <style>
        h4 a:hover {
            color: blue;
            font-weight:bold;
        }
    </style>
</head>
<body>
<form id = "selection2" action="/createView" method="post" onSubmit="if(!confirm('are you sure?')){return false;}" >
    <div class="container-fluid">
        <div class="row">
        	<div class="col-md-12">
        	    <div class="container">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <a class="navbar-brand" href="#">My Project</a>
                            </div>
                            <ul class="nav navbar-nav">
                            <li ><a href="/index"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp; Home</a></li>
                            <li ><a href="/statistic"><i class="fa fa-pie-chart" aria-hidden="true"></i>&nbsp;Statistics</a></li>
                            <li class="active"><a href="/map"><i class="fa fa-map" aria-hidden="true"></i>&nbsp;Map</a></li>
                            <li ><a href="/about"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;About</a></li>
                            </ul>
                        </div>
                    </nav>
        		</div>
        	</div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="container">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a style="text-decoration: none" data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                                    <i class="fa fa-map-pin" aria-hidden="true"></i>&nbsp;
                                     Map configuration</a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;View Name</span>
                                                    <input name="NameOfView" id="NameOfView" type="text" class="form-control" placeholder="Type Name Of View" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;Table Name</span>
                                                    <input name="NameOfTable" id="NameOfTable" type="text" class="form-control" placeholder="Type Name Of Table" >
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;Key</span>
                                                    <input name="NameOfKey" id="NameOfKey" type="text" class="form-control" placeholder="Type Name Of Key Feature" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;Value</span>
                                                    <input name="NameOfValue" id="NameOfValue" type="text" class="form-control" placeholder="Type Name Of Value" >
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;Filter Tag</span>
                                                    <input name="NameOfTag" id="NameOfTag" type="text" class="form-control" placeholder="Type Key Tag For Filter" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;Limit data</span>
                                                    <input name="LimitNumber" id="LimitNumber" type="text" class="form-control" placeholder="Type Number Of Data" >
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                    	<div class="col-sm-5" ></div>
                                    	<div class="col-sm-2" >
                                    		<img  src="https://media.giphy.com/media/sSgvbe1m3n93G/giphy.gif" id="animated-gif" style="display:none; width: 100%;"/>
                                    		<button style="width: 100%" type="submit" class="btn btn-default">Submit</button></div>
                                    	<div class="col-sm-5" ></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a style="text-decoration: none" data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                                    <i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp;
                                     GeoJSON</a>
                                </h4>
                            </div>
                            <div id="collapse2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <div class="panel-body" style="height: 150px; overflow: scroll">${GeoJsonText}</div>
                                </div>
                            </div>
                        </div>
                        <div style="color: darkgreen;text-align: center">${CreateGeojson}</div>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div id="map" style="height: 500px;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<%--scrip for map--%>
<script>
    var map = L.map('map', {scrollWheelZoom:true}).setView([49.828985, 18.239371], 12);

    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {maxZoom: 20,
        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, ' +
        '<a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
        'Imagery © <a href="http://mapbox.com">Mapbox</a>',
        id: 'mapbox.streets'
    }).addTo(map);
</script>
<script>
    var layerGroup = L.geoJson(${GeoJsonText}, {
        onEachFeature: function (feature, layer) {
            layer.bindPopup('<p> Osm_id: '+feature.properties.f1+'</p><p>${Name}: '+feature.properties.f2+'</p>');
        }
    }).addTo(map);

</script>
</body>
</html>
