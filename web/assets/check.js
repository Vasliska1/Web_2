function validate(form) {

    var fail = "";
    var R = form.enterR.value;
    var X = form.enterX.value;
    var chooseRTitle = form.querySelector('.chooseRTitle');
    var chooseXTitle = form.querySelector('.chooseXTitle');
    var chooseYTitle = form.querySelector('.chooseYTitle')
    var Y = document.getElementById('Y').value;


    if (Y == null || Y == "") {

        fail = fail + '<br>' + "Выберите Y!!";
        chooseYTitle.style.color = 'red';
        chooseYTitle.style.fontWeight = 'bold';
    }
    if (Y > 5 || Y < -3 || isNaN(X)) {

        fail = fail + '<br>' + "Значение Y должно быть от -3 до 5!!";
        chooseYTitle.style.color = 'red';
        chooseYTitle.style.fontWeight = 'bold';
    }

    if (X >= 5 || X <= -3 || isNaN(X)) {

        fail = fail + '<br>' + "Значение X должно быть от -3 до 5!!";
        chooseXTitle.style.color = 'red';
        chooseXTitle.style.fontWeight = 'bold';
    }

    if (X == null || X == "") {

        fail = fail + '<br>' + "Впишите X!!";
        chooseXTitle.style.color = 'red';
        chooseXTitle.style.fontWeight = 'bold';
    }

    if (R >= 5 || R <= 2 || isNaN(R)) {

        fail = fail + '<br>' + "Значение R должно быть от 2 до 5!!";
        chooseRTitle.style.color = 'red';
        chooseRTitle.style.fontWeight = 'bold';
    }


    if (fail) {
        var element = document.getElementById('message');
        element.innerHTML = fail;
        return false;
    } else {
        return true;
    }
}

document.getElementById('graph').addEventListener('click', function (e) {
        var r = document.getElementById('enterR').value;
        var element = document.getElementById('message');
        if (!r) {
            element.innerHTML = '<br>' + "Вы должны выбрать R!!";
        }
        var svg = document.getElementById('graph');
        var htmlCoordinatesPoint = svg.createSVGPoint();
        htmlCoordinatesPoint.x = e.clientX;
        htmlCoordinatesPoint.y = e.clientY;
        var svgPoint = htmlCoordinatesPoint.matrixTransform(svg.getScreenCTM().inverse());
        var calcX = (svgPoint.x - 150) * r / 100;
        var calcY = -(svgPoint.y - 150) * r / 100;

        if (r) {
            document.getElementById('enterX').value = calcX.toFixed(3);
            document.getElementById('Y').value = calcY.toFixed(3);
        }
        var getX = svgPoint.x;
        var getY = svgPoint.y;

        var point = document.getElementById('point');

        setAttributes(point, {"cx": String(getX), "cy": String(getY), "r": "2"});

        function setAttributes(el, options) {
            Object.keys(options).forEach(function (attr) {
                el.setAttribute(attr, options[attr]);
            })
        }

    }
);


