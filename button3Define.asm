_main:
;button3Define.c,4 :: 		void main() {
;button3Define.c,5 :: 		GPIO_Digital_Input(&GPIOA_IDR,_GPIO_PINMASK_0);
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
BL	_GPIO_Digital_Input+0
;button3Define.c,6 :: 		GPIO_Digital_Input(&GPIOD_ODR,_GPIO_PINMASK_15);
MOVW	R1, #32768
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
BL	_GPIO_Digital_Input+0
;button3Define.c,8 :: 		while(1){
L_main0:
;button3Define.c,9 :: 		if (BUTTON){
MOVS	R3, #1
MOVS	R2, #100
MOVS	R1, #0
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
BL	_Button+0
CMP	R0, #0
IT	EQ
BEQ	L_main2
;button3Define.c,10 :: 		while(1){
L_main3:
;button3Define.c,11 :: 		MaviLed= ~MaviLed;
MOVW	R0, #lo_addr(GPIOD_ODR+0)
MOVT	R0, #hi_addr(GPIOD_ODR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #15, #1
EOR	R2, R0, #1
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
LDR	R0, [R1, #0]
BFI	R0, R2, #15, #1
STR	R0, [R1, #0]
;button3Define.c,12 :: 		}
IT	AL
BAL	L_main3
;button3Define.c,13 :: 		}
L_main2:
;button3Define.c,14 :: 		}
IT	AL
BAL	L_main0
;button3Define.c,15 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
