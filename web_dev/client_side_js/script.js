console.log("Testing...")

var button = document.getElementsByTagName("button")[0]

var change_color = function() { button.style.backgroundColor = "blue";}

button.onclick = change_color;

var box = document.getElementById("square")

function hover(event) {
  event.target.style.borderColor = "green";
}

box.addEventListener("mouseover", hover)