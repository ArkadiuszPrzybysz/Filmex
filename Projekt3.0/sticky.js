window.addEventListener("scroll", function(){
    var header = document.querySelector(".navbar-main");
    header.classList.toggle("sticky", window.scrollY > 0);
});
        