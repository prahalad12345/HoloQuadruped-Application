;; Auto-generated. Do not edit!


(when (boundp 'puppy_control2::ServoControl)
  (if (not (find-package "PUPPY_CONTROL2"))
    (make-package "PUPPY_CONTROL2"))
  (shadow 'ServoControl (find-package "PUPPY_CONTROL2")))
(unless (find-package "PUPPY_CONTROL2::SERVOCONTROL")
  (make-package "PUPPY_CONTROL2::SERVOCONTROL"))

(in-package "ROS")
;;//! \htmlinclude ServoControl.msg.html


(defclass puppy_control2::ServoControl
  :super ros::object
  :slots (_frontleftx _frontleftz _frontrightx _frontrightz _backleftx _backleftz _backrightx _backrightz ))

(defmethod puppy_control2::ServoControl
  (:init
   (&key
    ((:frontleftx __frontleftx) 0.0)
    ((:frontleftz __frontleftz) 0.0)
    ((:frontrightx __frontrightx) 0.0)
    ((:frontrightz __frontrightz) 0.0)
    ((:backleftx __backleftx) 0.0)
    ((:backleftz __backleftz) 0.0)
    ((:backrightx __backrightx) 0.0)
    ((:backrightz __backrightz) 0.0)
    )
   (send-super :init)
   (setq _frontleftx (float __frontleftx))
   (setq _frontleftz (float __frontleftz))
   (setq _frontrightx (float __frontrightx))
   (setq _frontrightz (float __frontrightz))
   (setq _backleftx (float __backleftx))
   (setq _backleftz (float __backleftz))
   (setq _backrightx (float __backrightx))
   (setq _backrightz (float __backrightz))
   self)
  (:frontleftx
   (&optional __frontleftx)
   (if __frontleftx (setq _frontleftx __frontleftx)) _frontleftx)
  (:frontleftz
   (&optional __frontleftz)
   (if __frontleftz (setq _frontleftz __frontleftz)) _frontleftz)
  (:frontrightx
   (&optional __frontrightx)
   (if __frontrightx (setq _frontrightx __frontrightx)) _frontrightx)
  (:frontrightz
   (&optional __frontrightz)
   (if __frontrightz (setq _frontrightz __frontrightz)) _frontrightz)
  (:backleftx
   (&optional __backleftx)
   (if __backleftx (setq _backleftx __backleftx)) _backleftx)
  (:backleftz
   (&optional __backleftz)
   (if __backleftz (setq _backleftz __backleftz)) _backleftz)
  (:backrightx
   (&optional __backrightx)
   (if __backrightx (setq _backrightx __backrightx)) _backrightx)
  (:backrightz
   (&optional __backrightz)
   (if __backrightz (setq _backrightz __backrightz)) _backrightz)
  (:serialization-length
   ()
   (+
    ;; float32 _frontleftx
    4
    ;; float32 _frontleftz
    4
    ;; float32 _frontrightx
    4
    ;; float32 _frontrightz
    4
    ;; float32 _backleftx
    4
    ;; float32 _backleftz
    4
    ;; float32 _backrightx
    4
    ;; float32 _backrightz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _frontleftx
       (sys::poke _frontleftx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frontleftz
       (sys::poke _frontleftz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frontrightx
       (sys::poke _frontrightx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frontrightz
       (sys::poke _frontrightz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _backleftx
       (sys::poke _backleftx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _backleftz
       (sys::poke _backleftz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _backrightx
       (sys::poke _backrightx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _backrightz
       (sys::poke _backrightz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _frontleftx
     (setq _frontleftx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frontleftz
     (setq _frontleftz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frontrightx
     (setq _frontrightx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frontrightz
     (setq _frontrightz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _backleftx
     (setq _backleftx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _backleftz
     (setq _backleftz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _backrightx
     (setq _backrightx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _backrightz
     (setq _backrightz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get puppy_control2::ServoControl :md5sum-) "326b3455b95de3ececfaa8d7b1eb8c40")
(setf (get puppy_control2::ServoControl :datatype-) "puppy_control2/ServoControl")
(setf (get puppy_control2::ServoControl :definition-)
      "float32 frontleftx
float32 frontleftz

float32 frontrightx
float32 frontrightz

float32 backleftx
float32 backleftz

float32 backrightx
float32 backrightz

")



(provide :puppy_control2/ServoControl "326b3455b95de3ececfaa8d7b1eb8c40")


