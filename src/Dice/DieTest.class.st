Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice',
	#package : 'Dice'
}

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
