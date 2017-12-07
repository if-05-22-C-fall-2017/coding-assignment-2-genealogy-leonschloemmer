parent(adam, john).
parent(eve, john).
parent(eve, lisa).
parent(john, anne).
parent(john, pat).
parent(pat, jacob).
parent(carol, jacob).


male(adam).
male(john).
male(pat).
male(jacob).
female(eve).
female(anne).
female(lisa).
female(carol).

grandparent(GP, GC) :- parent(C, GC), parent(GP, C).

ancestor(X, Z) :- parent(X, Z).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).

/*listen*/
head(X, [X| _]).
tail(T, [_ |T]).

/*verwendung tail: T ist eine liste ohne head*/