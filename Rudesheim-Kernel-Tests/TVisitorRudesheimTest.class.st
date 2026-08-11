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
		{BasicColumnRudesheim .  ColumnForNumberRudesheim .  ColumnForStringRudesheim .  ColumnForDurationRudesheim .  ColumnForDateAndTimeRudesheim}
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
		)
			second
		equals:	#visitColumnRudesheim:.

	#(visitColumnForNumberRudesheim: visitColumnForStringRudesheim: visitColumnForDurationRudesheim: visitColumnForDateAndTimeRudesheim:)
		doWithIndex:
		[ :each :index |
			self
				assert:	
				(
					results
						at:	1 + index
				)
					first
				equals:	each.
		].
]

{ #category : 'tests' }
TVisitorRudesheimTest >> testVisit [
	self runVisit.
]
