//js para el mitico juego Arkanoid

console.trace('comencamos a jugar');

//seleccionamos un elemento y le decimos que vamos a trabajas en 2d
var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");
//variabes para crear la pelota y "moverla"
var x = canvas.width/2;
var y = canvas.height-30;
var dx = 2;
var dy = -2;

//variables para crear la paleta
var paddleHeight = 10;
var paddleWidth = 75;
var paddleX = (canvas.width-paddleWidth)/2;
//variables para el movimieto de la paleta
var rightPressed = false;
var leftPressed = false;

var ballRadius = 10;//mantendrá el radio del círculo dibujado y se utilizará para los cálculos.
//variables para definir los ladrillos
var brickRowCount = 5;
var brickColumnCount = 5;
var brickWidth = 75;
var brickHeight = 20;
var brickPadding = 10;
var brickOffsetTop = 30;
var brickOffsetLeft = 30;

var score = 0;

var bricks = [];
for(c=0; c<brickColumnCount; c++) {
    bricks[c] = [];
    for(r=0; r<brickRowCount; r++) {
        bricks[c][r] = { x: 0, y: 0, status: 1 };
    }
}
//Esto es para el movimiento de la paleta
document.addEventListener("keydown", keyDownHandler, false);
document.addEventListener("keyup", keyUpHandler, false);



function keyDownHandler(e) {
    if(e.keyCode == 39) {
        rightPressed = true;
    }
    else if(e.keyCode == 37) {
        leftPressed = true;
    }
}
function keyUpHandler(e) {
    if(e.keyCode == 39) {
        rightPressed = false;
    }
    else if(e.keyCode == 37) {
        leftPressed = false;
    }
}

function collisionDetection() {
    for(c=0; c<brickColumnCount; c++) {
        for(r=0; r<brickRowCount; r++) {
            var b = bricks[c][r];
            if(b.status == 1) {
                if(x > b.x && x < b.x+brickWidth && y > b.y && y < b.y+brickHeight) {
                    dy = -dy;
                    b.status = 0;
                    score++;
                    if(score == brickRowCount*brickColumnCount) {
                        alert("YOU WIN, CONGRATS!");
                        document.location.reload();
                    }
                }
            }
        }
    }
}

function drawBall() {// código para dibujar cada diez milisegundos
    ctx.beginPath();
    ctx.arc(x, y, ballRadius, 0, Math.PI*2);
    ctx.fillStyle = "#0095DD";
    ctx.fill();
    ctx.closePath();
}

function drawPaddle() {//est funcion dibujara la paleta
    ctx.beginPath();
    ctx.rect(paddleX, canvas.height-paddleHeight, paddleWidth, paddleHeight);
    ctx.fillStyle = "#0095DD";
    ctx.fill();
    ctx.closePath();
}


function drawBricks() {
    for(c=0; c<brickColumnCount; c++) {
        for(r=0; r<brickRowCount; r++) {
            if(bricks[c][r].status == 1) {
                var brickX = (r*(brickWidth+brickPadding))+brickOffsetLeft;
                var brickY = (c*(brickHeight+brickPadding))+brickOffsetTop;
                bricks[c][r].x = brickX;
                bricks[c][r].y = brickY;
                ctx.beginPath();
                ctx.rect(brickX, brickY, brickWidth, brickHeight);
                ctx.fillStyle = "#0095DD";
                ctx.fill();
                ctx.closePath();
            }
        }
    }
}

function drawScore() {
    ctx.font = "16px Arial";
    ctx.fillStyle = "#0095DD";
    ctx.fillText("Score: "+score, 8, 20);
}

function draw() {//Esta funcion hace que los objetos se "muevan" (de sensacion de movimiento)
    ctx.clearRect(0, 0, canvas.width, canvas.height);//"Limpia" la pantalla en cada "fotograma"
    drawBricks();
    drawBall();
    drawPaddle();
    drawScore();
    collisionDetection();

    if(y + dy < ballRadius ) {//limitacion borde superior.
        dy = -dy;
    }
    /*if(y + dy > canvas.height-ballRadius ) {//limitacion borde inferior.
        dy = -dy;
    }*/
    /*if(y + dy > canvas.height || y + dy < 0) {  esto seria una fusion de los dos is anteriores.
    dy = -dy;
    } */
    if(x + dx > canvas.width-ballRadius  || x + dx < ballRadius ) {//limitacion borde derecho.
        dx = -dx;
    }
    
    if(y + dy < ballRadius) {//cuando la pelota revote conta el borde inferior se acabara el juego.
            dy = -dy;
        } else if(y + dy > canvas.height-ballRadius) {
            if(x > paddleX && x < paddleX + paddleWidth) {
                dy = -dy;
            }
            else {
                alert("GAME OVER");
                document.location.reload();
            }
        }
    //Si se pulsa la  izquierda, la paleta se moverá 7 píxeles a la izquierda. Si pulsas derecha, se moverá a la derecha.
    if(rightPressed && paddleX < canvas.width-paddleWidth) {
        paddleX += 7;
    }
    else if(leftPressed && paddleX > 0) {
        paddleX -= 7;
    }
    
    x += dx;//direccion pelota.
    y += dy;//direccion pelota.
}setInterval(draw, 10);//cada diez miliseconds





/*
//cuadrado rojo
ctx.beginPath();
ctx.rect(20, 40, 50, 50);
ctx.fillStyle = "#FF0000";
ctx.fill();
ctx.closePath();

//circulo verde
ctx.beginPath();
ctx.arc(240, 160, 20, 0, Math.PI*2, false);
ctx.fillStyle = "green";
ctx.fill();
ctx.closePath();

//borde de un cuadrado
ctx.beginPath();
ctx.rect(160, 10, 100, 40);
ctx.strokeStyle = "rgba(0, 0, 255, 0.5)";
ctx.stroke();
ctx.closePath();
*/
