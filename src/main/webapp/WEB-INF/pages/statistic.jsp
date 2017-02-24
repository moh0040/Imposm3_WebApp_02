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
    <style>
        h4 a:hover {
            color: blue;
            font-weight:bold;
        }
    </style>


</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">My Project</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li ><a href="/index"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp; Home</a></li>
                        <li class="active"><a href="/statistic"><i class="fa fa-pie-chart" aria-hidden="true"></i>&nbsp;Statistics</a></li>
                        <li ><a href="/map"><i class="fa fa-map" aria-hidden="true"></i>&nbsp;Map</a></li>
                        <li ><a href="/about"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;About</a></li>
                    </ul>
                </div>
            </nav>
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
                                    Collapsible Group 1</a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>Items</th>
                                        <th>Values</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>Schema</td>
                                        <td>${S}</td>
                                    </tr>
                                    <tr>
                                        <td>Table</td>
                                        <td>${T}</td>
                                    </tr>
                                    <tr>
                                        <td>Number Of Column</td>
                                        <td>${NC}</td>
                                    </tr>
                                    <tr>
                                        <td>Number Of Rows</td>
                                        <td>${NR}</td>
                                    </tr>
                                    <tr>
                                        <td>Geometry Type</td>
                                        <td>${GT}</td>
                                    </tr>
                                    <tr>
                                        <td>Size Of Data</td>
                                        <td>${SD}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a style="text-decoration: none" data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                                    Collapsible Group 2</a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>Key Selected</th>
                                        <th>Number Of Values</th>
                                        <th>Deprecated Tags</th>
                                        <th>Name_of_column</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <c:forEach items="${names}" var="name">
                                                <p>${name}</p>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <c:forEach items="${Number_of_Values}" var="NameofValue">
                                                <p>${NameofValue}</p>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <c:forEach items="${number}" var="notag">
                                                <p>${notag}</p>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <c:forEach items="${Name_of_column}" var="Name_of_column">
                                                <p>${Name_of_column}</p>
                                            </c:forEach>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
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
