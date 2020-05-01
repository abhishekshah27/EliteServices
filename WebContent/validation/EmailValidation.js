var request;  
function sendSPInfo()  
{  
var v=document.spform.email.value;  
var url="AjaxSPEmail?val="+v;  

if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try  
{  
request.onreadystatechange=getSPInfo;  
request.open("GET",url,true);  
request.send();  
}  
catch(e)  
{  
alert("Unable to connect to server");  
}  
}  
  
function getSPInfo(){  
if(request.readyState==4){  
var val=request.responseText;
document.getElementById('abhishek1').innerHTML=val;
if(val=="Not Available")
	{
		
		document.spform.email.focus();
		return false;
	}
}  
}  
