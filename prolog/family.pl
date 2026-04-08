% ---------- Exercise 1: Family Tree ----------

% Parent relationships
parent(john, mary).
parent(john, mark).
parent(susan, mary).
parent(susan, mark).

parent(mary, alice).
parent(mark, bob).

% Sibling: share at least one parent
sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

% Grandparent
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Ancestor (recursive)
ancestor(X, Y) :- parent(X, Y).

ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).


% ---------- Exercise 2: Preferences ----------

% Likes
likes(john, pizza).
likes(john, rice).
likes(mary, pasta).
likes(mary, pizza).
likes(mary, salad).
likes(mark, burger).
likes(alice, icecream).
likes(bob, pizza).

% Dislikes
dislikes(john, burger).
dislikes(mary, pizza).
dislikes(mark, pasta).
dislikes(alice, rice).
dislikes(bob, salad).

% Can eat rule (likes AND not dislikes)
can_eat(Person, Food) :- likes(Person, Food), \+ dislikes(Person, Food).


% ---------- Exercise 3: Grade System with Cut ----------

% Grades
grade(alice, a).
grade(bob, b).
grade(charlie, c).
grade(david, b).

% Rule 1: Grade 'a' → automatically pass (no message)
passes(Student) :- grade(Student, a), !.

% Rule 2: Others → print message
passes(Student) :- grade(Student, _), write(Student), write(' needs further checking'), nl.


% ---------- Exercise 4: Backtracking ----------

% (Already handled by multiple likes/2 facts)
% Example query:
% ?- likes(mary, Food).


% ---------- Exercise 5: Food Recommendation ----------

recommend(Person, Food) :- likes(Person, Food), \+ dislikes(Person, Food).
