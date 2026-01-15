Class {
	#name : 'DieHandleTest',
	#superclass : 'TestCase',
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'tests' }
DieHandleTest >> testAddingAnHandleWIthADie [
	| handle res |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself.
	res := handle + (Die withFaces: 20).
	self assert: res diceNumber equals: 3 
]

{ #category : 'tests' }
DieHandleTest >> testCreationAdding [
	| handle |
	handle := DieHandle new
			addDie:(Die withFaces: 6);
			addDie: (Die withFaces: 10);
			yourself.

	self assert: handle diceNumber equals: 2.
]

{ #category : 'tests' }
DieHandleTest >> testRoll [
	| handle|
	handle := DieHandle new
			addDie: (Die withFaces: 6);
			addDie: (Die withFaces: 20);
			yourself.

	100 timesRepeat: [handle roll between: 2 and: 26]

]

{ #category : 'tests' }
DieHandleTest >> testSimpleHandle [
		self assert: 2 D20 diceNumber = 2.
]

{ #category : 'tests' }
DieHandleTest >> testSumming [
	| handle |
	handle := 2 D20 + 3 D10.
	self assert: handle diceNumber equals: 5.
	
]
