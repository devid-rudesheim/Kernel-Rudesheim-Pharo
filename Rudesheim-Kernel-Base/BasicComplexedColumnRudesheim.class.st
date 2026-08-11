Class {
	#name : 'BasicComplexedColumnRudesheim',
	#superclass : 'Object',
	#traits : 'TColumnRudesheim',
	#classTraits : 'TColumnRudesheim classTrait',
	#instVars : [
		'evaluationForWrite',
		'evaluationForRead',
		'columns'
	],
	#category : 'Rudesheim-Kernel-Base-Visitor',
	#package : 'Rudesheim-Kernel-Base',
	#tag : 'Visitor'
}

{ #category : 'accessing' }
BasicComplexedColumnRudesheim >> columns [

	^ columns
		ifNil:
		[
			columns := self defaultColumns.
		].

]

{ #category : 'accessing' }
BasicComplexedColumnRudesheim >> defaultColumns [

	^ OrderedCollection new.

]

{ #category : 'accessing' }
BasicComplexedColumnRudesheim >> evaluationForRead [

	^ evaluationForRead
		ifNil:
		[
			evaluationForRead := self defaultEvaluationForRead.
		].

]

{ #category : 'accessing' }
BasicComplexedColumnRudesheim >> evaluationForRead: anObject [

	evaluationForRead := anObject
]

{ #category : 'accessing' }
BasicComplexedColumnRudesheim >> evaluationForWrite [

	^ evaluationForWrite
		ifNil:
		[
			evaluationForWrite := self defaultEvaluationForWrite.
		].

]

{ #category : 'accessing' }
BasicComplexedColumnRudesheim >> evaluationForWrite: aBlock [

	evaluationForWrite := aBlock
]
