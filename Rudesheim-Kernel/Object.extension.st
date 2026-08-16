Extension { #name : 'Object' }

{ #category : '*Rudesheim-Kernel' }
Object >> releaseIfApplicableRudesheim [
	"Default hook for optionally releasing a backend-owned resource (e.g. an
	OpenCL buffer). Most values (plain Arrays, numbers, ...) own no such
	resource, so the default is a no-op; classes that do own one override
	this to call #releaseRudesheim. Callers send this unconditionally
	instead of guarding with #respondsTo:."

	^ self
]
