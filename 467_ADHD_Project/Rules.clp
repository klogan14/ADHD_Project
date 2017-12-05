(deftemplate questions (slot q1) (slot q2) (slot q3) (slot q4) (slot q5) (slot q6) (slot q7)
(slot q8) (slot q9) (slot q10) (slot q11) (slot q12) (slot q13) (slot q14) (slot q15) (slot q16)
(slot q17) (slot q18))
(defglobal ?*risk-factor* = 0)
;(assert(questions (q1 0) (q2 3) (q3 9) (q4 0) (q5 1) (q6  1)))

(defrule Q1Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q1 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q1Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q1 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q1Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q1 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q1Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q1 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q2Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q2 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q2Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q2 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q2Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q2 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q2Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q2 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q3Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q3 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q3Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q3 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q3Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q3 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q3Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q3 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q4Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q4 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q4Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q4 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q4Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q4 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q4Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q4 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q5Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q5 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q5Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q5 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q5Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q5 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q5Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q5 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q6Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q6 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q6Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q6 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q6Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q6 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q6Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q6 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q7Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q7 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q7Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q7 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)
(defrule Q7Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q7 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q7Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q7 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q8Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q8 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q8Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q8 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q8Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q8 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q8Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q8 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q9Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q9 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q9Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q9 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q9Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q9 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q9Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q9 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q10Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q10 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q10Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q10 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q10Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q10 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q10Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q10 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q11Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q11 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q11Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q11 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q11Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q11 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q11Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q11 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q12Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q12 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q12Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q12 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q12Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q12 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q12Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q12 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)



(defrule Q13Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q13 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q13Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q13 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q13Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?Q13Sometimes 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q13Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q13 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q14Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q14 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q14Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q14 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q14Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q14 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q14Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q14 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q15Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q15 1))
  =>
  (bind ?*risk-factor*(- ?*risk-factor* 10))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q15No
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q15 0))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 0))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q16Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q16 1))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 10))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q16No
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q16 0))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 0))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q17Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q17 1))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 10))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q17No
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q17 0))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 0))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q18Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q18 1))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 10))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q18No
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q18 0))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 0))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

;(run)
