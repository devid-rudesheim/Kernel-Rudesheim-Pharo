Trait {
	#name : 'TColumnRudesheim',
	#traits : 'THostForVisitorRudesheim + TSlotRudesheim',
	#classTraits : 'THostForVisitorRudesheim classTrait + TSlotRudesheim classTrait',
	#category : 'Rudesheim-Kernel-Visitor',
	#package : 'Rudesheim-Kernel',
	#tag : 'Visitor'
}

{ #category : 'accessing' }
TColumnRudesheim >> defaultEvaluationForRead [

	^
	[ :row |
		row value.
	].
]

{ #category : 'visiting' }
TColumnRudesheim >> defaultEvaluationForWrite [

	^
	[ :value :row |
		row
			value:	value.
	].
]

{ #category : 'accessing' }
TColumnRudesheim >> evaluationForRead [

	^ self defaultEvaluationForRead.
]

{ #category : 'accessing' }
TColumnRudesheim >> evaluationForWrite [

	^
	[ :row :value |
		row
			value:	value.
	].
]

{ #category : 'meta-object-protocol' }
TColumnRudesheim >> read: anObject [

	^ self evaluationForRead
		value:	anObject 
]

{ #category : 'accessing' }
TColumnRudesheim >> title [

	^ ''
]

{ #category : 'meta-object-protocol' }
TColumnRudesheim >> write:		aValue
to:			anObject [

	^ self evaluationForWrite
		value: 	aValue
		value: 	anObject.
]
