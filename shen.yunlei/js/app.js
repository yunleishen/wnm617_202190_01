

// DOCUMENT READY
$(()=>{

   checkUserId();

   // Event Delegation
   $(document)


   .on("pagecontainerbeforeshow",function(event, ui){
      //console.log(ui.toPage[0].id)
      switch(ui.toPage[0].id){
         case "page-home": HomePage();break;
         case "page-pets": PetsPage();break;
         case "page-user": UserProfilePage();break;
         case "page-user-edit": UserEditPage(); break;
         case "page-animal-profile": AnimalProfilePage(); break;
         case "page-animal-edit": AnimalEditPage(); break;
         case "page-animal-add": AnimalAddPage(); break;
         case "page-location-choose-animal": LocationChooseAnimalPage(); break;
         case "page-location-set-location": LocationSetLocationPage(); break;
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
   .on("submit", "#animal-add-form", function(e) {
      e.preventDefault();
      animalAddForm();
   })
   .on("submit", "#animal-edit-form", function(e) {
      e.preventDefault();
      animalEditForm();
   })



   // FORM ANCHOR CLICKS

   .on("click",".js-submituseredit",function(e) {
      e.preventDefault();
      userEditForm();
   })
   .on("click",".js-submituserpassword",function(e) {
      e.preventDefault();
      userEditPasswordForm();
   })
   .on("click",".js-submitlocationform",function(e){
      e.preventDefault();
      locationAddForm();
   })
   .on("click","[data-filter]",function(e){
      let {filter,value} = $(this).data();
      if(value=="") PetsPage();
      else checkFilter(filter,value);
   })

   // ON CHANGE

   .on("change","#location-animal-choice-select",function(e){
      $("#location-animal-choice").val(this.value)
   })


   .on("change",".image-picker.replace input",function(e){
      checkUpload(this.files[0])
      .then(d=>{
         console.log(d);
         $("#user-upload-filename").val("uploads/"+d.result);
         $(this).parent().css({
            "background-image":`url(uploads/${d.result})`
         });
      })
   })
   .on("click",".js-submituserupload",function(e) {
      let image = $("#user-upload-filename").val();
      query({
         type:"update_user_image",
         params: [image,sessionStorage.userId]
      }).then(d=>{
         if(d.error) throw(d.error);

         history.go(-1);
      })
   })
   .on("click",".js-animal-delete",function(e){
      query({
         type:"delete_animal",
         params: [sessionStorage.animalId]
      }).then(d=>{
         history.go(-2);
      })
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
   .on("click","[data-setnavigateback]",function(e){
      $("#location-navigateback").val($(this).data("setnavigateback"))
   })
   .on("click",".js-navigate-back",function(e){
      window.history.go(+$("#location-navigateback").val());
   })


   .on("click",".js-chooseanimal",function(e){
      $("#location-animal-choice").val(sessionStorage.animalId);
   })


   .on("click",".animal-profile-middle h2",function(e){
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




