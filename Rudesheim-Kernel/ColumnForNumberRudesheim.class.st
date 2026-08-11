Class {
	#name : 'ColumnForNumberRudesheim',
	#superclass : 'BasicColumnRudesheim',
	#category : 'Rudesheim-Kernel-Visitor',
	#package : 'Rudesheim-Kernel',
	#tag : 'Visitor'
}

{ #category : 'visiting' }
ColumnForNumberRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitColumnForNumberRudesheim: self
]
