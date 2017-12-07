(deftemplate questions (slot q1) (slot q2) (slot q3) (slot q4) (slot q5) (slot q6) (slot q7)
(slot q8) (slot q9) (slot q10) (slot q11) (slot q12) (slot q13) (slot q14) (slot q15) (slot q16)
(slot q17) (slot q18))

(deftemplate RiskFactor (slot factor))
(deftemplate q1Risk (slot factor))
(deftemplate q2Risk (slot factor))
(deftemplate q3Risk (slot factor))
(deftemplate q4Risk (slot factor))
(deftemplate q5Risk (slot factor))
(deftemplate q6Risk (slot factor))
(deftemplate q7Risk (slot factor))
(deftemplate q8Risk (slot factor))
(deftemplate q9Risk (slot factor))
(deftemplate q10Risk (slot factor))
(deftemplate q11Risk (slot factor))
(deftemplate q12Risk (slot factor))
(deftemplate q13Risk (slot factor))
(deftemplate q14Risk (slot factor))
(deftemplate q15Risk (slot factor))
(deftemplate q16Risk (slot factor))
(deftemplate q17Risk (slot factor))
(deftemplate q18Risk (slot factor))
(deftemplate Concern (slot concern))

(assert(RiskFactor(factor 0)))

(defglobal ?*risk-factor* = 0)

;(assert(questions (q1 0) (q2 3) (q3 9) (q4 9) (q5 6) (q6  6)
;(q7 0) (q8 3) (q9 0) (q10 9) (q11 6) (q12  3)
;(q13 0) (q14 3) (q15 1) (q16 0) (q17 1) (q18  1)))

;(declare (from-class RiskFactor)
;             (include-variables TRUE))

(defrule Q1Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q1 0))
					 =>
					 (assert (q1Risk(factor 0)))
)

(defrule Q1Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q1 3))
					 =>
					 (assert (q1Risk(factor 3)))
)

(defrule Q1Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q1 6))
					 =>
					 (assert (q1Risk(factor 6)))
)

(defrule Q1Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q1 9))
					 =>
					 (assert (q1Risk(factor 9)))
)

(defrule Q2Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q2 0))
					 =>
					 (assert (q2Risk(factor 0)))
)

(defrule Q2Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q2 3))
					 =>
					 (assert (q2Risk(factor 3)))
)

(defrule Q2Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q2 6))
					 =>
					 (assert (q2Risk(factor 6)))
)

(defrule Q2Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q2 9))
					 =>
					 (assert (q2Risk(factor 9)))
)

(defrule Q3Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q3 0))
					 =>
					 (assert (q3Risk(factor 0)))
)

(defrule Q3Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q3 3))
					 =>
					 (assert (q3Risk(factor 3)))
)


(defrule Q3Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q3 6))
					 =>
					 (assert (q3Risk(factor 6)))
)

(defrule Q3Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q3 9))
					 =>
					 (assert (q3Risk(factor 9)))
)

(defrule Q4Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q4 0))
					 =>
					 (assert (q4Risk(factor 0)))
)

(defrule Q4Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q4 3))
					 =>
					 (assert (q4Risk(factor 3)))
)

(defrule Q4Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q4 6))
					 =>
					 (assert (q4Risk(factor 6)))
)

(defrule Q4Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q4 9))
					 =>
					 (assert (q4Risk(factor 9)))
)


(defrule Q5Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q5 0))
					 =>
					 (assert (q5Risk(factor 0)))
)

(defrule Q5Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q5 3))
					 =>
					 (assert (q5Risk(factor 3)))
)

(defrule Q5Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q5 6))
					 =>
					 (assert (q5Risk(factor 6)))
)

(defrule Q5Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q5 9))
					 =>
					 (assert (q5Risk(factor 9)))
)


(defrule Q6Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q6 0))
					 =>
					 (assert (q6Risk(factor 0)))
)

(defrule Q6Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q6 3))
					 =>
					 (assert (q6Risk(factor 3)))
)

(defrule Q6Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q6 6))
					 =>
					 (assert (q6Risk(factor 6)))
)

(defrule Q6Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q6 9))
					 =>
					 (assert (q6Risk(factor 9)))
)


(defrule Q7Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q7 0))
					 =>
					 (assert (q7Risk(factor 0)))
)

(defrule Q7Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q7 3))
					 =>
					 (assert (q7Risk(factor 3)))
)

(defrule Q7Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q7 6))
					 =>
					 (assert (q7Risk(factor 6)))
)

(defrule Q7Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q7 9))
					 =>
					 (assert (q7Risk(factor 9)))
)


(defrule Q8Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q8 0))
					 =>
					 (assert (q8Risk(factor 0)))
)

(defrule Q8Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q8 3))
					 =>
					 (assert (q8Risk(factor 3)))
)

(defrule Q8Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q8 6))
					 =>
					 (assert (q8Risk(factor 6)))
)

(defrule Q8Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q8 9))
					 =>
					 (assert (q8Risk(factor 9)))
)


(defrule Q9Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q9 0))
					 =>
					 (assert (q9Risk(factor 0)))
)

(defrule Q9Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q9 3))
					 =>
					 (assert (q9Risk(factor 3)))
)

(defrule Q9Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q9 6))
					 =>
					 (assert (q9Risk(factor 6)))
)

(defrule Q9Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q9 9))
					 =>
					 (assert (q9Risk(factor 9)))
)


(defrule Q10Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q10 0))
					 =>
					 (assert (q10Risk(factor 0)))
)

(defrule Q10Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q10 3))
					 =>
					 (assert (q10Risk(factor 3)))
)

(defrule Q10Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q10 6))
					 =>
					 (assert (q10Risk(factor 6)))
)

