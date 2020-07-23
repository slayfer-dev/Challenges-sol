sum([X], X).
sum([X|T], Total) :- sum(T,Z), Total is X + Z.

chars_to_ints([C],[I]) :- atom_number(C, I).
chars_to_ints([C|T1],[I|T2]) :- atom_number(C, I), chars_to_ints(T1, T2).

subtract_sum(N, R) :-
  atom_chars(N, C),
  chars_to_ints(C, I),
  sum(I, T),
  A is N - T,
  word(A, R).

word(X, S) :- X > 100, subtract_sum(X, S).
word(1, "kiwi").
word(2, "pear").
word(3, "kiwi").
word(4, "banana").
word(5, "melon").
word(6, "banana").
word(7, "melon").
word(8, "pineapple").
word(9, "apple").
word(10, "pineapple").
word(11, "cucumber").
word(12, "pineapple").
word(13, "cucumber").
word(14, "orange").
word(15, "grape").
word(16, "orange").
word(17, "grape").
word(18, "apple").
word(19, "grape").
word(20, "cherry").
word(21, "pear").
word(22, "cherry").
word(23, "pear").
word(24, "kiwi").
word(25, "banana").
word(26, "kiwi").
word(27, "apple").
word(28, "melon").
word(29, "banana").
word(30, "melon").
word(31, "pineapple").
word(32, "melon").
word(33, "pineapple").
word(34, "cucumber").
word(35, "orange").
word(36, "apple").
word(37, "orange").
word(38, "grape").
word(39, "orange").
word(40, "grape").
word(41, "cherry").
word(42, "pear").
word(43, "cherry").
word(44, "pear").
word(45, "apple").
word(46, "pear").
word(47, "kiwi").
word(48, "banana").
word(49, "kiwi").
word(50, "banana").
word(51, "melon").
word(52, "pineapple").
word(53, "melon").
word(54, "apple").
word(55, "cucumber").
word(56, "pineapple").
word(57, "cucumber").
word(58, "orange").
word(59, "cucumber").
word(60, "orange").
word(61, "grape").
word(62, "cherry").
word(63, "apple").
word(64, "cherry").
word(65, "pear").
word(66, "cherry").
word(67, "pear").
word(68, "kiwi").
word(69, "pear").
word(70, "kiwi").
word(71, "banana").
word(72, "apple").
word(73, "banana").
word(74, "melon").
word(75, "pineapple").
word(76, "melon").
word(77, "pineapple").
word(78, "cucumber").
word(79, "pineapple").
word(80, "cucumber").
word(81, "apple").
word(82, "grape").
word(83, "orange").
word(84, "grape").
word(85, "cherry").
word(86, "grape").
word(87, "cherry").
word(88, "pear").
word(89, "cherry").
word(90, "apple").
word(91, "kiwi").
word(92, "banana").
word(93, "kiwi").
word(94, "banana").
word(95, "melon").
word(96, "banana").
word(97, "melon").
word(98, "pineapple").
word(99, "apple").
word(100, "pineapple").