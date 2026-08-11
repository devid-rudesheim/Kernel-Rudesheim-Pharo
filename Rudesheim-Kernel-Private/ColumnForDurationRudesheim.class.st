Class {
	#name : 'ColumnForDurationRudesheim',
	#superclass : 'BasicColumnRudesheim',
	#category : 'Rudesheim-Kernel-Private',
	#package : 'Rudesheim-Kernel-Private'
}

{ #category : 'visiting' }
ColumnForDurationRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [
	^ aTVisitorRudesheim
		visitColumnForDurationRudesheim:	self.
]
