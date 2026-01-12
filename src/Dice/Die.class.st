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
Die >> withFaces: aNumber [ 
	"create and initialize a new die with a number faces"
	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance
]
