Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
DieTest >> + aDieOrADieHandle [
	| selfAsDieHandle |
	 selfAsDieHandle := DieHandle new addDie: self.
	^ selfAsDieHandle + aDieOrADieHandle

]

{ #category : 'as yet unclassified' }
DieTest >> testAddTwoDice [
	| hd |
	hd := ( Die withFaces:6 ) + (Die withFaces: 6).
	self assert: hd dice size equals: 2.
	
]

{ #category : 'as yet unclassified' }
DieTest >> testAddingADieAndADieHandle [
		| hd |
		hd := (Die withFaces: 6)
		 	+ 
			(DieHandle new 
			addDie: ( Die withFaces: 16);
			yourself ).
		self assert: hd dice size equals: 2
]

{ #category : 'as yet unclassified' }
DieTest >> testCreationIsOk [
	self assert: (Die withFaces: 20) faces equals: 20
]

{ #category : 'as yet unclassified' }
DieTest >> testInitializeIsOK [
	self assert: Die new faces equals:6
]

{ #category : 'as yet unclassified' }
DieTest >> testRolling [
	|d|
	d := Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
	
]
