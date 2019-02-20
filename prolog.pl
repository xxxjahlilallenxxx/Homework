%Homework Assignment #2
%Problem #1
sum-up-numbers-simple(L, N):-
  [X|Y] = L,
  Z is 0,
  N is Z + X,
  sum-up-numbers-simple(Y, N).
  %When I ran sum-up-numbers-simple([100,200], 0) the simulator returned back
  %false.
