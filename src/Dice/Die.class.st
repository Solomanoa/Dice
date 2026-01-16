"
"" class ""
"
Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces',
		'aNumber'
	],
	#classInstVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'arithmetic' }
Die class >> + aDie [ 
	^ aDie sumWithDie: self
	
]

{ #category : 'accessing' }
Die class >> dice [
	| handle |
	 handle := DieHandle new.
	 
	^ handle + self
]

{ #category : 'accessing' }
Die class >> sumWithDie: aDie [
	| handle |
	handle := DieHandle new.
	handle addDie: self.
	handle addDie: aDie.
	^ handle
]

{ #category : 'accessing' }
Die class >> sumWithDieHandle: aDieHandle [
	| handle |
	handle := DieHandle new.
	aDieHandle dice do: [ :each | handle addDie: each ].
	handle addDie: self.
	^ handle
]

{ #category : 'accessing' }
Die >> faces [
	^faces
]

{ #category : 'tests' }
Die >> faces: aNumber [ 
	faces := aNumber
]

{ #category : 'initialization' }
Die >> initialize [ 
	super initialize.
	faces:= 6
]

{ #category : 'accessing' }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString, ')'

]

{ #category : 'accessing' }
Die >> roll [
  ^ faces atRandom 
	
]

{ #category : 'tests' }
Die >> sumWithDie: aDie [
	| handle |
	handle := DieHandle new.
	handle addDie: self.
	handle addDie: aDie.
	^ handle
]

{ #category : 'tests' }
Die >> withFaces: aNumber [ 
	"create and initialize a new die with a number faces"
	| instance |
	instance := Die new.
	instance faces: aNumber.
	^ instance
]
