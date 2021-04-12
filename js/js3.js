let textInfo = document.querySelector(".groupInfo");
let contInfo = document.querySelector("#groupInfo");
let reverse = document.querySelector(".reverse");

contInfo.addEventListener("click", function(){
    textInfo.hidden = !textInfo.hidden;
    reverse.classList.toggle("active3");
});




let textHistory = document.querySelector(".groupHistory");
let contHistory = document.querySelector("#groupHistory");
let reverse2 = document.querySelector(".reverse2")

contHistory.addEventListener("click", function(){
    textHistory.hidden = !textHistory.hidden;
    reverse2.classList.toggle("active4");
});