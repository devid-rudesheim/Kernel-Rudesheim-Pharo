Class {
	#name : 'ColumnForRangeWithDateAndTimeRudesheim',
	#superclass : 'BasicComplexedColumnRudesheim',
	#category : 'Rudesheim-Kernel-Base-Visitor',
	#package : 'Rudesheim-Kernel-Base',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
ColumnForRangeWithDateAndTimeRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitColumnForRangeWithDateAndTimeRudesheim: self
]
