"
Overrides OSRudesheim (its superclass) for Windows, mirroring Pharo's own OSPlatform -> WinPlatform relationship and covering Win32Platform/Win64Platform via inheritance (both subclass WinPlatform). Reached as `Smalltalk os rudesheim` on Windows, or `Rudesheim OS Win` for reflective discovery. Scopes platform-specific behavior contributed by other packages (see e.g. Rudesheim-Table-Query's extension adding #tableQuery) via .extension.st files, since concrete behavior for a given subsystem often needs to live in that subsystem's own package rather than here.
"
Class {
	#name : 'WinRudesheim',
	#superclass : 'OSRudesheim',
	#category : 'Rudesheim-Kernel-OS',
	#package : 'Rudesheim-Kernel',
	#tag : 'OS'
}
