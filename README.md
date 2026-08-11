# Rudesheim Kernel for Pharo

Rudesheim Kernel provides the common domain kernel used by the Rudesheim Pharo projects.
It defines the root `Rudesheim` namespace, operating-system access points, visitor traits, slots, and column abstractions.

## Installation

Load the default project group with Metacello:

```smalltalk
Metacello new
	baseline: 'RudesheimKernel';
	repository: 'github://devid-rudesheim/Kernel-Rudesheim-Pharo:main';
	load
```

This also loads the required `RudesheimUtility` dependency from GitHub.

## Groups

- `core`: runtime kernel packages.
- `tests`: SUnit tests for the kernel packages.
- `default`: aliases `core`.

To load the tests:

```smalltalk
Metacello new
	baseline: 'RudesheimKernel';
	repository: 'github://devid-rudesheim/Kernel-Rudesheim-Pharo:main';
	load: #(tests)
```

## Run Tests

After loading the test group, run:

```smalltalk
(RPackageOrganizer default packageNamed: 'Rudesheim-Kernel-Tests') asTestSuite run
```
