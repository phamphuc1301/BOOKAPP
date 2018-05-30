document.addEventListener("DOMContentLoaded", function() {
	var star = document.getElementsByClassName('stars');
	
	for (let i = 0; i < star.length; i++) {
		var liElement = star[i].children[0].children;
		var currentStar = star[i].children[0].getAttribute("class");
		for (var v = 0; v <= currentStar; v++) {
			liElement[v].classList.add('yellow');
		}
		star[i].onclick = function() {
			var idArticle = star[i].children[0].getAttribute("id");
			var liElement = star[i].children[0].children;
			for (let j = 0; j < liElement.length; j++) {
				liElement[j].onclick = function() {
					var rate = liElement[j].dataset.value
					var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
				    	for(var k = 0; k< liElement.length;k++){
				    		liElement[k].classList.remove('yellow');
				    	}
					      for (var u = 0; u < rate; u++) {
							liElement[u].classList.add('yellow');
					      }
					    }
					  };
					  xhttp.open("GET", "/BOOKAPP/rate?id="+idArticle+"&rate="+rate, true);
					  xhttp.send();
				}
			}
		}
	}
})