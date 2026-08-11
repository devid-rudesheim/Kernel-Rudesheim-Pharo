Class {
	#name : 'ColumnForDateAndTimeRudesheim',
	#superclass : 'BasicColumnRudesheim',
	#category : 'Rudesheim-Kernel-Base-Visitor',
	#package : 'Rudesheim-Kernel-Base',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
ColumnForDateAndTimeRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitColumnForDateAndTimeRudesheim: self
]
