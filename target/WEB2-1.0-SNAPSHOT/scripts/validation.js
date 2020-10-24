//Validates, checks and returns the field values
const validateAndCheckX = function (num) {
    if (!isNaN(num.value)) {
        return parseFloat(num.value.trim());
    } else {
        return undefined;
    }
};

const validateAndCheckY = function (num, min, max) {
    let pattern = /^[+-]?\d+(\.\d+)?$/;

    // Changes comma to dot
    let value = num.value.trim().replace(",", ".");

    if (value === "") {
        return undefined;
    }


    if (pattern.test(value)) {
        let float_value = parseFloat(value);

        if (float_value < min || float_value > max) {
            return undefined;
        } else {
            return float_value;
        }
    } else {
        return undefined;
    }
};

//Drawn dot
const dot = document.querySelector('#dot');

// Redraws point
const redraw = function (x, y) {
    // Setting color
    dot.setAttribute('fill', '#AC3B61');
    dot.setAttribute('cx', x);
    dot.setAttribute('cy', y);

};

// Changes dot's coordinates, if they are
const fix = function (coordinate) {
    if (coordinate < 5) return 5;
    else if (coordinate > 395) return 395;
    else return coordinate;
};

let r_value, x = 200, y = 200;
const momenalRedrawDot = function () {
    let x_value = validateAndCheckX(x_select);
    let y_value = validateAndCheckY(y_text, -5, 5);

    if (x_value !== undefined && y_value !== undefined && r_value !== undefined) {
        let svg_x = 2 * (x_value * 70 / r_value) + 200;
        let svg_y = -2 * (y_value * 70 / r_value) + 200;

        redraw(fix(svg_x), fix(svg_y));
    } else {
        redraw(x, y);
    }
};

let list_of_r_buttons = document.querySelectorAll("input[type=radio]");

list_of_r_buttons.forEach(button => button.addEventListener('click', function () {
    r_value = button.value;
    momenalRedrawDot();
}))
//Selected value
let x_select = document.querySelector('#x');
//Written value
let y_text = document.querySelector('#y');
//Listener for each input
x_select.addEventListener('input', momenalRedrawDot);
y_text.addEventListener('input', momenalRedrawDot);

//Graphic object
const picture = document.querySelector("#picture");

//Request by clicking on picture
picture.addEventListener('click', (event) => {
    if (r_value !== undefined) {
        const c = picture.getBoundingClientRect();
        //Coordinates in pixels
        x = event.clientX - c.x;
        y = event.clientY - c.y;
        //Coordinates in numbers
        const num_x = (x - 200) * r_value / 140;
        const num_y = -(y - 200) * r_value / 140;

        //ADD SEND REQUEST

        reset();
    } else {
        alert("Выберите радиус")
    }
});

//Result button
const button_result = document.querySelector("#button_result");

//Request by clicking on result button
button_result.addEventListener('click', () => {
    let x_value = validateAndCheckX(x_select);
    let y_value = validateAndCheckY(y_text, -5, 5);

    if (x_value !== undefined && y_value !== undefined && r_value !== undefined) {
        let svg_x = 2 * (x_value * 70 / r_value) + 200;
        let svg_y = -2 * (y_value * 70 / r_value) + 200;

        x = fix(svg_x);
        y = fix(svg_y);

        //ADD SEND REQUEST

        reset();
    }
});

//
const reset = function () {
    momenalRedrawDot();
    y_text.value = "";
    r_value = undefined;
    list_of_r_buttons.forEach(button => button.checked = false)
};
//Making a point
/*const showPoint = function (x, y, r) {
    let svg_x = 2 * (x * 70 / r) + 200;
    let svg_y = -2 * (y * 70 / r) + 200;

    x = fix(svg_x);
    y = fix(svg_y);

    redraw(x, y);
};*/
