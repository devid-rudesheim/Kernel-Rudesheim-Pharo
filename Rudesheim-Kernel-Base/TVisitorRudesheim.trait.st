Trait {
	#name : 'TVisitorRudesheim',
	#category : 'Rudesheim-Kernel-Base-Visitor',
	#package : 'Rudesheim-Kernel-Base',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
TVisitorRudesheim >> visit: aTHostForVisitorRudesheim [

	^ aTHostForVisitorRudesheim
		acceptTVisitorRudesheim:	self.
]

{ #category : 'visiting' }
TVisitorRudesheim >> visitColumnForDateAndTimeRudesheim: aColumnForDateAndTimeRudesheim [

	^ self
		visitColumnRudesheim: aColumnForDateAndTimeRudesheim
]

{ #category : 'visiting' }
TVisitorRudesheim >> visitColumnForDurationRudesheim: aColumnForDurationRudesheim [

	^ self
		visitColumnRudesheim: aColumnForDurationRudesheim
]

{ #category : 'visiting' }
TVisitorRudesheim >> visitColumnForNumberRudesheim: aColumnForNumberRudesheim [

	^ self
		visitColumnRudesheim: aColumnForNumberRudesheim
]

{ #category : 'visiting' }
TVisitorRudesheim >> visitColumnForStringRudesheim: aColumnForStringRudesheim [

	^ self
		visitColumnRudesheim: aColumnForStringRudesheim
]

{ #category : 'visiting' }
TVisitorRudesheim >> visitColumnRudesheim: aTColumnRudesheim [

	^ self
		visitObject: aTColumnRudesheim
]

{ #category : 'visiting' }
TVisitorRudesheim >> visitObject:	anObject [
	
	^ self subclassResponsibility.
]
