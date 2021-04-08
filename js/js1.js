let textBiography = document.querySelector(".biography");
let contBiography = document.querySelector("#biography");

let textCareer = document.querySelector(".career");
let contCareer = document.querySelector("#career");



contCareer.addEventListener("click", function(){
    textCareer.hidden = !textCareer.hidden;
});



contBiography.addEventListener("click", function(){
    textBiography.hidden = !textBiography.hidden;
});