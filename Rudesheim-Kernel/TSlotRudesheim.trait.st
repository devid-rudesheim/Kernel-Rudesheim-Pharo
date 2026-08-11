Trait {
	#name : 'TSlotRudesheim',
	#category : 'Rudesheim-Kernel-Visitor',
	#package : 'Rudesheim-Kernel',
	#tag : 'Visitor'
}

{ #category : 'meta-object-protocol' }
TSlotRudesheim >> read: anObject [
	^ self subclassResponsibility
]

{ #category : 'meta-object-protocol' }
TSlotRudesheim >> write: aValue to: anObject [
	^self subclassResponsibility
]
