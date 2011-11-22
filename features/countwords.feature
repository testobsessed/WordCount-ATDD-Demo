Feature: Count words

	Scenario: Counts are case insensitive
		Given a card that says "A boy and his dog go for a walk."
		When I ask WordCount to count the words on the card
		Then I should see the counts:
			| Word	| Count	|
			| A		| 2		|
			| BOY	| 1		|
			| AND	| 1		|
			| HIS	| 1		|
			| DOG	| 1		|
			| GO	| 1		|
			| WALK	| 1		|

	Scenario: Counts strip leading and trailing punctuation
		Given a card that says "'Stay, boy, stay!' said the boy."
		When I ask WordCount to count the words on the card
		Then I should see the counts:
			| Word	| Count	|
			| STAY	| 2		|
			| BOY	| 2		|
			| SAID	| 1		|
			| THE	| 1		|

	Scenario: Counts retain internal punctuation
		Given a card that says "She'll pick up the shell."
		When I ask WordCount to count the words on the card
		Then I should see the counts:
			| Word	| Count	|
			| SHE'LL| 1		|
			| PICK	| 1		|
			| UP	| 1		|
			| THE	| 1		|
			| SHELL	| 1		|

		