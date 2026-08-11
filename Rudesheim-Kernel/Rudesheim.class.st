"
Im namespace of the rudesheim
"
Class {
	#name : 'Rudesheim',
	#superclass : 'Object',
	#category : 'Rudesheim-Kernel-Namespace',
	#package : 'Rudesheim-Kernel',
	#tag : 'Namespace'
}

{ #category : 'namespace' }
Rudesheim class >> Column [

	^ ColumnRudesheim
]

{ #category : 'namespace' }
Rudesheim class >> OS [
	^ OSRudesheim.
]

{ #category : 'namespace' }
Rudesheim class >> Utility [

	^ Smalltalk globals at: #UtilityRudesheim
]
