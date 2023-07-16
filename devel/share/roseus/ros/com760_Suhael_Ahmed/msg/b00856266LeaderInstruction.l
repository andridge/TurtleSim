;; Auto-generated. Do not edit!


(when (boundp 'com760_Suhael_Ahmed::b00856266LeaderInstruction)
  (if (not (find-package "COM760_SUHAEL_AHMED"))
    (make-package "COM760_SUHAEL_AHMED"))
  (shadow 'b00856266LeaderInstruction (find-package "COM760_SUHAEL_AHMED")))
(unless (find-package "COM760_SUHAEL_AHMED::B00856266LEADERINSTRUCTION")
  (make-package "COM760_SUHAEL_AHMED::B00856266LEADERINSTRUCTION"))

(in-package "ROS")
;;//! \htmlinclude b00856266LeaderInstruction.msg.html


(defclass com760_Suhael_Ahmed::b00856266LeaderInstruction
  :super ros::object
  :slots (_instructionID _message ))

(defmethod com760_Suhael_Ahmed::b00856266LeaderInstruction
  (:init
   (&key
    ((:instructionID __instructionID) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _instructionID (round __instructionID))
   (setq _message (string __message))
   self)
  (:instructionID
   (&optional __instructionID)
   (if __instructionID (setq _instructionID __instructionID)) _instructionID)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int64 _instructionID
    8
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _instructionID
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _instructionID (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _instructionID) (= (length (_instructionID . bv)) 2)) ;; bignum
              (write-long (ash (elt (_instructionID . bv) 0) 0) s)
              (write-long (ash (elt (_instructionID . bv) 1) -1) s))
             ((and (class _instructionID) (= (length (_instructionID . bv)) 1)) ;; big1
              (write-long (elt (_instructionID . bv) 0) s)
              (write-long (if (>= _instructionID 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _instructionID s)(write-long (if (>= _instructionID 0) 0 #xffffffff) s)))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _instructionID
#+(or :alpha :irix6 :x86_64)
      (setf _instructionID (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _instructionID (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get com760_Suhael_Ahmed::b00856266LeaderInstruction :md5sum-) "0322711d40d955a41c13dde39236d522")
(setf (get com760_Suhael_Ahmed::b00856266LeaderInstruction :datatype-) "com760_Suhael_Ahmed/b00856266LeaderInstruction")
(setf (get com760_Suhael_Ahmed::b00856266LeaderInstruction :definition-)
      "int64 instructionID
string message

")



(provide :com760_Suhael_Ahmed/b00856266LeaderInstruction "0322711d40d955a41c13dde39236d522")


