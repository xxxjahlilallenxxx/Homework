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

%Problem #3
min_above_min(L1, L2, N) :-
  length(L1, R1),
  length(L2, R2),
  write(R1 > R2),
  R1 > R2;
  R2 > R1,
  write(R1 > R2),

%Problem #4
common_unique_elements(L1, L2, N) :-
  Result1 is ((length(L1, R1)) =:= (length(L2, R2))),
  Result1 =:= true,
  check_for_match(L1, L2, []).


check_for_match(L1, L2, Result) :-
  length(L1, R1) > 0,
  length(L2, R2) > 0,
  [X1|Y1] = L1,
  [X2|Y2] = L2,
  X1 =:= X2,
  write([X1 | Result]),
  check_for_match(Y1, Y2, Result).

check_list_for_lowest(L, R):-
  [X1|Y1] = L,
  [X2|Y2] = Y1,
  number(X1),
  number(X2),
  X1 < X2;
  number(X2),
  check_list_for_lowest(write([Y2|X1], R), R1);
  number(X1),
  check_list_for_lowest(write([X1|Y1], R), R1);
  is_list(X2),
  length(X2) =:= 0,
  length(X2).
