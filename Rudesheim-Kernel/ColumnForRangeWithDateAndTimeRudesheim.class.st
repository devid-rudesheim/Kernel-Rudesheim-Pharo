Class {
	#name : 'ColumnForRangeWithDateAndTimeRudesheim',
	#superclass : 'BasicComplexedColumnRudesheim',
	#category : 'Rudesheim-Kernel-Visitor',
	#package : 'Rudesheim-Kernel',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
ColumnForRangeWithDateAndTimeRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitColumnForRangeWithDateAndTimeRudesheim: self
]
