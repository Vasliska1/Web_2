function validate(form){

    var fail = "";
    var R= form.enterR.value;
    var X = form.enterX.value;

    var chooseRTitle = form.querySelector('.chooseRTitle');
    var chooseXTitle = form.querySelector('.chooseXTitle');
    var chooseYTitle = form.querySelector('.chooseYTitle')
    var Y = document.getElementById('Y').value;
    //[0].defaultValue

    if(Y==null || Y=="") {
        fail = fail + '<br>' + "Впишите Y!!";
        chooseYTitle.style.color='red';
        chooseYTitle.style.fontWeight = 'bold';

    }
    if (X>= 5 || X<=-3 || isNaN(X)){

        fail = fail   +'<br>'+ "Значение X должно быть от -3 до 5!!";
         chooseXTitle.style.color='red';
         chooseXTitle.style.fontWeight = 'bold';

    }
    if(X==null || X=="") {
        fail = fail + '<br>' + "Впишите X!!";
        chooseXTitle.style.color='red';
        chooseXTitle.style.fontWeight = 'bold';


    }
/*    if(Y == null || Y == ""){
        fail = fail + '<br>' + "Впишите Y!!";

    }*/


    if (R>= 5 || R<=2 || isNaN(R)){

        fail = fail + '<br>'+ "Значение R должно быть от 2 до 5!!";
       chooseRTitle.style.color='red';
        chooseRTitle.style.fontWeight = 'bold';

    }



    if (fail){

        var element = document.getElementById('message');
        element.innerHTML=fail;
        return false;
    }
    else {
        return true;
    }





}
document.getElementById('graph').addEventListener('click', function (e) {
var r = document.getElementById('enterR').value;
   if (!r) {
       var element = document.getElementById('message');
       element.innerHTML="Вы должны выбрать R!!";
        return;
    }


    var svg = document.getElementById('graph');
    var htmlCoordinatesPoint = svg.createSVGPoint();
    htmlCoordinatesPoint.x = e.clientX;
    htmlCoordinatesPoint.y = e.clientY;
    var svgPoint = htmlCoordinatesPoint.matrixTransform(svg.getScreenCTM().inverse());
    var calcX = r*(svgPoint.x -150) / 95 ; //svg coordinates to point coordinates
    var calcY = r* -(svgPoint.y-150) /95;
;

    document.getElementById('enterX').setAttribute('value', String(calcX));
    document.getElementById('Y').setAttribute('value', String(calcY));

    var canvas = document.createElement("canvas");
    canvas.setAttribute("width", window.innerWidth);
    canvas.setAttribute("height", window.innerHeight);
    canvas.setAttribute("style", "position: absolute; x:0; y:0;");
    document.body.appendChild(canvas);

//Then you can draw a point at (10,10) like this:
  //  var getY = calcY.getBoundingClientRect();
    var ctx = canvas.getContext("2d");
    alert(svgPoint.x)
    alert(svgPoint.y)
    var getY=  e.clientY-50;
    ctx.fillRect(e.clientX, getY,10,10);


/*
    const xText = document.getElementById('x-header');
    const xElem = document.getElementById('x-choice');
    const yText = document.getElementById('y-header');
    xText.classList.remove("invalid", "valid");
    xElem.classList.remove("invalid", "valid");
    yText.classList.remove("invalid", "valid");

    xElem.value = "";
    const radio = document.querySelector('input[type="radio"]:checked');
    if (radio) radio.checked="";
    document.getElementById('form').submit();*/
});




