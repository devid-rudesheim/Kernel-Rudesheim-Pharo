Trait {
	#name : 'THostForVisitorRudesheim',
	#category : 'Rudesheim-Kernel-Visitor',
	#package : 'Rudesheim-Kernel',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
THostForVisitorRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitObject: self
]
