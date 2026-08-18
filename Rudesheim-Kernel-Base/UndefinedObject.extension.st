Extension { #name : 'UndefinedObject' }

{ #category : '*Rudesheim-Kernel-Base' }
UndefinedObject >> assertNotNilRudesheim [
	"nil overrides the Object default: signal ShouldNotNilRudesheim instead of
	answering self."

	ShouldNotNilRudesheim signal.
]
