;Header and description

(define (domain cleaner_robot)

;remove requirements that are not needed
(:requirements :strips :adl)

; (:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
; )

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (at_robot ?office) ;Is Robot at the specific office 'office'??
    (at_box ?box ?office); Is a certain box located in the office 'office'?
    ;(dirty ?office); Office 'office' is dirty
    (clean ?office); Office 'office' is clean
    (empty ?office); There isn't any box in office 'office'
    (adjacent ?office1 ?office2); Offices 'office1' and 'office2' are adjacent (horizontally or vertically)
)
; DEFINITION OF ACTIONS

(:action clean_office ; Action to clean an office 'Office'
    :parameters (?Office)
    :precondition (and
        ;(dirty ?Office) 
        (at_robot ?Office) (empty ?Office) (not(clean ?Office))
    )
    :effect (and 
        (clean ?Office) ;(not(dirty ?Office))
    )
)

(:action move ; Action for the robot to move from Office 1 to Office 2
    :parameters (?Office1 ?Office2)
    :precondition (and 
        (adjacent ?Office1 ?Office2) (at_robot ?Office1)
    )
    :effect (and 
        (at_robot ?Office2) (not(at_robot ?Office1))
    )
)

(:action push_box ; Action to push a box 'B' from Office 1 to Office 2
    :parameters (?Office1 ?Office2 ?B) 
    :precondition (and 
        (adjacent ?Office1 ?Office2) (empty ?Office2) (not (empty ?Office1))
        (at_robot ?Office1) (at_box ?B ?Office1)
    )
    :effect (and 
        (at_box ?B ?Office2) (not (empty ?Office2)) 
        (not(at_box ?B ?Office1)) (empty ?Office1)
    )
)

)