Class {
	#name : 'BaselineOfRudesheimKernel',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRudesheimKernel',
	#package : 'BaselineOfRudesheimKernel'
}

{ #category : 'baselines' }
BaselineOfRudesheimKernel >> baseline: spec [
	<baseline>

	spec
		for: #common
		do:
		[
			spec
				package: 'Rudesheim-Kernel-Base';

				package: 'Rudesheim-Kernel-Private'
				with:
				[
					spec
						requires: #( 'Rudesheim-Kernel-Base' )
				];

				package: 'Rudesheim-Kernel'
				with:
				[
					spec
						requires: #( 'Rudesheim-Kernel-Base' 'Rudesheim-Kernel-Private' )
				];

				group:		#core
				with:		#( 'Rudesheim-Kernel-Base' 'Rudesheim-Kernel-Private' 'Rudesheim-Kernel' );

				group:		#default
				with:		#( #core ).

			spec
				baseline: 'RudesheimUtility'
				with:
				[
					spec repository: 'github://devid-rudesheim/Utility-Rudesheim-Pharo:main'
				];

				project: 'RudesheimUtilityTests'
				copyFrom: 'RudesheimUtility'
				with:
				[
					spec loads: #( 'tests' )
				];

				package: 'Rudesheim-Kernel-Tests'
				with:
				[
					spec
						requires: #( 'Rudesheim-Kernel' 'RudesheimUtilityTests' )
				];

				group:		#tests
				with:		#( 'Rudesheim-Kernel-Tests' ).
		]
]
