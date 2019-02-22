%Homework Assignment #2
%Problem #1
sum_up_numbers_simple(L, N) :-
  [X|Y] = L,
  number(X),
  L1 = add_back_to_list(Y, X, R),
  sum_up_numbers_simple(L1, R),
  N is X + sum_list(L1);
  sum_up_numbers_simple(Y, R);
  N is X + sum_list(L1).

add_back_to_list(A, X, R) :-
  append(A, X, R).
  %This function should work with no errors

%Problem #2
sum_up_numbers_general(L, N) :-
  [X|Y] = L,
  is_list(X),
  length(X, R1) =:= 0,
  add_back_to_list(Y, R1, R2)
  sum_up_numbers_general(R2, R3);
  length(X, R1) > 0,
  append(Y, X, L1),
  sum_up_numbers_general(L2, R3);
  number(X),
  add_back_to_list(Y, X, R2),
  sum_up_numbers_general(R2, R3);
  N is X + sum_list(Y).
