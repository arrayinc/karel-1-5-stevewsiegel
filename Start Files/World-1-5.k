/*
 * File: World-1-5.k
 * ---------------------------
 * Stepwise refinement test! Let's collect
 * these beepers!
 */
 import "turns";

 function CollectBeeperTowers(){
  	collectAllBeepers();
 	dropAllBeepers();
 	returnHome();

 }

 function collectAllBeepers(){
 	while(frontIsClear()){
 		collectOneTower();
 		move();
 	}
 	collectOneTower();
 }

 function dropAllBeepers(){
 	while(beepersInBag()){
 	putBeeper();
 	}
 }

 function returnHome(){
 	turnAround();
 	moveToWall();
 	turnAround();
 }

 function collectOneTower(){
 	if(beepersPresent()){
 		turnLeft();
 		collectLineofBeepers();
 		turnAround();
 		moveToWall();
 		turnLeft();
 	}
 }

 function collectLineofBeepers(){
 	while(beepersPresent()){
 	pickBeeper();
 	move();

 	}
 }

 function moveToWall(){
 	while(frontIsClear()){
 	move();
 }
 }
 
