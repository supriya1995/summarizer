function formValidation()  
{  
var fname = document.registration.fn.value;  
var lname = document.registration.ln.value;   
var uemail = document.registration.email.value;  
var passid = document.registration.password.value;  
var cpassid = document.registration.cname.value;
 var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/; 
 var letters = /^[A-Za-z]+$/;  
var fday = document.registration.bdate.value;
var fmonth = document.registration.bmonth.value;  
var fyear = document.registration.byear.value;



if (fname==null || fname=="")
{  

  alert("Name can't be blank");  
  return false;  
}
 else if(!letters.test(fname)){
  alert("Only letters allowed!!");
  return false;
  }
  



if (lname==null || lname=="")
{  
  alert("Last Name can't be blank");  
  return false;  
}

 else if(!letters.test(lname)){
  alert("Only letters allowed!!");
  return false;
  }
  


 if (uemail==null|| uemail=="" )
 {
  
  alert( "enter the email");
  return false;
  }
  else if(!emailRegex.test(uemail)){
  alert("You have entered an invalid email address!");
  return false;
  }
  



if(passid<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
  
  
if(cpassid<6){  
  alert("Confirm Password must be at least 6 characters long.");  
  return false;  
  }  
  
   
  if(passid!= cpassid)
  {
  alert("password are not matching, re-enter again");
   return false;
   }
  
     if (fday == null || fday=="") {
       
  alert("select the birthday day");
        return false;
     }
   if (fmonth ==null || fmonth=="")
	  {    
  alert("select the birthday month");
   return false;
     }

  if (fyear == null || fyear=="") {
        
  alert("select the birthday year");
        return false;
     }
   
  
 
}  

