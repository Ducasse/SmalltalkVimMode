find-mode
findBeforeIndexOfCharacter: aKeyboardEvent
	| pointIndex index |
	index := self findNextIndexOfCharacter: aKeyboardEvent. 
 pointIndex := editor pointIndex. 

 index = 1
  ifTrue: [ ^ pointIndex ].
 
 index := index = pointIndex 
  ifTrue: [ index ]
  ifFalse: [ index - 1 ].

 ^ index