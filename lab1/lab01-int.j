﻿CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "¬¬(E→F) ⊢ ¬¬E→¬¬F"
INFER ¬¬(E→F)
     ⊢ ¬¬E→¬¬F 
FORMULAE
0 ⊥,
1 ¬¬(E→F),
2 ¬(E→F),
3 ¬¬E,
4 ¬E,
5 ¬F,
6 F,
7 E,
8 E→F,
9 ¬¬F 
IS
SEQ ("→ intro"[A,B\3,9]) ("¬ intro"[A\5]) (cut[B,C\2,0]) ("¬ intro"[A\8]) (cut[B,C\4,0]) ("¬ intro"[A\7]) (cut[B,C\6,0]) ("→ elim"[A,B\7,6]) (hyp[A\8]) (hyp[A\7]) (cut[B,C\6,0]) (hyp[A\6]) (cut[B,C\0,0]) ("¬ elim"[B\6]) (hyp[A\6]) (hyp[A\5]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "E∨F, ¬F∨G ⊢ E∨G"
INFER E∨F,
     ¬F∨G 
     ⊢ E∨G 
FORMULAE
0 G,
1 E,
2 ⊥,
3 E∨G,
4 ¬F,
5 F,
6 ¬F∨G,
7 E∨F 
IS
SEQ ("∨ elim"[A,B,C\1,5,3]) (hyp[A\7]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\0,1]) (hyp[A\1])) ("∨ elim"[A,B,C\4,0,3]) (hyp[A\6]) (cut[B,C\5,3]) (hyp[A\5]) (cut[B,C\2,3]) ("¬ elim"[B\5]) (hyp[A\5]) (hyp[A\4]) ("contra (constructive)"[B\3]) (hyp[A\2]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\1,0]) (hyp[A\0]))
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "E→¬F ⊢ F→¬E"
INFER E→¬F 
     ⊢ F→¬E 
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 E,
4 E→¬F,
5 ¬E 
IS
SEQ ("→ intro"[A,B\2,5]) ("¬ intro"[A\3]) (cut[B,C\1,0]) ("→ elim"[A,B\3,1]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "E→(F∨G), ¬F, ¬G ⊢ ¬E"
INFER E→(F∨G),
     ¬F,
     ¬G 
     ⊢ ¬E 
FORMULAE
0 ⊥,
1 ¬G,
2 G,
3 ¬F,
4 F,
5 F∨G,
6 E,
7 E→F∨G,
8 E→(F∨G)
IS
SEQ ("¬ intro"[A\6]) (cut[B,C\5,0]) ("→ elim"[A,B\6,5]) (hyp[A\7]) (hyp[A\6]) ("∨ elim"[A,B,C\4,2,0]) (hyp[A\5]) (cut[B,C\4,0]) (hyp[A\4]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "E∧¬F ⊢ ¬(E→F)"
INFER E∧¬F 
     ⊢ ¬(E→F)
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 E,
4 E→F,
5 E∧¬F 
IS
SEQ ("¬ intro"[A\4]) (cut[B,C\1,0]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\3,1]) (hyp[A\5])) (cut[B,C\3,0]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\3,1]) (hyp[A\5])) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "E→(F∨G), F→A, G→A ⊢ E→A"
INFER E→(F∨G),
     F→A,
     G→A 
     ⊢ E→A 
FORMULAE
0 A,
1 G,
2 G→A,
3 F,
4 F→A,
5 F∨G,
6 E,
7 E→F∨G,
8 E→(F∨G)
IS
SEQ ("→ intro"[A,B\6,0]) (cut[B,C\5,0]) ("→ elim"[A,B\6,5]) (hyp[A\7]) (hyp[A\6]) ("∨ elim"[A,B,C\3,1,0]) (hyp[A\5]) (cut[B,C\0,0]) ("→ elim"[A,B\3,0]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("→ elim"[A,B\1,0]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "¬(¬E∨F) ⊢ ¬(E→F)"
INFER ¬(¬E∨F)
     ⊢ ¬(E→F)
FORMULAE
0 ⊥,
1 ¬(¬E∨F),
2 ¬E∨F,
3 ¬E,
4 F,
5 E,
6 E→F,
7 ¬(¬E∨F)
IS
SEQ ("¬ intro"[A\6]) (cut[B,C\3,0]) ("¬ intro"[A\5]) (cut[B,C\4,0]) ("→ elim"[A,B\5,4]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\3,4]) (hyp[A\4])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\4,3]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "¬¬E∧¬¬F ⊢ ¬¬(E∧F)"
INFER ¬¬E∧¬¬F 
     ⊢ ¬¬(E∧F)
