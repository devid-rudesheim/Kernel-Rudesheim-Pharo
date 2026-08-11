"
A RHBasicColumnTest is a test class for testing the behavior of RHBasicColumn
"
Class {
	#name : 'BasicColumnRudesheimTest',
	#superclass : 'BasicRudesheimTest',
	#category : 'Rudesheim-Kernel-Tests-Visitor',
	#package : 'Rudesheim-Kernel-Tests',
	#tag : 'Visitor'
}

{ #category : 'accessing' }
BasicColumnRudesheimTest class >> targetClass [
	^ BasicColumnRudesheim.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> runAcceptTVisitorRudesheim0 [
	|
		visitor
	|

	visitor :=
		MockObject new
			on:	#visitColumnRudesheim:
			with:	self basicTarget
			respond:	self sourceValue.

	self
		assert:	
		(
			self basicTarget
				acceptTVisitorRudesheim:	visitor
		)
		equals:	self expectedValue.

	visitor
		verifyIn:	self.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> runEvaluationForRead0 [
	self
		assert:	
		(
			self
				basicTarget
				evaluationForRead
				value:	
				self
					sourceValue
					asValueHolder
		)
		equals:	self expectedValue.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> runEvaluationForWrite0 [
	self
		basicTarget
		evaluationForWrite
		value:	self sourceValue
		value:
		[ :value |
			self
				assert:	value
				equals:	self expectedValue.

			^ self.
		].

	self fail.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> runRead0 [
	self
		assert:	
		(
			self basicTarget
				read:	
				self
					sourceValue
					asValueHolder
		)
		equals:	self expectedValue.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> runWriteTo0 [
	self basicTarget
		write:	self sourceValue
		to:
		[ :value |
			self
				assert:	value
				equals:	self expectedValue.

			^ self.
		].

	self fail.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testAcceptTVisitorRudesheim [
	self testAcceptTVisitorRudesheim0_0.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testAcceptTVisitorRudesheim0_0 [
	self
		sourceValue:	1;
		expectedValue:	1;
		runAcceptTVisitorRudesheim0.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testEvaluationForRead [
	self
		testEvaluationForRead0_0;
		tearDown;
		setUp;
		testEvaluationForRead0_1.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testEvaluationForRead0_0 [
	self
		sourceValue:	1;
		expectedValue:	1;
		runEvaluationForRead0.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testEvaluationForRead0_1 [
	self basicTarget
		evaluationForRead:
		[ :row |
			1 + row value.
		].

	self
		sourceValue:	1;
		expectedValue:	2;
		runEvaluationForRead0.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testEvaluationForWrite [
	self
		testEvaluationForWrite0_0;
		tearDown;
		setUp;
		testEvaluationForWrite0_1.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testEvaluationForWrite0_0 [
	self
		sourceValue:	1;
		expectedValue:	1;
		runEvaluationForWrite0.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testEvaluationForWrite0_1 [
	self basicTarget
		evaluationForWrite:
		[ :value :row |
			row
				value:	1 + value.
		].

	self
		sourceValue:	1;
		expectedValue:	2;
		runEvaluationForWrite0.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testRead [
	self
		testRead0_0;
		tearDown;
		setUp;
		testRead0_1.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testRead0_0 [
	self
		sourceValue:	1;
		expectedValue:	1;
		runRead0.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testRead0_1 [
	self basicTarget
		evaluationForRead:
		[ :row |
			1 + row value.
		].

	self
		sourceValue:	1;
		expectedValue:	2;
		runRead0.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testWriteTo [
	self
		testWriteTo0_0;
		tearDown;
		setUp;
		testWriteTo0_1.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testWriteTo0_0 [
	self
		sourceValue:	1;
		expectedValue:	1;
		runWriteTo0.
]

{ #category : 'tests' }
BasicColumnRudesheimTest >> testWriteTo0_1 [
	self basicTarget
		evaluationForWrite:
		[ :value :row |
			row
				value:	1 + value.
		].

	self
		sourceValue:	1;
		expectedValue:	2;
		runWriteTo0.
]
