Class {
	#name : 'ColumnForNumberRudesheim',
	#superclass : 'BasicColumnRudesheim',
	#category : 'Rudesheim-Kernel-Base-Visitor',
	#package : 'Rudesheim-Kernel-Base',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
ColumnForNumberRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitColumnForNumberRudesheim: self
]
