%Homework Assignment #2
%Problem #1
sumUpNumbersSimple(L, N):-
  [X|Y] = L,
  Z is 0,
  N is Z + X,
  sumUpNumbersSimple(Y, N).
  %When I ran sum-up-numbers-simple([100,200], 0) the simulator returned back
  %false.
