<%@ Page Language="C#" Inherits="TestASPForms.ResultsSearch" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>ResultsSearch</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<button ID="search2" type="button" >Change Content</button>
        <p> test </p>
        <Label ID="myLabel2" runat="server" Text="Label"></Label>   
</body>
</html>

    <script>
        $(document).ready(function(){
          $("#search2").click(function(){
       $("#myLabel2").text(localStorage.getItem("storageName"));
    });
});
            </script>


