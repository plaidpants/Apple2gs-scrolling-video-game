         case  on         copy  globals.asm;******************;Playfield Segment;******************ClearPlayfield start         rtl         endUpdatePlayfield start         php         phd         tsx         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #$2280loop     tcd         adc   #129         tcs         pei ($80)         pei ($7E)         pei ($7C)         pei ($7A)         pei ($78)         pei ($76)         pei ($74)         pei ($72)         pei ($70)         pei ($6E)         pei ($6C)         pei ($6A)         pei ($68)         pei ($66)         pei ($64)         pei ($62)         pei ($60)         pei ($5E)         pei ($5C)         pei ($5A)         pei ($58)         pei ($56)         pei ($54)         pei ($52)         pei ($50)         pei ($4E)         pei ($4C)         pei ($4A)         pei ($48)         pei ($46)         pei ($44)         pei ($42)         pei ($40)         pei ($3E)         pei ($3C)         pei ($3A)         pei ($38)         pei ($36)         pei ($34)         pei ($32)         pei ($30)         pei ($2E)         pei ($2C)         pei ($2A)         pei ($28)         pei ($26)         pei ($24)         pei ($22)         pei ($20)         pei ($1E)         pei ($1C)         pei ($1A)         pei ($18)         pei ($16)         pei ($14)         pei ($12)         pei ($10)         pei ($0E)         pei ($0C)         pei ($0A)         pei ($08)         pei ($06)         pei ($04)         pei ($02)         adc   #31         cmp   #$9A80         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         txs         pld         plp         rtl         endScrollPlayfieldRight start         php         phd         tsx         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #Screen+PlayfieldY*ScreenWidthloop     tcd         clc         adc   #PlayfieldWidth+1         tcs         pei (PlayfieldWidth-2)         pei (PlayfieldWidth-4)         pei ($7A)         pei ($78)         pei ($76)         pei ($74)         pei ($72)         pei ($70)         pei ($6E)         pei ($6C)         pei ($6A)         pei ($68)         pei ($66)         pei ($64)         pei ($62)         pei ($60)         pei ($5E)         pei ($5C)         pei ($5A)         pei ($58)         pei ($56)         pei ($54)         pei ($52)         pei ($50)         pei ($4E)         pei ($4C)         pei ($4A)         pei ($48)         pei ($46)         pei ($44)         pei ($42)         pei ($40)         pei ($3E)         pei ($3C)         pei ($3A)         pei ($38)         pei ($36)         pei ($34)         pei ($32)         pei ($30)         pei ($2E)         pei ($2C)         pei ($2A)         pei ($28)         pei ($26)         pei ($24)         pei ($22)         pei ($20)         pei ($1E)         pei ($1C)         pei ($1A)         pei ($18)         pei ($16)         pei ($14)         pei ($12)         pei ($10)         pei ($0E)         pei ($0C)         pei ($0A)         pei ($08)         pei ($06)         pei ($04)         pei ($02)         clc         adc   #ScreenWidth-PlayfieldWidth-1         cmp   #Screen+ScreenWidth*(PlayfieldHeight+PlayfieldY)         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         txs         pld         plp         rtl         endScrollPlayfieldLeft start         php         phd         tsx         txy         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #Screen         tcd         ldx   #PlayfieldX+PlayfieldY*ScreenWidthloop     lda   <2,x         sta   <0,x         lda   <4,x         sta   <2,x         lda   <6,x         sta   <4,x         lda   <8,x         sta   <6,x         lda   <10,x         sta   <8,x         lda   <12,x         sta   <10,x         lda   <14,x         sta   <12,x         lda   <16,x         sta   <14,x         lda   <18,x         sta   <16,x         lda   <20,x         sta   <18,x         lda   <22,x         sta   <20,x         lda   <24,x         sta   <22,x         lda   <26,x         sta   <24,x         lda   <28,x         sta   <26,x         lda   <30,x         sta   <28,x         lda   <32,x         sta   <30,x         lda   <34,x         sta   <32,x         lda   <36,x         sta   <34,x         lda   <38,x         sta   <36,x         lda   <40,x         sta   <38,x         lda   <42,x         sta   <40,x         lda   <44,x         sta   <42,x         lda   <46,x         sta   <44,x         lda   <48,x         sta   <46,x         lda   <50,x         sta   <48,x         lda   <52,x         sta   <50,x         lda   <54,x         sta   <52,x         lda   <56,x         sta   <54,x         lda   <58,x         sta   <56,x         lda   <60,x         sta   <58,x         lda   <62,x         sta   <60,x         lda   <64,x         sta   <62,x         lda   <66,x         sta   <64,x         lda   <68,x         sta   <66,x         lda   <70,x         sta   <68,x         lda   <72,x         sta   <70,x         lda   <74,x         sta   <72,x         lda   <76,x         sta   <74,x         lda   <78,x         sta   <76,x         lda   <80,x         sta   <78,x         lda   <82,x         sta   <80,x         lda   <84,x         sta   <82,x         lda   <86,x         sta   <84,x         lda   <88,x         sta   <86,x         lda   <90,x         sta   <88,x         lda   <92,x         sta   <90,x         lda   <94,x         sta   <92,x         lda   <96,x         sta   <94,x         lda   <98,x         sta   <96,x         lda   <100,x         sta   <98,x         lda   <102,x         sta   <100,x         lda   <104,x         sta   <102,x         lda   <106,x         sta   <104,x         lda   <108,x         sta   <106,x         lda   <110,x         sta   <108,x         lda   <112,x         sta   <110,x         lda   <114,x         sta   <112,x         lda   <116,x         sta   <114,x         lda   <118,x         sta   <116,x         lda   <120,x         sta   <118,x         lda   <122,x         sta   <120,x         lda   <124,x         sta   <122,x         lda   <126,x         sta   <124,x         lda   <128,x         sta   <126,x         txa         clc         adc   #ScreenWidth         tax         cpx   #PlayfieldX+(PlayfieldY+PlayfieldHeight)*ScreenWidth         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         tyx         txs         pld         plp         rtl         endScrollPlayfieldUp start         php         phd         tsx         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #Screen+(PlayfieldY+4)*ScreenWidthloop     tcd         sec         sbc   #ScreenWidth*4         clc         adc   #PlayfieldWidth+1         tcs         pei (PlayfieldWidth)         pei (PlayfieldWidth-2)         pei (PlayfieldWidth-4)         pei ($7A)         pei ($78)         pei ($76)         pei ($74)         pei ($72)         pei ($70)         pei ($6E)         pei ($6C)         pei ($6A)         pei ($68)         pei ($66)         pei ($64)         pei ($62)         pei ($60)         pei ($5E)         pei ($5C)         pei ($5A)         pei ($58)         pei ($56)         pei ($54)         pei ($52)         pei ($50)         pei ($4E)         pei ($4C)         pei ($4A)         pei ($48)         pei ($46)         pei ($44)         pei ($42)         pei ($40)         pei ($3E)         pei ($3C)         pei ($3A)         pei ($38)         pei ($36)         pei ($34)         pei ($32)         pei ($30)         pei ($2E)         pei ($2C)         pei ($2A)         pei ($28)         pei ($26)         pei ($24)         pei ($22)         pei ($20)         pei ($1E)         pei ($1C)         pei ($1A)         pei ($18)         pei ($16)         pei ($14)         pei ($12)         pei ($10)         pei ($0E)         pei ($0C)         pei ($0A)         pei ($08)         pei ($06)         pei ($04)         pei ($02)         clc         adc   #ScreenWidth*4         clc         adc   #ScreenWidth-PlayfieldWidth-1         cmp   #Screen+ScreenWidth*(PlayfieldHeight+PlayfieldY)         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         txs         pld         plp         rtl         endScrollPlayfieldDown start         php         phd         tsx         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #Screen+(PlayfieldY+PlayfieldHeight-4)*ScreenWidthloop     tcd         clc         adc   #ScreenWidth*4         clc         adc   #PlayfieldWidth+1         tcs         pei (PlayfieldWidth)         pei (PlayfieldWidth-2)         pei (PlayfieldWidth-4)         pei ($7A)         pei ($78)         pei ($76)         pei ($74)         pei ($72)         pei ($70)         pei ($6E)         pei ($6C)         pei ($6A)         pei ($68)         pei ($66)         pei ($64)         pei ($62)         pei ($60)         pei ($5E)         pei ($5C)         pei ($5A)         pei ($58)         pei ($56)         pei ($54)         pei ($52)         pei ($50)         pei ($4E)         pei ($4C)         pei ($4A)         pei ($48)         pei ($46)         pei ($44)         pei ($42)         pei ($40)         pei ($3E)         pei ($3C)         pei ($3A)         pei ($38)         pei ($36)         pei ($34)         pei ($32)         pei ($30)         pei ($2E)         pei ($2C)         pei ($2A)         pei ($28)         pei ($26)         pei ($24)         pei ($22)         pei ($20)         pei ($1E)         pei ($1C)         pei ($1A)         pei ($18)         pei ($16)         pei ($14)         pei ($12)         pei ($10)         pei ($0E)         pei ($0C)         pei ($0A)         pei ($08)         pei ($06)         pei ($04)         pei ($02)         sec         sbc   #ScreenWidth*4         sec         sbc   #ScreenWidth+PlayfieldWidth+1         cmp   #Screen+ScreenWidth*(PlayfieldY-1)         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         txs         pld         plp         rtl         endScrollPlayfieldRightUp start         php         phd         tsx         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #Screen+(PlayfieldY+4)*ScreenWidthloop     tcd         sec         sbc   #ScreenWidth*4         clc         adc   #PlayfieldWidth+1         tcs         pei (PlayfieldWidth-2)         pei (PlayfieldWidth-4)         pei ($7A)         pei ($78)         pei ($76)         pei ($74)         pei ($72)         pei ($70)         pei ($6E)         pei ($6C)         pei ($6A)         pei ($68)         pei ($66)         pei ($64)         pei ($62)         pei ($60)         pei ($5E)         pei ($5C)         pei ($5A)         pei ($58)         pei ($56)         pei ($54)         pei ($52)         pei ($50)         pei ($4E)         pei ($4C)         pei ($4A)         pei ($48)         pei ($46)         pei ($44)         pei ($42)         pei ($40)         pei ($3E)         pei ($3C)         pei ($3A)         pei ($38)         pei ($36)         pei ($34)         pei ($32)         pei ($30)         pei ($2E)         pei ($2C)         pei ($2A)         pei ($28)         pei ($26)         pei ($24)         pei ($22)         pei ($20)         pei ($1E)         pei ($1C)         pei ($1A)         pei ($18)         pei ($16)         pei ($14)         pei ($12)         pei ($10)         pei ($0E)         pei ($0C)         pei ($0A)         pei ($08)         pei ($06)         pei ($04)         pei ($02)         clc         adc   #ScreenWidth*4         clc         adc   #ScreenWidth-PlayfieldWidth-1         cmp   #Screen+ScreenWidth*(PlayfieldHeight+PlayfieldY)         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         txs         pld         plp         rtl         endScrollPlayfieldRightDown start         php         phd         tsx         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #Screen+(PlayfieldY+PlayfieldHeight-4)*ScreenWidthloop     tcd         clc         adc   #ScreenWidth*4         clc         adc   #PlayfieldWidth+1         tcs         pei (PlayfieldWidth-2)         pei (PlayfieldWidth-4)         pei ($7A)         pei ($78)         pei ($76)         pei ($74)         pei ($72)         pei ($70)         pei ($6E)         pei ($6C)         pei ($6A)         pei ($68)         pei ($66)         pei ($64)         pei ($62)         pei ($60)         pei ($5E)         pei ($5C)         pei ($5A)         pei ($58)         pei ($56)         pei ($54)         pei ($52)         pei ($50)         pei ($4E)         pei ($4C)         pei ($4A)         pei ($48)         pei ($46)         pei ($44)         pei ($42)         pei ($40)         pei ($3E)         pei ($3C)         pei ($3A)         pei ($38)         pei ($36)         pei ($34)         pei ($32)         pei ($30)         pei ($2E)         pei ($2C)         pei ($2A)         pei ($28)         pei ($26)         pei ($24)         pei ($22)         pei ($20)         pei ($1E)         pei ($1C)         pei ($1A)         pei ($18)         pei ($16)         pei ($14)         pei ($12)         pei ($10)         pei ($0E)         pei ($0C)         pei ($0A)         pei ($08)         pei ($06)         pei ($04)         pei ($02)         sec         sbc   #ScreenWidth*4         sec         sbc   #ScreenWidth+PlayfieldWidth+1         cmp   #Screen+ScreenWidth*(PlayfieldY-1)         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         txs         pld         plp         rtl         endScrollPlayfieldLeftUp start         php         phd         tsx         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #Screen+(PlayfieldY+4)*ScreenWidthloop     tcd         sec         sbc   #ScreenWidth*4         clc         adc   #PlayfieldWidth+1         tcs         pei (PlayfieldWidth+2)         pei (PlayfieldWidth)         pei (PlayfieldWidth-2)         pei (PlayfieldWidth-4)         pei ($7A)         pei ($78)         pei ($76)         pei ($74)         pei ($72)         pei ($70)         pei ($6E)         pei ($6C)         pei ($6A)         pei ($68)         pei ($66)         pei ($64)         pei ($62)         pei ($60)         pei ($5E)         pei ($5C)         pei ($5A)         pei ($58)         pei ($56)         pei ($54)         pei ($52)         pei ($50)         pei ($4E)         pei ($4C)         pei ($4A)         pei ($48)         pei ($46)         pei ($44)         pei ($42)         pei ($40)         pei ($3E)         pei ($3C)         pei ($3A)         pei ($38)         pei ($36)         pei ($34)         pei ($32)         pei ($30)         pei ($2E)         pei ($2C)         pei ($2A)         pei ($28)         pei ($26)         pei ($24)         pei ($22)         pei ($20)         pei ($1E)         pei ($1C)         pei ($1A)         pei ($18)         pei ($16)         pei ($14)         pei ($12)         pei ($10)         pei ($0E)         pei ($0C)         pei ($0A)         pei ($08)         pei ($06)         pei ($04)         pei ($02)         clc         adc   #ScreenWidth*4         clc         adc   #ScreenWidth-PlayfieldWidth-1         cmp   #Screen+ScreenWidth*(PlayfieldHeight+PlayfieldY)         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         txs         pld         plp         rtl         endScrollPlayfieldLeftDown start         php         phd         tsx         sei         sep   #$20         longa off         lda   >$E0C068         ora   #%00110000         sta   >$E0C068         rep   #$20         longa on         lda   #Screen+(PlayfieldY+PlayfieldHeight-4)*ScreenWidthloop     tcd         clc         adc   #ScreenWidth*4         clc         adc   #PlayfieldWidth+1         tcs         pei (PlayfieldWidth+2)         pei (PlayfieldWidth)         pei (PlayfieldWidth-2)         pei (PlayfieldWidth-4)         pei ($7A)         pei ($78)         pei ($76)         pei ($74)         pei ($72)         pei ($70)         pei ($6E)         pei ($6C)         pei ($6A)         pei ($68)         pei ($66)         pei ($64)         pei ($62)         pei ($60)         pei ($5E)         pei ($5C)         pei ($5A)         pei ($58)         pei ($56)         pei ($54)         pei ($52)         pei ($50)         pei ($4E)         pei ($4C)         pei ($4A)         pei ($48)         pei ($46)         pei ($44)         pei ($42)         pei ($40)         pei ($3E)         pei ($3C)         pei ($3A)         pei ($38)         pei ($36)         pei ($34)         pei ($32)         pei ($30)         pei ($2E)         pei ($2C)         pei ($2A)         pei ($28)         pei ($26)         pei ($24)         pei ($22)         pei ($20)         pei ($1E)         pei ($1C)         pei ($1A)         pei ($18)         pei ($16)         pei ($14)         pei ($12)         pei ($10)         pei ($0E)         pei ($0C)         pei ($0A)         pei ($08)         pei ($06)         pei ($04)         pei ($02)         sec         sbc   #ScreenWidth*4         sec         sbc   #ScreenWidth+PlayfieldWidth+1         cmp   #Screen+ScreenWidth*(PlayfieldY-1)         beq   leave         jmp   loopleave    sep   #$20         longa off         lda   >$E0C068         and   #%11001111         sta   >$E0C068         rep   #$20         longa on         txs         pld         plp         rtl         end