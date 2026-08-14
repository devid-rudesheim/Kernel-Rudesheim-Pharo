"
Default/base representation of the current OS, reached as `Smalltalk os rudesheim` or, for reflective discovery, `Rudesheim OS`. Scopes platform-specific behavior contributed by other packages (see e.g. Rudesheim-OpenCL''s extension adding #openCL) via .extension.st files, since concrete behavior for a given subsystem often needs to live in that subsystem''s own package rather than here. MacOSRudesheim overrides this for macOS and WinRudesheim overrides this for Windows, mirroring Pharo''s own OSPlatform -> MacOSPlatform / OSPlatform -> WinPlatform relationships.
"
Class {
	#name : 'OSRudesheim',
	#superclass : 'Object',
	#category : 'Rudesheim-Kernel-OS',
	#package : 'Rudesheim-Kernel',
	#tag : 'OS'
}

{ #category : 'namespace' }
OSRudesheim class >> Mac [
	^ MacOSRudesheim.
]

{ #category : 'namespace' }
OSRudesheim class >> Win [
	^ WinRudesheim.
]
