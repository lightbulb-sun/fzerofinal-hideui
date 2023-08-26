lorom

; hide most HUD tiles
org $a713
            nop
            nop
            nop
org $810d
            nop
            nop
            nop

; hide most HUD sprites
org $a807
            rts

; keep position off to the left side of screen
org $a971
            nop
            nop
            nop

; hide health bar
org $8579
            lda.b   #$00
            nop

; hide READY
org $8ca3
            nop
            nop
            nop

; hide GO!
org $ad56
            nop
            nop
            nop

; hide CHECK
org $ddf9
            nop
            nop
            nop

; hide number of lives
org $890f
            nop
            nop
            nop

; hide BEST
org $a737
            nop
            nop
            nop
; hide BEST timer
org $a743
            nop
            nop
            nop

; hide PUSH in demo
org $aea5
            nop
            nop
            nop
org $aec3
            nop
            nop
            nop

; hide YOU LOST
org $ae56
            nop
            nop
            nop

; hide N LAPS LEFT
org $ae69
            nop
            nop
            nop

; hide FINAL LAP
org $aeed
            nop
            nop
            nop
org $af02
            nop
            nop
            nop

; hide errant sprite after end of race
org $b403
            nop
            nop
            nop

; hide S OK
org $8db6
            nop
            nop
            nop
