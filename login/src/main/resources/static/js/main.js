   
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
function scrollFunction() {
    if (document.body.scrollTop > 150 || document.documentElement.scrollTop > 150) {
        document.getElementById("top-level").style.background ="blue";
        document.getElementById("myBtn").style.display = "block";
        document.getElementById("top-level").style.opacity = "0.75";
    } else {
        document.getElementById("top-level").style.background ="none";
        document.getElementById("myBtn").style.display = "none";
        document.getElementById("top-level").style.opacity = "1";
    }
}
