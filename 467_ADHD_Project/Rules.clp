(deftemplate questions (slot q1) (slot q2) (slot q3) (slot q4) (slot q5) (slot q6))
(defglobal ?*risk-factor* = 0)
;(assert(questions (q1 0) (q2 3) (q3 9) (q4 1) (q5 0) (q6  1))

(defrule Q1Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q1 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q1Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q1 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q1Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q1 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q1Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q1 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q2Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q2 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q2Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q2 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q2Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q2 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q2Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q2 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q3Never
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q3 0))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 0))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q3Rarely
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q3 3))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 3))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q3Sometimes
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q3 6))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 6))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)

(defrule Q3Often
					(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
					 (test (= ?q3 9))
					 =>
				   (bind ?*risk-factor*(+ ?*risk-factor* 9))
					 (printout t "risk factor = " ?*risk-factor* crlf)
)


(defrule Q4Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
  (test (= ?q4 1))
  =>
  (bind ?*risk-factor*(- ?*risk-factor* 10))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q4YNo
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
  (test (= ?q4 0))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 0))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q5Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
  (test (= ?q5 1))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 10))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q5No
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
  (test (= ?q5 0))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 0))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q6Yes
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
  (test (= ?q6 1))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 10))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

(defrule Q6No
  (questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))
  (test (= ?q6 0))
  =>
  (bind ?*risk-factor*(+ ?*risk-factor* 0))
  (printout t "riskFactor = " ?*risk-factor*    crlf)
)

;(run)
