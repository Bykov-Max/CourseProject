let textBiography = document.querySelector(".biography");
let contBiography = document.querySelector("#biography");
let rotate = document.querySelector(".rotate");

contBiography.addEventListener("click", function(){
    textBiography.hidden = !textBiography.hidden;
    rotate.classList.toggle("active");
});




let textCareer = document.querySelector(".career");
let contCareer = document.querySelector("#career");
let rotate2 = document.querySelector(".rotate2")

contCareer.addEventListener("click", function(){
    textCareer.hidden = !textCareer.hidden;
    rotate2.classList.toggle("active2");
});