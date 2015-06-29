<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Form</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<h3>supported form control</h3><br>
	<form class="form-horizontal">
		<div class="form-group">
			<label class="control-label col-xs-3" for="email">email</label>
			<div class="col-xs-9">
				<input type="email" class="form-control" id="email" placeholder="email">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-3" for="password">password</label>
			<div class="col-xs-9">
				<input type="password" class="form-control" id="password" placeholder="password">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-3" for="text">text</label>
			<div class="col-xs-9">
				<input type="text" class="form-control" id="text" placeholder="text">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-3" for="tel">tel</label>
			<div class="col-xs-9">
				<input type="tel" class="form-control" id="tel" placeholder="tel">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-3" for="select">select</label>
			<div class="col-xs-9">
				<select class="form-control" id="select">
					<option>select</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-3" for="textarea">textarea</label>
			<div class="col-xs-9">
				<textarea rows="3" class="form-control" id="textarea" placeholder="textarea"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-xs-3">radio</label>
			<div class="col-xs-2">
				<label class="radio-inline"> 
					<input type="radio" name="radio" value="radio1"> radio 1
				</label>
			</div>
			<div class="col-xs-2">
				<label class="radio-inline"> 
					<input type="radio" name="radio" value="radio2"> radio 2
				</label>
			</div>
		</div>
		<div class="form-group">
			<div class="col-xs-offset-3 col-xs-9">
				<label class="checkbox-inline"> 
					<input type="checkbox" value="checkbox1"> checkbox 1
				</label>
			</div>
		</div>
		<div class="form-group">
			<div class="col-xs-offset-3 col-xs-9">
				<label class="checkbox-inline"> 
					<input type="checkbox" value="checkbox2"> checkbox 2
				</label>
			</div>
		</div>
		<br>
		<div class="form-group">
			<div class="col-xs-offset-3 col-xs-9">
				<input type="submit" class="btn btn-default" value="submit">
				<input type="reset" class="btn btn-default" value="reset">
			</div>
		</div>
	</form>
	<hr>
	<h3>vertical form</h3><br>
	<form>
		<div class="form-group">
			<label for="email">email</label> 
			<input type="email" class="form-control" id="email" placeholder="email">
		</div>
		<div class="form-group">
			<label for="password">password</label> 
			<input type="password" class="form-control" id="password" placeholder="password">
		</div>
		<div class="form-group">
			<label for="select">select</label> 
			<select id="select" class="form-control">
				<option>select</option>
			</select>
		</div>
		<div class="checkbox">
			<label><input type="checkbox"> checkbox</label>
		</div>
		<button type="submit" class="btn btn-default">submit</button>
	</form>
	<hr>
	<form>
		<div class="form-group">
			<label for="email">email</label> 
			<input type="email" class="form-control" id="email" placeholder="email" style="width: 20%;">
		</div>
		<div class="form-group">
			<label for="password">password</label> 
			<input type="password" class="form-control" id="password" placeholder="password" style="width: 20%;">
		</div>
		<div class="form-group">
			<label for="select">select</label> 
			<select id="select" class="form-control" style="width: 20%;">
				<option>select</option>
			</select>
		</div>
	</form>
	<hr>
	<h3>horizontal form</h3><br>
	<form class="form-horizontal">
		<div class="form-group">
			<label for="email" class="control-label col-xs-2">email</label>
			<div class="col-xs-4">
				<input type="email" class="form-control" id="email" placeholder="email">
			</div>
		</div>
		<div class="form-group">
			<label for="password" class="control-label col-xs-2">password</label>
			<div class="col-xs-4">
				<input type="password" class="form-control" id="password" placeholder="password">
			</div>
		</div>
		<div class="form-group">
			<label for="select" class="control-label col-xs-2">select</label> 
			<div class="col-xs-4">
				<select id="select" class="form-control">
					<option>select</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<div class="col-xs-offset-2 col-xs-10">
				<div class="checkbox">
					<label><input type="checkbox"> checkbox</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-xs-offset-2 col-xs-10">
				<button type="submit" class="btn btn-default">submit</button>
			</div>
		</div>
	</form>
	<hr>
	<h3>inline form</h3><br>
	<form class="form-inline" role="form">
		<div class="form-group">
			<label class="sr-only" for="email">email</label>
			<input type="email" class="form-control" id="email" placeholder="email">
		</div>
		<div class="form-group">
			<label class="sr-only" for="password">password</label> 
			<input type="password" class="form-control" id="password" placeholder="password">
		</div>
		<div class="form-group">
			<label class="sr-only" for="select">select</label> 
			<select id="select" class="form-control">
				<option>select</option>
			</select>
		</div>
		<div class="checkbox">
			<label><input type="checkbox"> checkbox</label>
		</div>
		<button type="submit" class="btn btn-default">submit</button>
	</form>
	<hr>
	<h3>inline form</h3><br>
	<form class="form-horizontal">
		<div class="form-group">
			<label for="email" class="control-label col-xs-2">email</label>
			<div class="col-xs-4">
				<p class="form-control-static">thank.hsiehpinghan@gmail.com</p>
			</div>
		</div>
		<div class="form-group">
			<label for="password" class="control-label col-xs-2">password</label>
			<div class="col-xs-4">
				<input type="password" class="form-control" id="password" placeholder="password">
			</div>
		</div>
		<div class="form-group">
			<div class="col-xs-offset-2 col-xs-10">
				<div class="checkbox">
					<label><input type="checkbox"> checkbox</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-xs-offset-2 col-xs-10">
				<button type="submit" class="btn btn-default">submit</button>
			</div>
		</div>
	</form>
	<hr>
	<h3>input size</h3><br>
	<form>
		<div class="row">
			<div class="col-xs-6">
				<input type="text" class="form-control input-lg" placeholder="input-lg">
			</div>
			<div class="col-xs-6">
				<select class="form-control input-lg">
					<option>input-lg</option>
				</select>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-6">
				<input type="text" class="form-control" placeholder="default">
			</div>
			<div class="col-xs-6">
				<select class="form-control">
					<option>default</option>
				</select>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-6">
				<input type="text" class="form-control input-sm" placeholder="input-sm">
			</div>
			<div class="col-xs-6">
				<select class="form-control input-sm">
					<option>input-sm</option>
				</select>
			</div>
		</div>
	</form>
	<hr>
	<form>
		<div class="row">
			<div class="col-xs-3">
				<input type="text" class="form-control">
			</div>
			<div class="col-xs-4">
				<input type="text" class="form-control">
			</div>
			<div class="col-xs-5">
				<input type="text" class="form-control">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-3">
				<textarea class="form-control"></textarea>
			</div>
			<div class="col-xs-4">
				<textarea class="form-control"></textarea>
			</div>
			<div class="col-xs-5">
				<textarea class="form-control"></textarea>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-3">
				<select class="form-control">
					<option>select</option>
				</select>
			</div>
			<div class="col-xs-4">
				<select class="form-control">
					<option>select</option>
				</select>
			</div>
			<div class="col-xs-5">
				<select class="form-control">
					<option>select</option>
				</select>
			</div>
		</div>
	</form>
	<h3>addon</h3><br>
	<a href="../inputGroup/index">with input group</a>	
	<hr>
	<h3>input group size</h3><br>
	<form>
		<div class="row">
			<div class="col-xs-4">
				<div class="input-group input-group-lg">
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</span> 
					<input type="text" class="form-control">
				</div>
			</div>
			<div class="col-xs-4">
				<div class="input-group input-group-lg">
					<span class="input-group-addon"> 
						<input type="checkbox">
					</span> 
					<input type="text" class="form-control">
				</div>
			</div>
			<div class="col-xs-4">
				<div class="input-group input-group-lg">
					<div class="input-group-btn">
						<button tabindex="-1" class="btn btn-default" type="button">Action</button>
						<button tabindex="-1" data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button">
							<span class="caret"></span> 
							<span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">item 1</a></li>
							<li><a href="#">item 2</a></li>
							<li class="divider"></li>
							<li><a href="#">item 3</a></li>
						</ul>
					</div>
					<input type="text" class="form-control">
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-4">
				<div class="input-group">
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</span> 
					<input type="text" class="form-control">
				</div>
			</div>
			<div class="col-xs-4">
				<div class="input-group">
					<span class="input-group-addon"> 
						<input type="checkbox">
					</span> 
					<input type="text" class="form-control">
				</div>
			</div>
			<div class="col-xs-4">
				<div class="input-group">
					<div class="input-group-btn">
						<button tabindex="-1" class="btn btn-default" type="button">Action</button>
						<button tabindex="-1" data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button">
							<span class="caret"></span> 
							<span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">item 1</a></li>
							<li><a href="#">item 2</a></li>
							<li class="divider"></li>
							<li><a href="#">item 3</a></li>
						</ul>
					</div>
					<input type="text" class="form-control">
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-4">
				<div class="input-group input-group-sm">
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>
					</span> 
					<input type="text" class="form-control">
				</div>
			</div>
			<div class="col-xs-4">
				<div class="input-group input-group-sm">
					<span class="input-group-addon"> 
						<input type="checkbox">
					</span> 
					<input type="text" class="form-control">
				</div>
			</div>
			<div class="col-xs-4">
				<div class="input-group input-group-sm">
					<div class="input-group-btn">
						<button tabindex="-1" class="btn btn-default" type="button">Action</button>
						<button tabindex="-1" data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button">
							<span class="caret"></span> 
							<span class="sr-only">Toggle Dropdown</span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">item 1</a></li>
							<li><a href="#">item 2</a></li>
							<li class="divider"></li>
							<li><a href="#">item 3</a></li>
						</ul>
					</div>
					<input type="text" class="form-control">
				</div>
			</div>
		</div>
		<br>
	</form>
	<hr>
	<h3>disable and readonly</h3><br>
	<form>
		<input type="text" class="form-control" placeholder="disabled" disabled="disabled"> 
		<br>
		<input type="text" class="form-control" placeholder="readonly" readonly="readonly">
	</form>
	<hr>
	<h3>disable fieldset</h3><br>
	<form>
		<fieldset disabled="disabled">
			<div class="form-group">
				<label for="email">email</label> 
				<input type="email" class="form-control" id="email" placeholder="email">
			</div>
			<div class="form-group">
				<label for="password">password</label> 
				<input type="password" class="form-control" id="password" placeholder="password">
			</div>
			<div class="form-group">
				<label for="select">select</label> 
				<select id="select" class="form-control">
					<option>select</option>
				</select>
			</div>
			<div class="checkbox">
				<label><input type="checkbox"> checkbox</label>
			</div>
			<button type="submit" class="btn btn-default">submit</button>
		</fieldset>
	</form>
	<hr>
	<h3>help text</h3><br>
	<form>
		<input type="text" class="form-control">
		<span class="help-block">help text.</span>
	</form>
	<hr>
	<h3>validate status</h3><br>
	<form class="form-horizontal">
		<div class="form-group has-success">
			<label class="col-xs-2 control-label" for="inputSuccess">inputSuccess</label>
			<div class="col-xs-10">
				<input type="text" id="inputSuccess" class="form-control" placeholder="inputSuccess"> 
				<span class="help-block">inputSuccess</span>
			</div>
		</div>
		<div class="form-group has-warning">
			<label class="col-xs-2 control-label" for="inputWarning">inputWarning</label>
			<div class="col-xs-10">
				<input type="password" id="inputWarning" class="form-control" placeholder="inputWarning">
				<span class="help-block">inputWarning</span>
			</div>
		</div>
		<div class="form-group has-error">
			<label class="col-xs-2 control-label" for="inputError">inputError</label>
			<div class="col-xs-10">
				<input type="email" id="inputError" class="form-control" placeholder="inputError"> 
				<span class="help-block">inputError</span>
			</div>
		</div>
	</form>
	<hr>
	<form class="form-horizontal">
		<div class="form-group has-success has-feedback">
			<label class="col-xs-2 control-label" for="inputSuccess">inputSuccess</label>
			<div class="col-xs-10">
				<input type="text" id="inputSuccess" class="form-control" placeholder="inputSuccess"> 
				<span class="glyphicon glyphicon-ok form-control-feedback"></span>
				<span class="help-block">inputSuccess</span>
			</div>
		</div>
		<div class="form-group has-warning has-feedback">
			<label class="col-xs-2 control-label" for="inputWarning">inputWarning</label>
			<div class="col-xs-10">
				<input type="password" id="inputWarning" class="form-control" placeholder="inputWarning">
				<span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
				<span class="help-block">inputWarning</span>
			</div>
		</div>
		<div class="form-group has-error has-feedback">
			<label class="col-xs-2 control-label" for="inputError">inputError</label>
			<div class="col-xs-10">
				<input type="email" id="inputError" class="form-control" placeholder="inputError"> 
				<span class="glyphicon glyphicon-remove form-control-feedback"></span>
				<span class="help-block">inputError</span>
			</div>
		</div>
	</form>
</body>
</html>