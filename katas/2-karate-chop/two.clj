(ns karate-chop-test
   (:use clojure.test))
   
   (defn Y [r]
     ((fn [f] (f f))
      (fn [f]
        (r (fn [x] ((f f) x))))))
   
   (defn chop [n lst]
     (Y (fn [func] (fn [low high i ia] 
		(if (< high low) -1)
     )))
     0 (- (count lst) 1) n lst
   )

   ; (defn chop
   ;   ( [n lst]
   ;       (chop lst 0 (dec (count lst)) n))
   ;   ( [lst lb ub n]
   ;       (if (> lb ub) -1 ; this is the case where no element is found
   ;           (let [mid (quot (+ lb ub) 2)
   ;                 mth (nth lst mid)]
   ;             (cond
   ;              ; mid > n, so search lower
   ;              (> mth n) (recur lst lb (dec mid) n)
   ;              ; mid < n, search upper
   ;              (< mth n) (recur lst (inc mid) ub n)
   ;              ; else, found, return index
   ;              (= mth n) mid)))))
                
    (deftest kata-test
      (is (= -1 (chop 3 [])))
      (is (= -1 (chop 3 [1])))
      (is (= 0 (chop 1 [1])))
      ;; 
      (is (= 0 (chop 1 [1 3 5])))
      (is (= 1 (chop 3 [1 3 5])))
      (is (= 2 (chop 5 [1 3 5])))
      (is (= -1 (chop 0 [1 3 5])))
      (is (= -1 (chop 2 [1 3 5])))
      (is (= -1 (chop 4 [1 3 5])))
      (is (= -1 (chop 6 [1 3 5])))
      ;; 
      (is (= 0 (chop 1 [1 3 5 7])))
      (is (= 1 (chop 3 [1 3 5 7])))
      (is (= 2 (chop 5 [1 3 5 7])))
      (is (= 3 (chop 7 [1 3 5 7])))
      (is (= -1 (chop 0 [1 3 5 7])))
      (is (= -1 (chop 2 [1 3 5 7])))
      (is (= -1 (chop 4 [1 3 5 7])))      
      (is (= -1 (chop 6 [1 3 5 7])))
      (is (= -1 (chop 8 [1 3 5 7])))
    )
                
                
                
   
  
(run-tests)



