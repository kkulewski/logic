﻿CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.R(x)→S ⊢ ∀x.(R(x)→S)"
WHERE x NOTIN S 
INFER ∃x.R(x)→S 
     ⊢ ∀x.(R(x)→S)
FORMULAE
0 S,
1 ∃x.R(x),
2 ∃x.R(x)→S,
3 actual i,
4 R(i),
5 R(x),
6 i,
7 x,
8 R(x)→S 
IS
SEQ ("∀ intro"[i,P,x\6,8,7]) ("→ intro"[A,B\4,0]) (cut[B,C\4,0]) (hyp[A\4]) (cut[B,C\1,0]) ("∃ intro"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∀x.(R(x)→S) ⊢ ∃x.R(x)→S"
WHERE x NOTIN S 
INFER ∀x.(R(x)→S)
     ⊢ ∃x.R(x)→S 
FORMULAE
0 S,
1 R(i),
2 R(i)→S,
3 actual i,
4 ∀x.(R(x)→S),
5 R(x)→S,
6 i,
7 x,
8 ∃x.R(x),
9 R(x)
IS
SEQ ("→ intro"[A,B\8,0]) ("∃ elim"[i,C,P,x\6,0,9,7]) (hyp[A\8]) (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R→∀x.S(x) ⊢ ∀x.(R→S(x))"
WHERE x NOTIN R 
INFER R→∀x.S(x)
     ⊢ ∀x.(R→S(x))
FORMULAE
0 S(i),
1 actual i,
2 ∀x.S(x),
3 S(x),
4 i,
5 x,
6 R,
7 R→∀x.S(x),
8 R→S(x)
IS
SEQ ("∀ intro"[i,P,x\4,8,5]) ("→ intro"[A,B\6,0]) (cut[B,C\2,0]) ("→ elim"[A,B\6,2]) (hyp[A\7]) (hyp[A\6]) (cut[B,C\0,0]) ("∀ elim"[P,i,x\3,4,5]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.(R∨S(x)) ⊢ R∨∃x.S(x)"
WHERE x NOTIN R 
INFER ∃x.(R∨S(x))
     ⊢ R∨∃x.S(x)
FORMULAE
0 ∃x.S(x),
1 R,
2 actual i,
3 S(i),
4 S(x),
5 i,
6 x,
7 R∨∃x.S(x),
8 R∨S(i),
9 ∃x.(R∨S(x)),
10 R∨S(x),
11 ∃x.(R∨S(x))
IS
SEQ ("∃ elim"[i,C,P,x\5,7,10,6]) (hyp[A\9]) ("∨ elim"[A,B,C\1,3,7]) (hyp[A\8]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\0,1]) (hyp[A\1])) (cut[B,C\3,7]) (hyp[A\3]) (cut[B,C\0,7]) ("∃ intro"[P,i,x\4,5,6]) (hyp[A\3]) (hyp[A\2]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\1,0]) (hyp[A\0]))
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.(R→S(x)) ⊢ R→∃x.S(x)"
WHERE x NOTIN R 
INFER ∃x.(R→S(x))
     ⊢ R→∃x.S(x)
FORMULAE
0 actual i,
1 S(i),
2 S(x),
3 i,
4 x,
5 ∃x.S(x),
6 R,
7 R→S(i),
8 ∃x.(R→S(x)),
9 R→∃x.S(x),
10 R→S(x),
11 ∃x.(R→S(x))
IS
SEQ ("∃ elim"[i,C,P,x\3,9,10,4]) (hyp[A\8]) ("→ intro"[A,B\6,5]) (cut[B,C\1,5]) ("→ elim"[A,B\6,1]) (hyp[A\7]) (hyp[A\6]) (cut[B,C\1,5]) (hyp[A\1]) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.(R∧S(x)) ⊢ R∧∃x.S(x)"
WHERE x NOTIN R 
INFER ∃x.(R∧S(x))
     ⊢ R∧∃x.S(x)
FORMULAE
0 ∃x.S(x),
1 R,
2 actual i,
3 S(i),
4 S(x),
5 i,
6 x,
7 R∧∃x.S(x),
8 R∧S(i),
9 ∃x.(R∧S(x)),
10 R∧S(x),
11 ∃x.(R∧S(x))
IS
SEQ ("∃ elim"[i,C,P,x\5,7,10,6]) (hyp[A\9]) (cut[B,C\3,7]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\1,3]) (hyp[A\8])) (cut[B,C\1,7]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\1,3]) (hyp[A\8])) (cut[B,C\1,7]) (hyp[A\1]) (cut[B,C\3,7]) (hyp[A\3]) (cut[B,C\0,7]) ("∃ intro"[P,i,x\4,5,6]) (hyp[A\3]) (hyp[A\2]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R∧∃x.S(x) ⊢ ∃x.(R∧S(x))"
WHERE x NOTIN R 
INFER R∧∃x.S(x)
     ⊢ ∃x.(R∧S(x))
FORMULAE
0 actual i,
1 R∧S(i),
2 R∧S(x),
3 i,
4 x,
5 S(i),
6 R,
7 ∃x.(R∧S(x)),
8 ∃x.S(x),
9 S(x),
10 R∧∃x.S(x)
IS
SEQ (cut[B,C\8,7]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\6,8]) (hyp[A\10])) (cut[B,C\6,7]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\6,8]) (hyp[A\10])) ("∃ elim"[i,C,P,x\3,7,9,4]) (hyp[A\8]) (cut[B,C\1,7]) ("∧ intro"[A,B\6,5]) (hyp[A\6]) (hyp[A\5]) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R∨∀x.S(x) ⊢ ∀x.(R∨S(x))"
WHERE x NOTIN R 
INFER R∨∀x.S(x)
     ⊢ ∀x.(R∨S(x))
