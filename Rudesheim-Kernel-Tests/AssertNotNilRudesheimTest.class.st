"
An AssertNotNilRudesheimTest is a test class for testing the behavior of
Object>>assertNotNilRudesheim and UndefinedObject>>assertNotNilRudesheim
"
Class {
	#name : 'AssertNotNilRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Kernel-Tests',
	#package : 'Rudesheim-Kernel-Tests'
}

{ #category : 'accessing' }
AssertNotNilRudesheimTest class >> targetClass [
	^ OrderedCollection.
]

{ #category : 'tests' }
AssertNotNilRudesheimTest >> testNonNilReceiverAnswersItself [
	self
		assert:	self basicTarget assertNotNilRudesheim
		equals:	self basicTarget.
]

{ #category : 'tests' }
AssertNotNilRudesheimTest >> testNilReceiverRaisesShouldNotNilRudesheim [
	self
		should:
		[
			nil assertNotNilRudesheim.
		]
		raise:	Rudesheim ShouldNotNil.
]
