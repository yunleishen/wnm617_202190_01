

// DOCUMENT READY
$(()=>{

   // query({
   //    type:'locations_by_animal_id',
   //    params:[4]
   // }).then(d=>{
   //    console.log(d)
   // })

   checkUserId();

   // Event Delegation
   $(document)


   .on("pagecontainerbeforeshow",function(event, ui){
      //console.log(ui.toPage[0].id)
      switch(ui.toPage[0].id){
         case "page-home": HomePage();break;
         case "page-pets": PetsPage();break;
         case "page-animal-profile": AnimalProfilePage();break;
         case "page-user": UserProfilePage();break;
         case "page-animal-edit": AnimalEditPage(); break;


      }
   })


   // FORM SUBMITS
   .on("submit","#signin-form",function(e) {
      e.preventDefault();
      checkSigninForm();
   })
   .on("submit","#list-add-form",function(e) {
      e.preventDefault();
   })


   // ANCHOR CLICKS
   .on("click",".js-logout",function(e) {
      e.preventDefault();
      sessionStorage.removeItem("userId");
      checkUserId();
   })

   .on("click",".animal-jump",function(e) {
      if(!$(this).data("id")) throw("No ID on element");
      sessionStorage.animalId = $(this).data("id");
      $.mobile.navigate("#page-animal-profile");
   })


   .on("click",".animal-profile-middle li",function(e){
      let id = $(this).index();
      $(this).addClass("active")
         .siblings().removeClass("active");
      $(this).closest(".animal-profile-middle").next().children().eq(id).addClass("active")
         .siblings().removeClass("active");
   })

   .on("click","[data-activate]",function(e){
      let target = $(this).data("activate");
      $(target).addClass("active");
   })
   .on("click","[data-deactivate]",function(e){
      let target = $(this).data("deactivate");
      $(target).removeClass("active");
   })
   .on("click","[data-toggle]",function(e){
      let target = $(this).data("toggle");
      $(target).toggleClass("active");
   })
   .on("click","[data-activateone]",function(e){
      let target = $(this).data("activateone");
      $(target).addClass("active").siblings().removeClass('active');
   })
   ;


   $("[data-template]").each(function(){
      let target = $(this).data("template");
      $(this).html($(target).html());
   })

  $({
      "#page-home":".nav-icon-set li:nth-child(1)",
      "#page-pets":".nav-icon-set li:nth-child(2)",
      "#page-user":".nav-icon-set li:nth-child(3)",
   }[location.hash]).addClass("active");
});