FORMULAE
0 S(i1),
1 R,
2 R∨S(i1),
3 actual i1,
4 ∀x.S(x),
5 S(x),
6 i1,
7 x,
8 R∨S(x),
9 S(i),
10 i,
11 R∨∀x.S(x),
12 ∀x.(R∨S(x)),
13 actual i 
IS
SEQ ("∨ elim"[A,B,C\1,4,12]) (hyp[A\11]) ("∀ intro"[i,P,x\10,8,7]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\9,1]) (hyp[A\1])) ("∀ intro"[i,P,x\6,8,7]) (cut[B,C\0,2]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,2]) (hyp[A\0]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\1,0]) (hyp[A\0]))
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "actual j, ∀x.(R∧S(x)) ⊢ R∧∀x.S(x)"
WHERE x NOTIN R 
INFER actual j,
     ∀x.(R∧S(x))
     ⊢ R∧∀x.S(x)
FORMULAE
0 ∀x.S(x),
1 R,
2 S(i),
3 R∧S(i),
4 actual i,
5 ∀x.(R∧S(x)),
6 R∧S(x),
7 i,
8 x,
9 S(x),
10 R∧∀x.S(x),
11 R∧S(j),
12 S(j),
13 actual j,
14 j 
IS
SEQ (cut[B,C\11,10]) ("∀ elim"[P,i,x\6,14,8]) (hyp[A\5]) (hyp[A\13]) (cut[B,C\1,10]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\1,12]) (hyp[A\11])) (cut[B,C\1,10]) (hyp[A\1]) (cut[B,C\0,10]) ("∀ intro"[i,P,x\7,9,8]) (cut[B,C\3,2]) ("∀ elim"[P,i,x\6,7,8]) (hyp[A\5]) (hyp[A\4]) (cut[B,C\2,2]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\1,2]) (hyp[A\3])) (hyp[A\2]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∃x.(R(x)→S) ⊢ ∀x.R(x)→S"
WHERE x NOTIN S 
INFER ∃x.(R(x)→S)
     ⊢ ∀x.R(x)→S 
FORMULAE
0 S,
1 R(i),
2 R(i)→S,
3 actual i,
4 ∀x.R(x),
5 R(x),
6 i,
7 x,
8 ∃x.(R(x)→S),
9 ∀x.R(x)→S,
10 R(x)→S,
11 ∃x.(R(x)→S)
IS
SEQ ("∃ elim"[i,C,P,x\6,9,10,7]) (hyp[A\8]) ("→ intro"[A,B\4,0]) (cut[B,C\1,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "R∧∀x.S(x) ⊢ ∀x.(R∧S(x))"
WHERE x NOTIN R 
INFER R∧∀x.S(x)
     ⊢ ∀x.(R∧S(x))
FORMULAE
0 S(i),
1 R,
2 actual i,
3 ∀x.S(x),
4 S(x),
5 i,
6 x,
7 R∧S(i),
8 R∧S(x),
9 R∧∀x.S(x),
10 ∀x.(R∧S(x))
IS
SEQ (cut[B,C\1,10]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\1,3]) (hyp[A\9])) (cut[B,C\3,10]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\1,3]) (hyp[A\9])) ("∀ intro"[i,P,x\5,8,6]) (cut[B,C\0,7]) ("∀ elim"[P,i,x\4,5,6]) (hyp[A\3]) (hyp[A\2]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "∀x.(R→S(x)) ⊢ R→∀x.S(x)"
WHERE x NOTIN R 
INFER ∀x.(R→S(x))
     ⊢ R→∀x.S(x)
FORMULAE
0 S(i),
1 R,
2 R→S(i),
3 actual i,
4 ∀x.(R→S(x)),
5 R→S(x),
6 i,
7 x,
8 S(x),
9 ∀x.S(x)
IS
SEQ ("→ intro"[A,B\1,9]) ("∀ intro"[i,P,x\6,8,7]) (cut[B,C\2,0]) ("∀ elim"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\1,0]) (hyp[A\1]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami"
PROOF "actual j, R∨∃x.P(x) ⊢ ∃x.(R∨P(x))"
WHERE x NOTIN R 
INFER actual j,
     R∨∃x.P(x)
     ⊢ ∃x.(R∨P(x))
FORMULAE
0 actual i,
1 R∨P(i),
2 R∨P(x),
3 i,
4 x,
5 P(i),
6 R,
7 ∃x.(R∨P(x)),
8 ∃x.P(x),
9 P(x),
10 actual j,
11 R∨P(j),
12 j,
13 P(j),
14 R∨∃x.P(x)
IS
SEQ ("∨ elim"[A,B,C\6,8,7]) (hyp[A\14]) (cut[B,C\11,7]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\13,6]) (hyp[A\6])) ("∃ intro"[P,i,x\2,12,4]) (hyp[A\11]) (hyp[A\10]) ("∃ elim"[i,C,P,x\3,7,9,4]) (hyp[A\8]) (cut[B,C\1,7]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\6,5]) (hyp[A\5])) ("∃ intro"[P,i,x\2,3,4]) (hyp[A\1]) (hyp[A\0])
END
