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

{ #category : 'adding' }
DieHandle >> + aDicable [
	^ aDicable sumWithDieHandle: self
]

{ #category : 'accessing' }
DieHandle >> D: anInteger [ 
	self shouldBeImplemented.
]

{ #category : 'adding' }
DieHandle >> addDiceTo: aDieHandle [
	| handle |
	handle := self class new.
	handle dice do: [ :each | aDieHandle addDie: each ].
	^ aDieHandle 
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

{ #category : 'enumerating' }
DieHandle >> do: aFullBlockClosure [ 
	self shouldBeImplemented.
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

{ #category : 'enumerating' }
DieHandle >> sumWithDie: aDie [
	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each ].
	handle addDie: aDie.
	^ handle
]

{ #category : 'enumerating' }
DieHandle >> sumWithDieHandle: aDieHandle [
	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each ].
	aDieHandle dice do: [ :each | handle addDie: each ].
	^ handle
]
