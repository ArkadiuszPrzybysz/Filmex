const content = document.querySelector('.selected-content');
const btn = document.querySelectorAll('.btn');
for (let i = 0; i < btn.length; i++) {
    btn[i].addEventListener("click", () => {
        content.classList.add("content-animation");
        setTimeout(function(){ content.classList.remove("content-animation"); }, 500);
})};