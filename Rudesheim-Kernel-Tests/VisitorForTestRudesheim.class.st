Class {
	#name : 'VisitorForTestRudesheim',
	#superclass : 'Object',
	#classTraits : 'TVisitorRudesheim',
	#category : 'Rudesheim-Kernel-Tests-Visitor',
	#package : 'Rudesheim-Kernel-Tests',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
VisitorForTestRudesheim class >> visitObject: anObject [
	^
	{
		thisContext
			sender
			sender
			selector.
		thisContext
			sender
			selector.
		thisContext selector
	}.
]