(defrule Q10Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q10 9))
					 =>
					 (assert (q10Risk(factor 9)))
)


(defrule Q11Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q11 0))
					 =>
					 (assert (q11Risk(factor 0)))
)

(defrule Q11Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q11 3))
					 =>
					 (assert (q11Risk(factor 3)))
)

(defrule Q11Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q11 6))
					 =>
					 (assert (q11Risk(factor 6)))
)

(defrule Q11Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q11 9))
					 =>
					 (assert (q11Risk(factor 9)))
)

(defrule Q12Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q12 0))
					 =>
					 (assert (q12Risk(factor 0)))
)

(defrule Q12Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q12 3))
					 =>
					 (assert (q12Risk(factor 3)))
)

(defrule Q12Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q12 6))
					 =>
					 (assert (q12Risk(factor 6)))
)

(defrule Q12Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q12 9))
					 =>
					 (assert (q12Risk(factor 9)))
)



(defrule Q13Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q13 0))
					 =>
					 (assert (q13Risk(factor 0)))
)

(defrule Q13Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q13 3))
					 =>
					 (assert (q13Risk(factor 3)))
)

(defrule Q13Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q13 6))
					 =>
					 (assert (q13Risk(factor 6)))
)


(defrule Q13Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q13 9))
					 =>
					 (assert (q13Risk(factor 9)))
)


(defrule Q14Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q14 0))
					 =>
					 (assert (q14Risk(factor 0)))
)

(defrule Q14Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q14 3))
					 =>
					 (assert (q14Risk(factor 3)))
)

(defrule Q14Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q14 6))
					 =>
					 (assert (q14Risk(factor 6)))
)

(defrule Q14Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
          (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
          (q18 ?q18))
					 (test (= ?q14 9))
					 =>
					 (assert (q14Risk(factor 9)))
)


(defrule Q15Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q15 1))
  =>
	(assert (q15Risk(factor -10)))
)

(defrule Q15No
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q15 0))
  =>
	(assert (q15Risk(factor 0)))
)

(defrule Q16Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q16 1))
  =>
	(assert (q16Risk(factor 10)))
)

(defrule Q16No
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q16 0))
  =>
	(assert (q16Risk(factor 0)))
)

(defrule Q17Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q17 1))
  =>
	(assert (q17Risk(factor 10)))
)

(defrule Q17No
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q17 0))
  =>
	(assert (q17Risk(factor 0)))
)

(defrule Q18Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q18 1))
  =>
	(assert (q18Risk(factor 10)))
)

(defrule Q18No
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6) (q7 ?q7) (q8 ?q8)
  (q9 ?q9) (q10 ?q10) (q11 ?q11) (q12 ?q12) (q13 ?q13) (q14 ?q14) (q15 ?q15) (q16 ?q16) (q17 ?q17)
  (q18 ?q18))
  (test (= ?q18 0))
  =>
	(assert (q18Risk(factor 0)))
)

(defrule addUpRiskFactor
	(q1Risk(factor ?q1Risk))
	(q2Risk(factor ?q2Risk))
	(q3Risk(factor ?q3Risk))
	(q4Risk(factor ?q4Risk))
	(q5Risk(factor ?q5Risk))
	(q6Risk(factor ?q6Risk))
	(q7Risk(factor ?q7Risk))
	(q8Risk(factor ?q8Risk))
	(q9Risk(factor ?q9Risk))
	(q10Risk(factor ?q10Risk))
	(q11Risk(factor ?q11Risk))
	(q12Risk(factor ?q12Risk))
	(q13Risk(factor ?q13Risk))
	(q14Risk(factor ?q14Risk))
	(q15Risk(factor ?q15Risk))
	(q16Risk(factor ?q16Risk))
	(q17Risk(factor ?q17Risk))
	(q18Risk(factor ?q18Risk))
	=>
	(assert(RiskFactor (factor (+(+(+(+ ?q1Risk ?q2Risk) (+ ?q3Risk ?q4Risk)) (+(+ ?q5Risk ?q6Risk) (+ ?q7Risk ?q8Risk))(+(+(+ ?q9Risk ?q10Risk) (+ ?q11Risk ?q12Risk)) (+(+ ?q13Risk ?q14Risk) (+ ?q15Risk ?q16Risk))))(+ ?q17Risk ?q18Risk))))
))

(defrule low
	(RiskFactor (factor ?factor&:(< ?factor 23.2)))
	=>
 (printout t  "LOW " ?factor " Out of 156" crlf)
 (assert (Concern (concern LOW)))
)

(defrule lowMed

	(RiskFactor (factor ?factor&:(and(>= ?factor 18.2)(<= ?factor 56.4))))
	=>
 	(printout t  "LOW MED " ?factor " Out of 156" crlf)
	(assert (Concern (concern LOWMED)))
	)

	(defrule Med
		(RiskFactor (factor ?factor&:(and(>= ?factor 51.4)(<= ?factor 89.6))))
		=>
	 	(printout t  "MED " ?factor " Out of 156" crlf)
		(assert (Concern (concern MED)))
		)

	(defrule MedHigh
		(RiskFactor (factor ?factor&:(and(>= ?factor 84.6)(<= ?factor 122.8))))
			=>
	 	(printout t  "MED HIGH " ?factor " Out of 156" crlf)
		(assert (Concern (concern MEDHIGH)))
		)

	(defrule High
		(RiskFactor (factor ?factor&:(and(>= ?factor 117.8)(<= ?factor 157))))
		=>
	 	(printout t  "High " ?factor " Out of 156" crlf)
		(assert(Concern (concern HIGH)))
		)




;(run)
