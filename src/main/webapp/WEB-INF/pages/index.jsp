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
	<script src="resources/javascript/value.js"></script>
	<script src="resources/javascript/loadding.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/style/styleIn.css" />
</head>
<body>
<form id = "selection" action="/createObject" method="POST" onSubmit="if(!confirm('are you sure?')){return false;}" >
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
                                <li class="active"><a href="/index"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp; Home</a></li>
                                <li ><a href="/statistic"><i class="fa fa-pie-chart" aria-hidden="true"></i>&nbsp;Statistics</a></li>
                                <li ><a href="/map"><i class="fa fa-map" aria-hidden="true"></i>&nbsp;Map</a></li>
                                <li ><a href="/about"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;About</a></li>
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
									<a style="text-decoration: none" data-toggle="collapse" data-parent="#accordion" href="#collapse0"><i class="fa fa-server" aria-hidden="true"></i>&nbsp;Data config</a>
								</h4>
							</div>
							<div id="collapse0" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="row">
										<h4 style="text-align: center;">Data Location</h4><hr>
										<div class="col-md-6">
											<div class="input-group">
                                            	<span class="input-group-addon"><i class="fa fa-map-marker" aria-hidden="true"></i> Data source</span>
                                            	<select class="form-control" id="city" name="city">
                                            		<option>Prague</option>
                                            		<option>Brno</option>
                                            		<option>Ostrava</option>
                                            		<option>Plzen</option>
                                            		<option>Olomouc</option>
                                            		<option>Pardubice</option>
                                            		<option>Ceskebudejovice</option>
                                            	</select>
                                            </div><br/>
											<div class="input-group">
                                            	<span class="input-group-addon"><i class="fa fa-sitemap" aria-hidden="true"></i>&nbsp;Json </span>
                                            	<input name="jsondir" id="jsondir" type="text" class="form-control" placeholder="Json dir" >
                                            </div>
										</div>
										<div class="col-md-6">
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-globe" aria-hidden="true"></i>&nbsp;Geometry</span>
												<select class="form-control" name="geometry">
													<option >point</option>
													<option >linestring</option>
													<option >polygon</option>
												</select>
											</div><br/>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-table" aria-hidden="true"></i>&nbsp;Table</span>
												<input name="Ntable" type="text" class="form-control" placeholder="Type Name of Table">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a style="text-decoration: none" data-toggle="collapse" data-parent="#accordion" href="#collapse2"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Key and value</a>
								</h4>
							</div>
							<div id="collapse2" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-6">
											<div class="input-group">
												<span class="input-group-addon">Important Key Features</span>
												<select  size=7 class="form-control" id="key" name="key" onchange="populate(this.id, 'slct2')">
													<option value="aerialway">aerialway</option>
													<option value="aeroway">aeroway</option>
													<option value="amenity">amenity</option>
													<option value="barrier">barrier</option>
													<option value="building">building</option>
													<option value="geological">geological</option>
													<option value="highway">highway</option>
													<option value="historic">historic</option>
													<option value="information">information</option>
													<option value="junction">junction</option>
													<option value="landuse">landuse</option>
													<option value="leisure">leisure</option>
													<option value="man_made">man_made</option>
													<option value="mountain_pass">mountain_pass</option>
													<option value="natural">natural</option>
													<option value="place">place</option>
													<option value="power">power</option>
													<option value="railway">railway</option>
													<option value="route">route</option>
													<option value="segregated">segregated</option>
													<option value="service">service</option>
													<option value="shop">shop</option>
													<option value="sport">sport</option>
													<option value="tourism">tourism</option>
													<option value="tunnel">tunnel</option>
													<option value="traffic_sign">traffic_sign</option>
													<option value="vending">vending</option>
													<option value="waterway">waterway</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<h5 style="text-align: center; margin-top: 0px;">Values used with this key</h5><hr>
											<div id="slct2">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a style="text-decoration: none" data-toggle="collapse" data-parent="#accordion" href="#collapse3"><i class="fa fa-database" aria-hidden="true"></i>&nbsp;PostgreSQL/PostGIS</a>
								</h4>
							</div>
							<div id="collapse3" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="row"><h4 style="text-align: center;">Database Connection</h4><hr>
										<div class="col-md-6">
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-internet-explorer" aria-hidden="true"></i></span>
												<input id="host" type="text" class="form-control" name="host" placeholder="Host" >
											</div>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-database" aria-hidden="true"></i></span>
												<input id="database" type="text" class="form-control" name="database" placeholder="Database" >
											</div>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
												<input id="user" type="text" class="form-control" name="user" placeholder="Username" >
											</div>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
												<input id="password" type="password" class="form-control" name="password" placeholder="Password">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-table" aria-hidden="true"></i>&nbsp;Schema:</span>
													<input id="schema" type="text" class="form-control" placeholder="Public" disabled="">
												</div>
											</div>
											<div class="form-group">
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-sitemap" aria-hidden="true"></i>&nbsp;Cach Dir:</span>
													<input name="cachedir" id="cachedir" type="text" class="form-control" placeholder="Cach dir"  >
												</div>
											</div>
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-asterisk" aria-hidden="true"></i>State</span>
												<select class="form-control" id="state" name="state">
													<option value="-overwritecache">Overwrite</option>
													<option value="-appendcache">Append</option>
												</select>
											</div>
										</div>
									</div>
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
	</div>
</form>
</body>
</html>
