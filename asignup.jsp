<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<img src="aeroplanelogo1.jpg" style="margin-left: 38%;margin-top: 1.3%">

<html >
    <!-- <body style="margin-left: 40%" ></body> -->
    <div class="w3-top">
            <div class="w3-bar w3-light-green">
              <a href="ahome.jsp" class="w3-bar-item w3-button" >Home</a>
              <a href="alogin.jsp" class="w3-bar-item w3-button">Login</a>
              <a href="asignup.jsp" class="w3-bar-item w3-button">Sign up</a>
              <a href="profile.jsp" class="w3-bar-item w3-button">Profile</a>
              <form action="Logout" >
				<input type="Submit" value="Logout" class="w3-bar-item w3-button" >
			  </form>
            </div>
    </div>
    <br><br><br><BR>
        <head>
      <style>
        
        .a2{
          padding : .7% ;
          font-size: 20px ;
          border-radius : 20px ;
          text-decoration: none;
          border: 1px solid black;
          background-color : #FCA ;
          margin-top : 1% ;
          margin-left : 41% ;
        }
        .a2:hover {
            background-color :rgb(255, 184, 255) ;
        }
      </style>
    </head>
    
	<form action="Signupp" method="post" >
    <fieldset style="margin-right: 38%;margin-left:35%;border-radius: 7px;margin-top:0%;background-color: #ADD8EA; height: 430px;">
       <b> <font style="font-size: 30px;margin-left: 10% ">Create Account</font></b><br><br> 
       
    
        <font  style="font-size: 14px bold;margin-left: 10%; margin-top:-3%"  >uname</font><br>
        <input type="text" id="r1" style="margin-left: 10%;border-radius: 4px; padding: 7px 40px;border-color: yellow;font-size: 16px;" name="uname" ><br><br>
        <font  style="font-size: 14px bold;margin-left: 10% ">Mobile number</font><br>
        <input type="tel" id="r2" style="border-radius: 4px;margin-left: 10%; padding: 7px 40px;border-color: yellow;font-size: 16px;" name="mob" ><br><br>
        <font  style="font-size: 14px bold;margin-left: 10%">Email(optional)</font><br>
        <input type="email" id="r3" style="border-radius: 4px;margin-left: 10%; padding: 7px 40px;border-color: yellow;font-size: 16px;" name="email" ><br><br>
        
        
             <font  style="font-size: 14px bold ;margin-left: 10%">Password</font><br>
        <input type="password" id="r4" style="border-radius: 4px; padding: 7px 40px;border-color: yellow;font-size: 16px;margin-left: 10%" name="pass" ><br> 
    
        
    </fieldset><br>

	<input type="submit" value="         Continue         "  class="a2" > 
	
	</form>
	
<script>
$("input , select , textarea").each(function(){
	var attr = $(this).attr('uname');
	$.post("GetData",{field: attr},function(data , status){
		$("[name ='" +attr+"']").val(data);
	});
});       
	$("input , textarea ,select ").on('blur',function(){
   var field = $(this).attr('uname');
   var value = $(this).val();
    $.post("Register",{
        field: field,
        value: value
    },
    function(data , status){
        console.log(data);
    });
}); 
</script>

</script>
</html>