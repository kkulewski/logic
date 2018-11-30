CONJECTUREPANEL "Równoważności z kwantyfikatorami klasycznie"
PROOF "actual j, R→∃x.S(x) ⊢ ∃x.(R→S(x))"
WHERE x NOTIN R 
INFER actual j,
     R→∃x.S(x)
     ⊢ ∃x.(R→S(x))
FORMULAE
0 ⊥,
1 ¬∃x.(R→S(x)),
2 ∃x.(R→S(x)),
3 actual i,
4 R→S(i),
5 R→S(x),
6 i,
7 x,
8 S(i),
9 R,
10 ∃x.S(x),
11 S(x),
12 R→∃x.S(x),
13 actual j,
14 R→S(j),
15 j,
16 S(j),
17 ¬R 
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\9,0]) ("contra (classical)"[A\9]) (cut[B,C\14,0]) ("→ intro"[A,B\9,16]) (cut[B,C\0,16]) ("¬ elim"[B\9]) (hyp[A\9]) (hyp[A\17]) ("contra (constructive)"[B\16]) (hyp[A\0]) (cut[B,C\2,0]) ("∃ intro"[P,i,x\5,15,7]) (hyp[A\14]) (hyp[A\13]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\10,0]) ("→ elim"[A,B\9,10]) (hyp[A\12]) (hyp[A\9]) (cut[B,C\2,0]) ("∃ elim"[i,C,P,x\6,2,11,7]) (hyp[A\10]) (cut[B,C\4,2]) ("→ intro"[A,B\9,8]) (hyp[A\8]) ("∃ intro"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami klasycznie"
PROOF "actual j, ∀x.R(x)→S ⊢ ∃x.(R(x)→S)"
WHERE x NOTIN S 
INFER actual j,
     ∀x.R(x)→S 
     ⊢ ∃x.(R(x)→S)
FORMULAE
0 ⊥,
1 ¬∃x.(R(x)→S),
2 ∃x.(R(x)→S),
3 actual j,
4 R(j)→S,
5 R(x)→S,
6 j,
7 x,
8 S,
9 R(j),
10 ∀x.R(x),
11 ∀x.R(x)→S,
12 actual i,
13 R(i)→S,
14 i,
15 ¬R(i),
16 R(i),
17 R(x)
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\10,0]) ("∀ intro"[i,P,x\14,17,7]) ("contra (classical)"[A\16]) (cut[B,C\13,0]) ("→ intro"[A,B\16,8]) (cut[B,C\16,8]) (hyp[A\16]) (cut[B,C\0,8]) ("¬ elim"[B\16]) (hyp[A\16]) (hyp[A\15]) ("contra (constructive)"[B\8]) (hyp[A\0]) (cut[B,C\2,0]) ("∃ intro"[P,i,x\5,14,7]) (hyp[A\13]) (hyp[A\12]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\8,0]) ("→ elim"[A,B\10,8]) (hyp[A\11]) (hyp[A\10]) (cut[B,C\4,0]) ("→ intro"[A,B\9,8]) (hyp[A\8]) (cut[B,C\2,0]) ("∃ intro"[P,i,x\5,6,7]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Równoważności z kwantyfikatorami klasycznie"
PROOF "∀x.(R∨S(x)) ⊢ R∨∀x.S(x)"
WHERE x NOTIN R 
INFER ∀x.(R∨S(x))
     ⊢ R∨∀x.S(x)
FORMULAE
0 ⊥,
1 ¬(R∨∀x.S(x)),
2 R∨∀x.S(x),
3 ∀x.S(x),
4 R,
5 S(i),
6 R∨S(i),
7 actual i,
8 ∀x.(R∨S(x)),
9 R∨S(x),
10 i,
11 x,
12 S(x),
13 ¬S(i),
14 ∀x.(R∨S(x))
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\3,0]) ("∀ intro"[i,P,x\10,12,11]) (cut[B,C\6,5]) ("∀ elim"[P,i,x\9,10,11]) (hyp[A\8]) (hyp[A\7]) ("∨ elim"[A,B,C\4,5,5]) (hyp[A\6]) ("contra (classical)"[A\5]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\3,4]) (hyp[A\4])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (hyp[A\5]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\4,3]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
