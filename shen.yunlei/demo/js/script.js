
$(()=>{
	$(".accordion dt").on("click", function(e){

		console.log(this)
		// $(this).next().slideToggle();

		$(this)
			.next().slideDown()
			.siblings("dd").slideUp();
	});


	$(".tabgroup .tab").on("click", function(e){
		let index = $(this).index();

		$(this).addClass("acitve")
		.siblings().removeClass("acitve");


		$(this).closest("tabgroup")
		.find(".content").eq(index).addClass("acitve")
		.siblings().removeClass("tabgroup");
	})

});