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

{ #category : 'accessing' }
DieHandle >> addDie: aDie [ 
	dice add: aDie.
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
