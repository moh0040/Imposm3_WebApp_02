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
</head>
<body>
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
                            <li ><a href="/map"><i class="fa fa-map" aria-hidden="true"></i>&nbsp;Map</a></li>
                            <li class="active" ><a href="/about"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;About</a></li>
                        </ul>
                    </div>
                </nav>
            <div>
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
                                <i class="fa fa-info" aria-hidden="true"></i>&nbsp;
                                     Application Stracture</a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <img src="resources/pic/structure.png" alt="structure" style="width:1000px;height:700px;">
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a style="text-decoration: none" data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                                <i class="fa fa-info" aria-hidden="true"></i>&nbsp;
                                Data Model</a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <img src="resources/pic/imposm3.png" alt="structure" style="width:1000px;height:700px;">
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a style="text-decoration: none" data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                                <i class="fa fa-info" aria-hidden="true"></i>&nbsp;
                                 Geojson File</a>
                            </h4>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse">
                            <div class="panel-body">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>