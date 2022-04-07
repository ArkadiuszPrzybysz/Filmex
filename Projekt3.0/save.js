const namebtn = document.querySelector('.name-btn');
const passwordbtn = document.querySelector('.password-btn');
const emailbtn = document.querySelector('.email-btn');
const changename = document.querySelector('.change-name');
const changeemail = document.querySelector('.change-email');
const changepassword = document.querySelector('.change-password');
const arrow_drop = document.querySelector('.arrow-drop');
const arrow_up = document.querySelector('#arrow-up');
const arrow_down = document.querySelector('#arrow-down');
const form_drop = document.querySelector('.form-img');



namebtn.onclick = function (){
    changename.classList.toggle("show-this");
};

passwordbtn.onclick = function (){
    changepassword.classList.toggle("show-this");
};

emailbtn.onclick = function (){
    changeemail.classList.toggle("show-this");
};

arrow_drop.onclick = function (){
    form_drop.classList.toggle("show-this");
    arrow_up.classList.toggle("show-this");
    arrow_down.classList.toggle("hide-this");
};
