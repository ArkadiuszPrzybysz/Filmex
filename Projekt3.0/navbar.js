const menuIcon = document.querySelector(".hamburger-menu");
const navbar = document.querySelector(".navbar");
const all = document.querySelector("body");
const icon = document.querySelector('.icon');
const search = document.querySelector('.input');
const searchbar = document.getElementById('search');
const logo = document.querySelector('.nav-logo');
const arrow = document.querySelector('#arrow-close');
const list = document.querySelector('.list');
const dots = document.querySelector('.dots');
const menu = document.querySelector('.dropdown-menu');



menuIcon.addEventListener("click", () => {
    navbar.classList.add("change");
});

window.onkeydown = function (event) {
    if (event.keyCode == 27) {
        navbar.classList.remove("change");
    }
};

icon.onclick = function (){
    search.classList.add("active");
    logo.style.display = "none";
    icon.style.display = "none";
    navbar.style.display = "none";
    dots.style.display = "none";
    arrow.style.display = "flex";
    searchbar.focus();
};

arrow.onclick = function (){
    search.classList.remove("active");
    logo.style.display = "block";
    icon.style.display = "flex";
    navbar.style.display = "flex";
    dots.style.display = "flex";
    arrow.style.display = "none";
};

dots.onclick = function (){
    list.classList.toggle("show");
    menu.classList.toggle("paint");
};


 