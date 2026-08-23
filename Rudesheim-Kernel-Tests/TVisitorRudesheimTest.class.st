"
A TVisitorRudesheimTest is a test class for testing the behavior of TVisitorRudesheim
"
Class {
	#name : 'TVisitorRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Kernel-Tests-Visitor',
	#package : 'Rudesheim-Kernel-Tests',
	#tag : 'Visitor'
}

{ #category : 'accessing' }
TVisitorRudesheimTest class >> targetClass [
	^ VisitorForTestRudesheim.
]

{ #category : 'tests' }
TVisitorRudesheimTest >> runVisit [
	|
		results
	|

	results :=
	{
		Rudesheim Column Basic.
		Rudesheim Column ForNumber.
		Rudesheim Column ForString.
		Rudesheim Column ForDuration.
		Rudesheim Column ForDateAndTime
	}
		collect:
		[ :each |
			self targetClass
				visit:	each new.
		].

	self
		assert:
		(
			results
				at:	1
		) second
		equals:	#visitColumnRudesheim:.

	#( visitColumnForNumberRudesheim: visitColumnForStringRudesheim: visitColumnForDurationRudesheim: visitColumnForDateAndTimeRudesheim: )
		doWithIndex:
		[ :each :index |
			self
				assert:
				(
					results
						at:	1 + index
				) first
				equals:	each.
		].
]

{ #category : 'tests' }
TVisitorRudesheimTest >> testVisit [
	self runVisit.
]
