document.addEventListener("DOMContentLoaded",function(){
	$('.pages').click(function(){
		var pages = $(this).attr('id');
		 $.ajax({
			    type:"GET",
			    url:"/BOOKAPP/pageAdmin",
			    data: {
			    	page : pages
			    },
			    success: function(data) {
			      $('#contentadmin').html(data);
			    },
			  });
	})
})