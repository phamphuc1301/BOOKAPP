function myFunction() {
  input = document.getElementById("searchbook");
  var noidung = document.getElementById("noidung");
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
    	noidung.innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "findArticle?value="+input.value, true);
  xhttp.send(); 	
}