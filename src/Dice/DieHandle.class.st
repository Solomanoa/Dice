Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#classInstVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
DieHandle >> D: anInteger [
   | handle |
	handle := DieHandle new.
	self timesRepeat: [ handle addDie:( Die withFaces: anInteger)].
	^ handle
]

{ #category : 'accessing' }
DieHandle >> addDie: aDie [ 
	dice add: aDie.
]

{ #category : 'accessing' }
DieHandle >> collect: aFullBlockClosure [ 
	self shouldBeImplemented.
]

{ #category : 'accessing' }
DieHandle >> dice [
	^ dice
]

{ #category : 'accessing' }
DieHandle >> diceNumber [
	^ dice size
]

{ #category : 'as yet unclassified' }
DieHandle >> initialize [
	 super initialize.
	 dice := OrderedCollection new

]

{ #category : 'as yet unclassified' }
DieHandle >> roll [ 
   | res |
	res := 0.
	dice do: [ :each | res := res + each roll ].
	^ res
]
