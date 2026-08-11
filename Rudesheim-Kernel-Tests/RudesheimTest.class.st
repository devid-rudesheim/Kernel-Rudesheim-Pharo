"
A RudesheimTest is a test class for testing the behavior of Rudesheim
"
Class {
	#name : 'RudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Kernel-Tests',
	#package : 'Rudesheim-Kernel-Tests'
}

{ #category : 'accessing' }
RudesheimTest class >> targetClass [

	^ Rudesheim.
]

{ #category : 'tests' }
RudesheimTest >> testMembers [
	|
		root
	|
	
	root := self targetClass.

	self
		assert:	root Column
		equals: 	ColumnRudesheim;

		assert:	root Column Basic
		equals: 	BasicColumnRudesheim;

		assert:	root Column ForDateAndTime
		equals: 	ColumnForDateAndTimeRudesheim;

		assert:	root Column ForDuration
		equals: 	ColumnForDurationRudesheim;
		
		yourself.

]
