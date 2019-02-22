%Homework Assignment #2
%Problem #1
sum_up_numbers_simple(L, N) :-
  [X|Y] = L,
  number(X),
  L1 = add_back_to_list(Y, X, R),
  sum_up_numbers_general(L1, R),
  N is X + sum_list(L1);
  sum_up_numbers_general(Y, R);
  N is X + sum_list(L1).

add_back_to_list(A, X, R) :-
  append(A, X, R).
  %When I ran sum-up-numbers-simple([100,200], 0) the simulator returned back
  %false.

%Problem #2
sum_up_numbers_general(L, N) :-
  [X|Y] = L,
  is_list(X),
  length(X, R1) =:= 0,
  add_back_to_list(R1, Y, R2)
  sum_up_numbers_general(R2, R3);
  
