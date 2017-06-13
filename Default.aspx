<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Usuario</title>
</head>
<script src="Scripts/jquery.js"></script>

<body>
<div class="container">
<div class="row">
<div class="col-md-8">
<div class="panel-heading">
<h3> Registre su cuenta </h3>

</div>
<form role="form">
<!--Nombre -->
<div class="row">

		<!--Id cliente -->
<div class = "col-sm-5">
	<div class= "form-group">
		<input type="text" name="Idcliente" id="Idcliente" class="form-control input-sm" placeholder="IdCliente" required>
	</div>
</div>

<div class = "col-sm-5">
	<div class= "form-group">
		<input type="text" name="name" id="name" class="form-control input-sm" placeholder="Nombre" required>
	</div>
</div>

<!--Apellido -->
<div class = "col-sm-5">
	<div class= "form-group">
		<input type="text" name="apellido" id="apellido" class="form-control input-sm" placeholder="Apellido" required>
	</div>
</div>




<!--Email-->
<div class="col-sm-10">
		<div class= "form-group">
	<input type="email" name="email" class="form-control input-sm" placeholder="email" required>
</div>
</div>

<!--Telefono --> 
		<div class="col-sm-5">
		<div class= "form-group">
	<input type="text" name="telefono" class="form-control input-sm" placeholder="Teléfono" required>
</div>
</div>


<div class="col-sm-10">
		<div class= "form-group">
<input type="submit" value="Registrar cuenta" class="btn btn-primary btn-block">

</div>
</div>
</div>

</form>

</div>

</div>

</div> 
<script>
test();
function test() {

$.ajax({
    type: "POST",
    contentType: "application/json; charset=utf-8",
    Authorization: "Bearer 00D390000003QaU!ARwAQBCVEUD8SmytjI0l06mTVnj64kXrAva19su4DCWHlBFmyiwF6bhOps1ZyuZt0SDbiqSWoATOw341VjkUksCx6D1X.Hlj",
    curl: "https://quanticsprogfidelidadtest.my.salesforce.com" + "/services/apexrest/Contacto",
    dataType: "json",
    data: "{IdCliente__c: '123456789',FirstName: 'Sara', LastName: 'Lucia', Phone:'1234555', Email:'sara@correo.com'}",
    success: function (responseData, status, xhr) {
        console.log(responseData);
    },
    error: function (request, status, error) {
        console.log(request.responseText);
    }
});
}
</script>
</body>

</html> 
</asp:Content>
