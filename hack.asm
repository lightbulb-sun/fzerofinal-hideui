lorom

!OFF_SCREEN_Y = $f0

macro overwrite(address, offset, num, value)
    for i = 0..<num>
        org !i*<offset>+<address>+1
            db      <value>
    endfor
endmacro

macro hideSprites(address, num)
    %overwrite(<address>, 4, <num>, !OFF_SCREEN_Y)
endmacro

!SPRITES_POSITION_ADDR = $beca4
!SPRITES_POSITION_NUM  = 4
%hideSprites(!SPRITES_POSITION_ADDR, !SPRITES_POSITION_NUM)

!SPRITES_TIMER_ADDR = $bec64
!SPRITES_TIMER_NUM  = 12
%hideSprites(!SPRITES_TIMER_ADDR, !SPRITES_TIMER_NUM)

!SPRITES_NUMLIVES_ADDR = $bec40
!SPRITES_NUMLIVES_NUM  = 1
%hideSprites(!SPRITES_NUMLIVES_ADDR, !SPRITES_NUMLIVES_NUM)

!SPRITES_NUMLIVESICON_ADDR = $bec3c
!SPRITES_NUMLIVESICON_NUM  = 1
%hideSprites(!SPRITES_NUMLIVESICON_ADDR, !SPRITES_NUMLIVESICON_NUM)

!SPRITES_SSS_ADDR = $bec94
!SPRITES_SSS_NUM  = 3
%hideSprites(!SPRITES_SSS_ADDR, !SPRITES_SSS_NUM)

!SPRITES_MAP_ADDR = $bec44
!SPRITES_MAP_NUM  = 8
%hideSprites(!SPRITES_MAP_ADDR, !SPRITES_MAP_NUM)

; hide most HUD tiles
org $a713
            nop
            nop
            nop
org $810d
            nop
            nop
            nop

; hide dot on map
org $aa8e
            lda.w   #!OFF_SCREEN_Y

; hide health bar
org $8579
            lda.b   #$00
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
