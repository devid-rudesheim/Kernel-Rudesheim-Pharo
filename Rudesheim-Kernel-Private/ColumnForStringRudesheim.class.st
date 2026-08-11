Class {
	#name : 'ColumnForStringRudesheim',
	#superclass : 'BasicColumnRudesheim',
	#category : 'Rudesheim-Kernel-Private',
	#package : 'Rudesheim-Kernel-Private'
}

{ #category : 'visiting' }
ColumnForStringRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [
	^ aTVisitorRudesheim
		visitColumnForStringRudesheim:	self.
]
