﻿CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "(E→F)∧(¬E→F) ⊢ F"
INFER (E→F)∧(¬E→F)
     ⊢ F 
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 E,
4 E→F,
5 ¬E,
6 ¬E→F,
7 (E→F)∧(¬E→F)
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\4,0]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\4,6]) (hyp[A\7])) (cut[B,C\6,0]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\4,6]) (hyp[A\7])) (cut[B,C\3,0]) ("contra (classical)"[A\3]) (cut[B,C\2,0]) ("→ elim"[A,B\5,2]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "¬(E∧F) ⊢ ¬E∨¬F"
INFER ¬(E∧F)
     ⊢ ¬E∨¬F 
FORMULAE
0 ⊥,
1 ¬(E∧F),
2 E∧F,
3 F,
4 E,
5 ¬(¬E∨¬F),
6 ¬E∨¬F,
7 ¬F,
8 ¬E,
9 ¬(E∧F)
IS
SEQ ("contra (classical)"[A\6]) (cut[B,C\4,0]) ("contra (classical)"[A\4]) (cut[B,C\6,0]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\7,8]) (hyp[A\8])) (cut[B,C\0,0]) ("¬ elim"[B\6]) (hyp[A\6]) (hyp[A\5]) (hyp[A\0]) (cut[B,C\3,0]) ("contra (classical)"[A\3]) (cut[B,C\6,0]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\8,7]) (hyp[A\7])) (cut[B,C\0,0]) ("¬ elim"[B\6]) (hyp[A\6]) (hyp[A\5]) (hyp[A\0]) (cut[B,C\2,0]) ("∧ intro"[A,B\4,3]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "¬(¬E∧¬F) ⊢ E∨F"
INFER ¬(¬E∧¬F)
     ⊢ E∨F 
FORMULAE
0 ⊥,
1 ¬(¬E∧¬F),
2 ¬E∧¬F,
3 ¬F,
4 ¬E,
5 ¬(E∨F),
6 E∨F,
7 F,
8 E,
9 ¬(¬E∧¬F)
IS
SEQ ("contra (classical)"[A\6]) (cut[B,C\4,0]) ("¬ intro"[A\8]) (cut[B,C\6,0]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\7,8]) (hyp[A\8])) (cut[B,C\0,0]) ("¬ elim"[B\6]) (hyp[A\6]) (hyp[A\5]) (hyp[A\0]) (cut[B,C\3,0]) ("¬ intro"[A\7]) (cut[B,C\6,0]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\8,7]) (hyp[A\7])) (cut[B,C\0,0]) ("¬ elim"[B\6]) (hyp[A\6]) (hyp[A\5]) (hyp[A\0]) (cut[B,C\2,0]) ("∧ intro"[A,B\4,3]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "¬(¬E∨¬F) ⊢ E∧F"
INFER ¬(¬E∨¬F)
     ⊢ E∧F 
FORMULAE
0 F,
1 E,
2 ⊥,
3 ¬(¬E∨¬F),
4 ¬E∨¬F,
5 ¬F,
6 ¬E,
7 E∧F 
IS
SEQ (cut[B,C\1,7]) ("contra (classical)"[A\1]) (cut[B,C\4,2]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\5,6]) (hyp[A\6])) (cut[B,C\2,2]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\2]) (cut[B,C\0,7]) ("contra (classical)"[A\0]) (cut[B,C\4,2]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\6,5]) (hyp[A\5])) (cut[B,C\2,2]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\2]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "((E→F)→E)→E"
INFER ((E→F)→E)→E 
FORMULAE
0 ⊥,
1 ¬E,
2 E,
3 E→F,
4 (E→F)→E,
5 F 
IS
SEQ ("→ intro"[A,B\4,2]) ("contra (classical)"[A\2]) (cut[B,C\3,0]) ("→ intro"[A,B\2,5]) (cut[B,C\2,5]) (hyp[A\2]) (cut[B,C\0,5]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) ("contra (constructive)"[B\5]) (hyp[A\0]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "¬E→F, ¬E→¬F ⊢ E"
INFER ¬E→F,
     ¬E→¬F 
     ⊢ E 
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 ¬E,
4 ¬E→¬F,
5 ¬E→F,
6 E 
IS
SEQ ("contra (classical)"[A\6]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\5]) (hyp[A\3]) (cut[B,C\1,0]) ("→ elim"[A,B\3,1]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "(E→F)∨(F→E)"
INFER (E→F)∨(F→E)
FORMULAE
0 ⊥,
1 ¬((E→F)∨(F→E)),
2 (E→F)∨(F→E),
3 E→F,
4 F→E,
5 F,
6 E,
7 ¬((E→F)∨(F→E))
IS
SEQ ("contra (classical)"[A\2]) (cut[B,C\3,0]) ("→ intro"[A,B\6,5]) (cut[B,C\4,5]) ("→ intro"[A,B\5,6]) (hyp[A\6]) (cut[B,C\2,5]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\3,4]) (hyp[A\4])) (cut[B,C\0,5]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) ("contra (constructive)"[B\5]) (hyp[A\0]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\4,3]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Klasyczny rachunek zdań - lab. 2"
PROOF "¬¬E ⊢ E"
INFER ¬¬E 
     ⊢ E 
FORMULAE
0 ⊥,
1 ¬¬E,
2 ¬E,
3 E 
IS
SEQ ("contra (classical)"[A\3]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
