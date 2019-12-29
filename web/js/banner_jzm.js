window.onload = function() {
var sliderbox = document.getElementById('sliderbox');
var slider = document.getElementById('slider');
var sliderli = slider.getElementsByTagName('li');
var slidertab = document.getElementById('slidertab');
var slidertabli = slidertab.getElementsByTagName('li');
var inow = 0;
sliderbox.onmouseover = function() {
clearInterval(timer);
}
sliderbox.onmouseout =function() {
timer = setInterval(autoplay, 1000);
}
for(var i=0; i<slidertabli.length; i++) {
slidertabli[i].index = i;
slidertabli[i].onclick = function() {
clearInterval(timer);
for(var a=0; a<slidertabli.length; a++) {
slidertabli[a].className = "";
sliderli[a].style.display = "none";
}
this.className = "sliderclass";
sliderli[this.index].style.display = "block";
inow = this.index;
}
}
function autoplay() {
for(var i=0; i<sliderli.length; i++) {
sliderli[i].style.display = 'none';
slidertabli[i].className = "";
}
sliderli[inow].style.display = 'block';
slidertabli[inow].className = "sliderclass";
inow = inow==sliderli.length-1 ? 0 : inow+1;
}
timer = setInterval(autoplay, 5000);
}