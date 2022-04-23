let playButton = document.querySelector(".watch-btn");
let video = document.querySelector(".video-container");
let myvideo = document.querySelector("#myvideo");
let closebtn = document.querySelector(".close-video");

$(function(){
    $('.close-video').click(function(){      
        $('iframe').attr('src', $('iframe').attr('src'));
    });
});

playButton.onclick = () => {
    video.classList.add("show-video");
};
closebtn.onclick = () => {
    video.classList.remove("show-video");
};