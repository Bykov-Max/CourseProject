let textBiography = document.querySelector(".biography");
let contBiography = document.querySelector("#biography");
let rotate = document.querySelector(".rotate");

contBiography.addEventListener("click", function(){
    textBiography.hidden = !textBiography.hidden;
    rotate.classList.toggle("active");
});