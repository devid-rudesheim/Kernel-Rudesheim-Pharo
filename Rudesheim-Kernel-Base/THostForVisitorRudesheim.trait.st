Trait {
	#name : 'THostForVisitorRudesheim',
	#category : 'Rudesheim-Kernel-Base-Visitor',
	#package : 'Rudesheim-Kernel-Base',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
THostForVisitorRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitObject: self
]
