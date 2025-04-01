if (global.gameOver) exit;

x -= 10 + (global.speedModifier * 2); 

if (x <= - 2000) { 
    x += 2000;
}
