# Bubble Tanks

A top down shooter game with Bubble Tanks and different types of upgrades and enemies.

### [Demo video here](https://youtu.be/iz0xhgoWjT8)

## Running The Game
* First, you need to clone this repository.
```
$ git clone git@github.com:rachel-ng/bubble-tanks.git
```
* If you can use the `processing` command in your terminal, open it in the terminal.
```
$ cd bubble-tanks/
$ cd Game/
$ processing Game.pde
```
* You can also try using `open` to open it in the terminal.
```
$ open Game.pde
```
* If you cannot use that command, simply open up Processing 3 and go to `File > Open...` and choose `Game.pde` in the Bubble-Tanks-Final-Project directory.

Finally, you use `Ctrl-R` to run the game.

### How To Play
* **Moving**  
  Use the  `W`  `A`  `S`  `D`  key to move around. 
* **Shooting**  
  This depends on what you choose while setting up the game, you can use: 
  * Your **MOUSE** to aim and **CLICK** to shoot.
  * Your **LEFT** and **RIGHT** arrow keys to aim and **SPACE** to shoot.
* **Map**  <!-- If there's a place you got to go I'm the one you need to know I'm the map -->  
  If you're using your mouse, just click on the map button in the bottom right corner, otherwise, use the `V` key to toggle the map! You can use the map to check:  
  * Where you started.
  * Where you are.
  * Rooms you've cleared.
  * Where the boss room is.
  
  Then just click to exit if you're using a mouse.

* **Upgrading**  
  When you get enough EXP, indicated by the blue bar below the green health bar, you'll be able to pick your own upgrades. You'll end up maxing everything out (you can allocate at most 4 upgrades to each), but for now, pick whichever one you like the best.
  * **Odd Levels**: You get to choose between the `1: Blaster` the `2: Cannon` and the `3: Machine Gun`.
  * **Even Levels**: These are your specialattacks, you get to choose between the `1: Missiles` the `2: Stun` and the `3: Area Burst`.
  * **Level 10**: These are your super attacks, choose carefully because you only get one:  
    the `1: Super Missile` the `2: Super Blaster` and the `S3: uper Cannon`.
    
* **Special Attacks**  
  You get to use the  `1`  `2`  `3`  `4` keys for these. 
  * `1`: `Missiles`
  * `2`: `Stun`
  * `3`: `Area Burst`
  * `4`: `Super Attack` (`Super Missile`, `Super Blaster`, `Super Cannon`)
  
  These also come with cooldowns which are indicated by the 4 circles next to the health and EXP bars. 
  
Have Fun!

## Features

### Original Features
* The ability to move around and shoot with keyboard and mouse.
* The ability to kill enemies or get klled.
* Different player models that change as you progress.
* Transfering between different rooms with their own enemies.
* Have a health and experience bar to indicate progress.
* A map to show current location and where you have been.

### Features after Demo
* Special attacks that deal massive damage on enemies.
* Unique bosses with their own patterns of attack.
* Picking your own upgrades to fight enemies with.
* A win and losing screen.
* A better looking map.
* Map boundries.

### Features Recently Added 
* Slower movement speed 
* No longer able to leave rooms without clearing them unless you are in a boss room or next to one.
* Use keyboard to pick your upgrades. 

## Bugs

### Bugs That Do Not Affect Gameplay
* When transfering between rooms, you can catch a glimpse of what is in the other room before transfering.

### Bugs That Do Affect Gameplay
* If you are moving and then decide to click outside of the window, your tank will continue to move.  
  To fix this, click back inside the game and use the  `W`  `A`  `S`  `D`  keys to move in the direction that the tank is currently moving in. It should stop the tank from moving any further.
