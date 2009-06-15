;;;		Copyright (c) William Whitty 2009
;;;
;;;	This file is part of GSL. 
;;;
;;;	GSL is free software: you can redistribute it and/or modify
;;;     it under the terms of the GNU General Public License as published by
;;;     the Free Software Foundation, either version 3 of the License, or
;;;     (at your option) any later version.
;;;
;;;     GSL is distributed in the hope that it will be useful,
;;;     but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;     GNU General Public License for more details.
;;;
;;;     You should have received a copy of the GNU General Public License
;;;     along with GSL.  If not, see <http://www.gnu.org/licenses/>.

(in-package :gsl-shared)

(defmacro use-packages (&rest package-list);;{{{
  "Use all packages in <package-list>" 
  (let ((list nil))
    (dolist (package package-list)
      (push `(use-package ,package) list))
    (return-from use-packages `(progn ,@list))));;}}}

(defmacro const (symbol val);;{{{
  "Exports symbol and then defines it as a constant"
  (export symbol)
  `(defconstant ,symbol ,val));;}}}

(defmacro let-float-array (vars &rest body);;{{{
  "Allocates a foreign array on the stack and copies values from list into it"

  (let ((array (first vars)) (list (second vars)))
    (let ((len (list-length list)) (length (getf vars :length)))
      (when length (setf len length))
      `(rlet ((,array (:array :float ,len)))
	     (dotimes (x ,len)
	       (let ((val (nth x ',list)))
		 (when (not val) (setf val 0.0))
		 (setf (%get-single-float ,array (* x 4)) (float val))))
	     (progn ,@body)))));;}}}

(defmacro integer (val);;{{{
  `(truncate ,val));;}}}

(defmacro defparam (symbol val);;{{{
  "Exports symbol and then defines it as a parameter"
  (export symbol)
  `(defparameter ,symbol ,val));;}}}

(defmacro print-macro (statements);;{{{
  `(format t "~a~%" (macroexpand-1 ',statements)));;}}}

(defmacro conc-names (name1 name2);;{{{
  `(read-from-string (concatenate 'string (string ,name1) (string ,name2))));;}}}

(defmacro get-addr (name);;{{{
  (%reference-external-entry-point (external name)));;}}}

(defmacro new-c-func (name cname args &optional return-type);;{{{
  "Defines an external c function"
  ;;Get the addr of the function
  (let ((addr (eval `(get-addr ,cname))) (arglist1 nil) (arglist2 nil))
    ;;Run through args and construct arg lists for run-time
    (dolist (x args)
      (push (first x)  arglist1)
      (push (conc-names ":" (string (second x))) arglist2) ;int -> :int, float -> :float . . .
      (push (first x)  arglist2))
    (setf arglist1 (reverse arglist1))
    (setf arglist2 (reverse arglist2))

    ;;Return new defmacro
    (return-from new-c-func 
		 `(defun ,name (,@arglist1)
		    (ff-call ,addr ,@arglist2 ,return-type)))));;}}}

(defmacro i->float (num);;{{{
  (if (not (typep num 'float)) `(setf ,num (float ,num))));;}}}

(defmacro pop->float (target-list);;{{{
  "Pop from a list and convert to a float. Note - Does not check with numberp"
  `(progn 
     (setf num (pop ,target-list))
     (i->float num)));;}}}

(defmacro mirror (a);;{{{
  `(- 0 ,a));;}}}

(defmacro do-array (element array &rest rest);;{{{
  `(let ((len (- (array-total-size ,array) 1)))
    (do ((,element 0 (incf ,element)))
      ((>= ,element len))
      (progn
	,@rest))));;}}}

(defmacro setf-all (&rest rest);;{{{
  "Setf all arguments in the list to the last arg"
  (let ((val (last-val rest)) (len (length rest)) (list nil))
    ;;Run through the list and add each value and 'val' to the new list
    (dotimes (x (1- len))
      (push val list)
      (push (pop rest) list))
    ;;Use the new list to setf all vars at once
    `(setf ,@list)));;}}}

(defun last-val (list);;{{{
  (car (eval `(last ',list))));;}}}

(defun del-from-array (array index);;{{{
  "Deletes element index from array"
  (when (not (array-has-fill-pointer-p array))
    (progn 
      (print "Array must have fill pointer for deleting elements")
      (return-from del-from-array)))

  (let ((len (length array)))
    (do ((i index (incf i))) ((>= i len))
      (setf (aref array i) (aref array (1+ i))))
    (vector-pop array)))
;;}}}

(defmacro defmacro-export (name &rest body);;{{{
  "Defines and exports macro <name>"
  `(progn
     (defmacro ,name ,@body)
     (export ',name)));;}}}

(defmacro defun-export (name &rest body);;{{{
  "Defines and exports function <name>"
  `(progn
     (defun ,name ,@body)
     (export ',name)))
;;}}}

(defmacro export-all (&rest exports);;{{{
  "Exports <exports> from the current package"
  `(dolist (ex ',exports)
     (export ex)));;}}}

(defparam *GSL-INIT-DONE*  nil)
(defparam *GSL-VIDEO-DONE* nil)
