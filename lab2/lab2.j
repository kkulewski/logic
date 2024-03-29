﻿CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 2"
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
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 2"
PROOF "F→G ⊢ E∨F→E∨G"
INFER F→G 
     ⊢ E∨F→E∨G 
FORMULAE
0 G,
1 E,
2 F,
3 F→G,
4 E∨G,
5 E∨F 
IS
SEQ ("→ intro"[A,B\5,4]) ("∨ elim"[A,B,C\1,2,4]) (hyp[A\5]) (LAYOUT "∨ intro" (0) ("∨ intro(L)"[B,A\0,1]) (hyp[A\1])) (cut[B,C\0,4]) ("→ elim"[A,B\2,0]) (hyp[A\3]) (hyp[A\2]) (LAYOUT "∨ intro" (0) ("∨ intro(R)"[B,A\1,0]) (hyp[A\0]))
END
CONJECTUREPANEL "Intuicjonistyczny rachunek zdań - lab. 2"
PROOF "E→F, E→¬F ⊢ ¬E"
INFER E→F,
     E→¬F 
     ⊢ ¬E 
FORMULAE
0 ⊥,
1 ¬F,
2 F,
3 E,
4 E→¬F,
5 E→F 
IS
SEQ ("¬ intro"[A\3]) (cut[B,C\2,0]) ("→ elim"[A,B\3,2]) (hyp[A\5]) (hyp[A\3]) (cut[B,C\1,0]) ("→ elim"[A,B\3,1]) (hyp[A\4]) (hyp[A\3]) (cut[B,C\2,0]) (hyp[A\2]) (cut[B,C\0,0]) ("¬ elim"[B\2]) (hyp[A\2]) (hyp[A\1]) (hyp[A\0])
END
