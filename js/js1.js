let up = document.querySelector(".up");

up.addEventListener("click", function(e){
    window.scrollTo({
        top: 0,
        left: 0,
        behavior: "smooth",
    });
});