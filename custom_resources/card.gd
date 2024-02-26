class_name Card
extends Resource

var AttackRange
var Power
var Speed
var Armor
var Guard
var BeforeEffects
var OnHitEffects
var AfterEffects

@export_group("Card Stats")
@export var id: String
@export var attack_range: Vector2
@export var power: int
@export var speed: int
@export var armor: int
@export var guard: int

#enum {Grasp, Cross, Slash, Dive, Dust, Sweep, Focus, Block}
#
#const DATA = {
	## [Cost, minRange, maxRange, power, speed, armor, guard, cancelable]
	#Grasp : 
		#[0,1,1,3,7,null,null,false,""],
	#Cross:
		#[0,1,2,3,6,null,null,false,"AFTER: Retreat 3."],
	#Slash:
		#[0,1,1,4,5,null,null,false,"BEFORE: Close 2./nHIT: Gain Advantage."],
	#Dive:
		#[0,1,1,5,4,null,null,false,"BEFORE: Anvance 3; if you Advanced past the opponent, their attacks do not hit you."],
	#Dust : 
		#[0,2,3,5,3,null,4,false,"Ignore Armor./nIgnore Guard."],
	#Sweep:
		#[0,1,3,6,2,null,6,false,"HIT: The opponent must discard a random card."],
	#Focus:
		#[0,1,2,4,1,2,5,false,"You cannot be Pushed or Pulled./nAFTER: Draw 1."],
	#Block:
		#[0,null,null,null,0,2,3,false,"When you are hit, sped any amount of Face. For each Force spent, +2 Armor./nAFTER: Add this to you Guage at the end of the Strike."],
#}
#

