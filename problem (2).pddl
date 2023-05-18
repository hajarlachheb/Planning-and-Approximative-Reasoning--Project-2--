(define (problem Example1) 
    (:domain cleaner_robot)
    (:objects
    ; For this example 2 boxes are defined: boxA and boxB,
    ; also the Robot, and the nine offices (from o1 to o9)
    boxA, boxB, Robot, o1, o2, o3, o4, o5, o6, o7, o8, o9
    )

    (:init
        ; In our initial state the Robot will be in the office o9
        ; meanwhile the boxes will be located in office o6 (boxB) and
        ; office o8 (boxA). Also, office o5 will be dirty.

        (at_robot o4)
        (at_box boxA o5)
        (at_box boxB o6)

        ; (clean o1)
        ; (clean o2)
        ; (clean o3)
        ; (clean o4)
        ; (not (clean o5))
        ; ;(dirty o5)
        ; (clean o6)
        ; (clean o7)
        ; (clean o8)
        ; (clean o9)

        (empty o1)
        (empty o2)
        (empty o3)
        (empty o4)
        (not(empty o5))
        (not(empty o6))
        (empty o7)
        (empty o8)
        (empty o9)

        (adjacent o1 o2)
        (adjacent o1 o4)

        (adjacent o2 o1)
        (adjacent o2 o3)
        (adjacent o2 o5)

        (adjacent o3 o2)
        (adjacent o3 o6)

        (adjacent o4 o1)
        (adjacent o4 o5)
        (adjacent o4 o7)

        (adjacent o5 o2)
        (adjacent o5 o4)
        (adjacent o5 o6)
        (adjacent o5 o8)

        (adjacent o6 o3)
        (adjacent o6 o5)
        (adjacent o6 o9)

        (adjacent o7 o4)
        (adjacent o7 o8)

        (adjacent o8 o7)
        (adjacent o8 o5)
        (adjacent o8 o9)

        (adjacent o9 o8)
        (adjacent o9 o6)
    )

    (:goal (and 
        ; (clean o5)
        ; (clean o1)
        ; (clean o2)
        ; (clean o3)
        ; (clean o4)
        ; (clean o6)
        ; (clean o7)
        ; (clean o8)
        ; (clean o9)
        (at_box boxA o8)
        (at_box boxB o6)
        (at_robot o9)
        ; The goal will be for the robot to clean office o5
    ))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
