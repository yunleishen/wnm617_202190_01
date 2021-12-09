
const makePetsPage = templater((o)=>`


<div class="animallist-item display-inline-block">
   <div class="animal-jump" data-id="${o.id}">
      <div class="animallist-item-image">
         <img src="${o.img}" alt="">
         <div class="animallist-item-name">${o.name}</div>
      </div>

   </div>
</div>

`);


const makeUserProfile = (o) => `

<div class="user-profile-image">
   <img src="${o.img}" alt="">
   <a  href="#page-user-upload">
      <svg xmlns="http://www.w3.org/2000/svg" height="30px" viewBox="0 0 30 30" width="30px" fill="#0A0000"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M14.12 4l1.83 2H20v12H4V6h4.05l1.83-2h4.24M15 2H9L7.17 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2h-3.17L15 2zm-3 7c1.65 0 3 1.35 3 3s-1.35 3-3 3-3-1.35-3-3 1.35-3 3-3m0-2c-2.76 0-5 2.24-5 5s2.24 5 5 5 5-2.24 5-5-2.24-5-5-5z"/></svg>
   </a>
</div>
<div>
   <h2 class="name-user">${o.name}</h2>
   <h3>&commat;${o.username}</h3>
</div>


`;

const makeAnimalProfile = (o) => `

   <h2 class="name-animal">${o.name}</h2>
   <div class="bio overscroll">
      <div style="margin-top:8px"><strong>Type</strong> ${o.type}</div>
      <div style="margin-top:8px"><strong>Breed</strong> ${o.breed}</div>
      <div style="margin-top:8px"><strong>Description</strong> <p style=" font-family: var(--font-serif);">${o.description}</p></div>
   </div>
`;

const makeAnimalPopup = o => `
<div class="display-flex animal-jump" data-id="${o.animal_id}">
   <div class="flex-stretch animal-popup-body padding-md">
      <div class="animal-popup-name"><strong>${o.name}</strong></div>
      <div class="animal-popup-type"><strong>Type</strong> ${o.type}</div>
      <div class="animal-popup-breed"><strong>Breed</strong> ${o.breed}</div>
   </div>
   <div class="padding-md">
   <a href="#page-animal-profile" class="animal-popup-btn">More</a>
   </div>
</div>
`;



const FormControlInput = ({namespace,name,displayname,type,placeholder,value}) => `
<div class="form-control">
   <label for="${namespace}-${name}" class="form-label">${displayname}</label>
   <input type="${type}" id="${namespace}-${name}" class="form-input" data-role="none" placeholder="${placeholder}" value="${value}">
</div>
`;
const FormControlTextarea = ({namespace,name,displayname,placeholder,value}) => `
<div class="form-control">
   <label for="${namespace}-${name}" class="form-label">${displayname}</label>
   <textarea id="${namespace}-${name}" class="form-input" data-role="none" placeholder="${placeholder}">${value}</textarea>
</div>
`;


const makeAnimalFormInputs = (o,namespace) => `
${FormControlInput({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"New Pet Name",
   value:o.name
})}

${FormControlInput({
   namespace:namespace,
   name:"type",
   displayname:"Type",
   type:"text",
   placeholder:"The New Pet Type",
   value:o.type
})}

${FormControlInput({
   namespace:namespace,
   name:"breed",
   displayname:"Breed",
   type:"text",
   placeholder:"The New Pet Breed",
   value:o.breed
})}

${FormControlTextarea({
   namespace:namespace,
   name:"description",
   displayname:"Description",
   placeholder:"The New Pet Description",
   value:o.description
})}
`;

const makeUserFormInputs = (o,namespace) => `
${FormControlInput({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"The User Name",
   value:o.name
})}
${FormControlInput({
   namespace:namespace,
   name:"username",
   displayname:"Username",
   type:"text",
   placeholder:"The User Handle",
   value:o.username
})}
${FormControlInput({
   namespace:namespace,
   name:"email",
   displayname:"Email",
   type:"email",
   placeholder:"The Email Address",
   value:o.email
})}
`;

const makeAnimalChoiceSelect = ({animals,name,chosen=0}) => `
<select id="${name}">
   ${templater(o=>`
      <option value="${o.id}" ${o.id===chosen?'selected':''}>${o.name}</option>
   `)(animals)}
</select>
`;

const makePetsPageSet = (arr,target="#page-pets .animallist") => {
   $(".filter-bar").html(makeFilterList(arr));
   $(target).html(makePetsPage(arr));
}


const filterList = (animals,type) => {
   let a = [...(new Set(animals.map(o=>o[type])))];
   return templater(o=>`<a href="#" data-filter="${type}" data-value="${o}">${o}</a>`)(a);
}


const makeFilterList = (animals) => {
   return `
   <a href="#" data-filter="type" data-value="">All</a>
   <div>|</div>
   ${filterList(animals,'type')}
   <div>|</div>
   ${filterList(animals,'breed')}
   `;
}



