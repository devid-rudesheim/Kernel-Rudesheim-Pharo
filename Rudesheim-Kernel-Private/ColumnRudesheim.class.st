"
Im namespace of the rudesheim column
"
Class {
	#name : 'ColumnRudesheim',
	#superclass : 'Object',
	#category : 'Rudesheim-Kernel-Private',
	#package : 'Rudesheim-Kernel-Private'
}

{ #category : 'namespace' }
ColumnRudesheim class >> Basic [

	^ BasicColumnRudesheim
]

{ #category : 'namespace' }
ColumnRudesheim class >> BasicComplexed [ ^ BasicComplexedColumnRudesheim
]

{ #category : 'namespace' }
ColumnRudesheim class >> ForDateAndTime [

	^ ColumnForDateAndTimeRudesheim.
]

{ #category : 'namespace' }
ColumnRudesheim class >> ForDuration [

	^ ColumnForDurationRudesheim.
]

{ #category : 'namespace' }
ColumnRudesheim class >> ForNumber [

	^ ColumnForNumberRudesheim.
]

{ #category : 'namespace' }
ColumnRudesheim class >> ForRangeWithDateAndTime [ ^ ColumnForRangeWithDateAndTimeRudesheim
]

{ #category : 'namespace' }
ColumnRudesheim class >> ForString [

	^ ColumnForStringRudesheim.
]
