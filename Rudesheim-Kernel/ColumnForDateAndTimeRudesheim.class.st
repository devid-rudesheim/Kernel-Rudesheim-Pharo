Class {
	#name : 'ColumnForDateAndTimeRudesheim',
	#superclass : 'BasicColumnRudesheim',
	#category : 'Rudesheim-Kernel-Visitor',
	#package : 'Rudesheim-Kernel',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
ColumnForDateAndTimeRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitColumnForDateAndTimeRudesheim: self
]
