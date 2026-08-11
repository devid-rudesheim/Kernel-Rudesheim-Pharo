Class {
	#name : 'BasicColumnRudesheim',
	#superclass : 'Object',
	#traits : 'TColumnRudesheim',
	#classTraits : 'TColumnRudesheim classTrait',
	#instVars : [
		'title',
		'evaluationForRead',
		'evaluationForWrite'
	],
	#category : 'Rudesheim-Kernel-Base-Visitor',
	#package : 'Rudesheim-Kernel-Base',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
BasicColumnRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitColumnRudesheim: self
]

{ #category : 'accessing' }
BasicColumnRudesheim >> defaultTitle [

	^ ''.

]

{ #category : 'accessing' }
BasicColumnRudesheim >> evaluationForRead [

	^ evaluationForRead
		ifNil:
		[
			evaluationForRead := self defaultEvaluationForRead.
		].

]

{ #category : 'accessing' }
BasicColumnRudesheim >> evaluationForRead: aBlock [

	evaluationForRead := aBlock
]

{ #category : 'accessing' }
BasicColumnRudesheim >> evaluationForWrite [

	^ evaluationForWrite
		ifNil:
		[
			evaluationForWrite := self defaultEvaluationForWrite.
		].

]

{ #category : 'accessing' }
BasicColumnRudesheim >> evaluationForWrite: aBlock [

	evaluationForWrite := aBlock
]

{ #category : 'accessing' }
BasicColumnRudesheim >> title [

	^ title
		ifNil:
		[
			title := self defaultTitle.
		].

]

{ #category : 'accessing' }
BasicColumnRudesheim >> title: aString [

	title := aString
]
