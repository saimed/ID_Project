<%@ Page Language="C#" Inherits="TestASPForms.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
    <div class="jumbotron text-center">
         <h1>Welcome to Detur</h1>
         <p>Find resources efficiently!</p> 
    </div>


    <div class="container">
        <div class="row">
        <div class="col-sm-4">
                
        </div>
        <div class="col-sm-4">
                    <div class="input-group">
                        <input id="searchText" type="text" class="form-control" placeholder="Group study room...">
                        <div class="input-group-btn">
                            <button id="search" class="btn btn-default" type="submit">
                                 <i class="glyphicon glyphicon-search"></i>
                            </button>
                        </div>
                    </div>
                     </div>
        </div>
        <div class="row">
                <div class="col-sm-4">
                    <h3>Column 1</h3>
                    <p>Test</p>
                     <div id="demo">
                        <p>The XMLHttpRequest Object</p>
                        <button ID="button" type="button" >Change Content</button>
                      </div>
                </div>

                <div class="col-sm-4">
                    <h3>Column 2</h3>
                </div>

                <div class="col-sm-4">
                    <h3>Column 3</h3> 
                    <p>Test</p>
                    <p>Test</p>
                    <Label ID="myLabel" runat="server" Text="Label"></Label>      
                </div>
        </div>
    </div>

</body>
</html>

<script>

<!--//using jquery-->
   $("#search").click(function(){
      var searchInput= $("#searchText").val();
     
        localStorage.setItem("storageName","tesr");
     $("#myLabel1").text("some value");
     window.location = "ResultsSearch.aspx";
    });
});
    


<!--//Option 2:using/testing AJAX directly, JQuery easier-->
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
      this.responseText;
    
    }
  };
  xhttp.open("GET", "test.txt", true);
  xhttp.send();
}
    
$(document).ready(function(){
    $("#button").click(function(){
    localStorage.setItem("storageName","tesr");
       $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "ResultsSearch.aspx",
        dataType: "json",
       data: "{'id':'myvalue'}", // or the string: 'id=1'
        complete:
        function () {
            window.location = "ResultsSearch.aspx";
        }

});
    
    });
});    

</script>