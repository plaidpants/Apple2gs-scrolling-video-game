         case  on         copy  globals.asm;*****************;Screen Segment;*****************ClearScreen start         lda   #$0000         taxloop     sta   >Screen,x         inx         inx         bpl   loop         rtl         endUpdatePalette start         ldx   #$7D00loop     lda   >$012000,x         sta   >$012000,x         inx         inx         bpl   loop         rtl         endUpdateScreen start         php         phd         tsx         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #$2000loop     tcd         adc   #159         tcs         pei ($9E)         pei ($9C)         pei ($9A)         pei ($98)         pei ($96)         pei ($94)         pei ($92)         pei ($90)         pei ($8E)         pei ($8C)         pei ($8A)         pei ($88)         pei ($86)         pei ($84)         pei ($82)         pei ($80)         pei ($7E)         pei ($7C)         pei ($7A)         pei ($78)         pei ($76)         pei ($74)         pei ($72)         pei ($70)         pei ($6E)         pei ($6C)         pei ($6A)         pei ($68)         pei ($66)         pei ($64)         pei ($62)         pei ($60)         pei ($5E)         pei ($5C)         pei ($5A)         pei ($58)         pei ($56)         pei ($54)         pei ($52)         pei ($50)         pei ($4E)         pei ($4C)         pei ($4A)         pei ($48)         pei ($46)         pei ($44)         pei ($42)         pei ($40)         pei ($3E)         pei ($3C)         pei ($3A)         pei ($38)         pei ($36)         pei ($34)         pei ($32)         pei ($30)         pei ($2E)         pei ($2C)         pei ($2A)         pei ($28)         pei ($26)         pei ($24)         pei ($22)         pei ($20)         pei ($1E)         pei ($1C)         pei ($1A)         pei ($18)         pei ($16)         pei ($14)         pei ($12)         pei ($10)         pei ($0E)         pei ($0C)         pei ($0A)         pei ($08)         pei ($06)         pei ($04)         pei ($02)         pei ($00)         inc   a         cmp   #$9D00         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         txs         pld         plp         rtl         endScrollScreenRight start         php         phd         tsx         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #$2000loop     tcd         adc   #159         tcs         pei ($9C)         pei ($9A)         pei ($98)         pei ($96)         pei ($94)         pei ($92)         pei ($90)         pei ($8E)         pei ($8C)         pei ($8A)         pei ($88)         pei ($86)         pei ($84)         pei ($82)         pei ($80)         pei ($7E)         pei ($7C)         pei ($7A)         pei ($78)         pei ($76)         pei ($74)         pei ($72)         pei ($70)         pei ($6E)         pei ($6C)         pei ($6A)         pei ($68)         pei ($66)         pei ($64)         pei ($62)         pei ($60)         pei ($5E)         pei ($5C)         pei ($5A)         pei ($58)         pei ($56)         pei ($54)         pei ($52)         pei ($50)         pei ($4E)         pei ($4C)         pei ($4A)         pei ($48)         pei ($46)         pei ($44)         pei ($42)         pei ($40)         pei ($3E)         pei ($3C)         pei ($3A)         pei ($38)         pei ($36)         pei ($34)         pei ($32)         pei ($30)         pei ($2E)         pei ($2C)         pei ($2A)         pei ($28)         pei ($26)         pei ($24)         pei ($22)         pei ($20)         pei ($1E)         pei ($1C)         pei ($1A)         pei ($18)         pei ($16)         pei ($14)         pei ($12)         pei ($10)         pei ($0E)         pei ($0C)         pei ($0A)         pei ($08)         pei ($06)         pei ($04)         pei ($02)         pei ($00)         inc   a         cmp   #$9D00         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         txs         pld         plp         rtl         end