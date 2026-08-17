"
An AssertNotNilRudesheimTest is a test class for testing the behavior of
Object>>assertNotNilRudesheim and UndefinedObject>>assertNotNilRudesheim
"
Class {
	#name : 'AssertNotNilRudesheimTest',
	#superclass : 'TestCase',
	#category : 'Rudesheim-Kernel-Tests',
	#package : 'Rudesheim-Kernel-Tests'
}

{ #category : 'tests' }
AssertNotNilRudesheimTest >> testNonNilReceiverAnswersItself [
	|
		receiver
	|

	receiver := OrderedCollection new.

	self
		assert:	receiver assertNotNilRudesheim
		equals:	receiver.
]

{ #category : 'tests' }
AssertNotNilRudesheimTest >> testNilReceiverRaisesShouldNotNilRudesheim [
	self
		should:	[ nil assertNotNilRudesheim ]
		raise:	Rudesheim ShouldNotNil.
]
