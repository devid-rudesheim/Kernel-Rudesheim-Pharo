Extension { #name : 'Object' }

{ #category : '*Rudesheim-Kernel-Base' }
Object >> assertNotNilRudesheim [
	"Nil guard for Rudesheim-internal invariant / precondition checks. Non-nil
	receivers just answer themselves; UndefinedObject overrides this to signal
	ShouldNotNilRudesheim instead."

	^ self
]
