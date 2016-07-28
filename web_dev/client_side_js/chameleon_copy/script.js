var photo = document.getElementById("lizard-photo")

var button1 = document.getElementById("blend");
button1.addEventListener("click", fadeOut);

var button2 = document.getElementById("reveal");
button2.addEventListener("click", fadeIn);

var button3 = document.getElementById("bg_color_change");
button3.addEventListener("click", bg_change);

var button4 = document.getElementById("bg_color_orig");
button4.addEventListener("click", bg_restore);

function bg_change() {
    document.body.style.backgroundColor = "red"
}

function bg_restore() {
    document.body.style.backgroundColor = "white"
}


function fadeOut(button) {
    button1.style.opacity = 1;

    (function fade() {
        if ((photo.style.opacity -= .1) < 0) {
            photo.style.display = "none";
        } else {
            requestAnimationFrame(fade);
        }
    })();
}

function fadeIn(button, display) {
    button2.style.opacity = 1;
    photo.style.display = display || "block";

    (function fade() {
        var val = parseFloat(photo.style.opacity);
        if (!((val += .1) > 1)) {
            photo.style.opacity = val;
            requestAnimationFrame(fade);
        }
    })();
}