FORMULAE
0 ⊥,
1 ¬¬F,
2 ¬F,
3 ¬¬E,
4 ¬E,
5 ¬(E∧F),
6 E∧F,
7 F,
8 E,
9 ¬¬E∧¬¬F,
10 ¬¬(E∧F)
IS
SEQ (cut[B,C\3,10]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\3,1]) (hyp[A\9])) (cut[B,C\1,10]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\3,1]) (hyp[A\9])) ("¬ intro"[A\5]) (cut[B,C\2,0]) ("¬ intro"[A\7]) (cut[B,C\4,0]) ("¬ intro"[A\8]) (cut[B,C\6,0]) ("∧ intro"[A,B\8,7]) (hyp[A\8]) (hyp[A\7]) (cut[B,C\0,0]) ("¬ elim"[B\6]) (hyp[A\6]) (hyp[A\5]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "(E→F)→(¬¬E→¬¬F)"
INFER (E→F)→(¬¬E→¬¬F)
FORMULAE
0 ⊥,
1 ¬¬E,
2 ¬E,
3 ¬F,
4 F,
5 E,
6 E→F,
7 ¬¬F,
8 ¬¬E→¬¬F 
IS
SEQ ("→ intro"[A,B\6,8]) ("→ intro"[A,B\1,7]) ("¬ intro"[A\3]) (cut[B,C\2,0]) ("¬ intro"[A\5]) (cut[B,C\4,0]) ("→ elim"[A,B\5,4]) (hyp[A\6]) (hyp[A\5]) (cut[B,C\4,0]) (hyp[A\4]) (cut[B,C\0,0]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "¬¬E→¬¬F ⊢ ¬¬(E→F)"
INFER ¬¬E→¬¬F 
     ⊢ ¬¬(E→F)
FORMULAE
0 ⊥,
1 ¬(E→F),
2 E→F,
3 F,
4 ¬¬F,
5 ¬F,
6 E,
7 ¬¬E,
8 ¬¬E→¬¬F,
9 ¬E,
10 ¬(E→F)
IS
SEQ ("¬ intro"[A\10]) (cut[B,C\2,0]) ("→ intro"[A,B\6,3]) (cut[B,C\7,3]) ("¬ intro"[A\9]) (cut[B,C\6,0]) (hyp[A\6]) (cut[B,C\0,0]) ("¬ elim"[B\6]) (hyp[A\6]) (hyp[A\9]) (hyp[A\0]) (cut[B,C\4,3]) ("→ elim"[A,B\7,4]) (hyp[A\8]) (hyp[A\7]) (cut[B,C\5,3]) ("¬ intro"[A\3]) (cut[B,C\2,0]) ("→ intro"[A,B\6,3]) (hyp[A\3]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\0,3]) ("¬ elim"[B\5]) (hyp[A\5]) (hyp[A\4]) (cut[B,C\2,3]) ("contra (constructive)"[B\2]) (hyp[A\0]) (cut[B,C\0,3]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) ("contra (constructive)"[B\3]) (hyp[A\0]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "¬¬(E∧F) ⊢ ¬¬E∧¬¬F"
INFER ¬¬(E∧F)
     ⊢ ¬¬E∧¬¬F 
FORMULAE
0 ¬¬F,
1 ¬¬E,
2 ⊥,
3 ¬¬(E∧F),
4 ¬(E∧F),
5 ¬F,
6 F,
7 E∧F,
8 E,
9 ¬¬E∧¬¬F,
10 ¬E 
IS
SEQ (cut[B,C\1,9]) ("¬ intro"[A\10]) (cut[B,C\4,2]) ("¬ intro"[A\7]) (cut[B,C\8,2]) (LAYOUT "∧ elim" (0) ("∧ elim(L)"[A,B\8,6]) (hyp[A\7])) (cut[B,C\8,2]) (hyp[A\8]) (cut[B,C\2,2]) ("¬ elim"[B\8]) (hyp[A\8]) (hyp[A\10]) (hyp[A\2]) (cut[B,C\2,2]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\2]) (cut[B,C\0,9]) ("¬ intro"[A\5]) (cut[B,C\4,2]) ("¬ intro"[A\7]) (cut[B,C\6,2]) (LAYOUT "∧ elim" (0) ("∧ elim(R)"[A,B\8,6]) (hyp[A\7])) (cut[B,C\6,2]) (hyp[A\6]) (cut[B,C\2,2]) ("¬ elim"[B\6]) (hyp[A\6]) (hyp[A\5]) (hyp[A\2]) (cut[B,C\2,2]) ("¬ elim"[B\4]) (hyp[A\4]) (hyp[A\3]) (hyp[A\2]) ("∧ intro"[A,B\1,0]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "¬¬(E∨¬E)"
INFER ¬¬(E∨¬E)
FORMULAE
0 ⊥,
1 ¬(E∨¬E),
2 E∨¬E,
3 ¬E,
4 E 
IS
SEQ ("¬ intro"[A\1]) (cut[B,C\3,0]) ("¬ intro"[A\4]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\3,4]) (hyp[A\4])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0]) (cut[B,C\2,0]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\4,3]) (hyp[A\3])) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "E→¬E ⊢ ¬E"
INFER E→¬E 
     ⊢ ¬E 
FORMULAE
0 ⊥,
1 ¬E,
2 E,
3 E→¬E 
IS
SEQ ("¬ intro"[A\2]) (cut[B,C\1,0]) ("→ elim"[A,B\2,1]) (hyp[A\3]) (hyp[A\2]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
PROOF "¬E→(E→(E→F))"
INFER ¬E→(E→(E→F))
FORMULAE
0 ⊥,
1 E→F,
2 ¬E,
3 E,
4 E→(E→F)
IS
SEQ ("→ intro"[A,B\2,4]) ("→ intro"[A,B\3,1]) (cut[B,C\3,1]) (hyp[A\3]) (cut[B,C\0,1]) ("¬ elim"[B\3]) (hyp[A\3]) (hyp[A\2]) ("contra (constructive)"[B\1]) (hyp[A\0])
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 1"
CURRENTPROOF "E∨F, ¬F∨G ⊢ E∨G"
INFER E∨F,
     ¬F∨G 
     ⊢ E∨G 
FORMULAE
0 G,
1 E,
2 ⊥,
3 E∨G,
4 ¬F,
5 F,
6 ¬F∨G,
7 E∨F 
IS
SEQ ("∨ elim"[A,B,C\1,5,3]) (hyp[A\7]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\0,1]) (hyp[A\1])) ("∨ elim"[A,B,C\4,0,3]) (hyp[A\6]) (cut[B,C\5,3]) (hyp[A\5]) (cut[B,C\2,3]) ("¬ elim"[B\5]) (hyp[A\5]) (hyp[A\4]) ("contra (constructive)"[B\3]) (hyp[A\2]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\1,0]) (hyp[A\0]))
END
