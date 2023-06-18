#line 1 "C:/Users/Public/Documents/Mikroelektronika/mikroC PRO for ARM/Examples/button3Define.c"



void main() {
 GPIO_Digital_Input(&GPIOA_IDR,_GPIO_PINMASK_0);
 GPIO_Digital_Input(&GPIOD_ODR,_GPIO_PINMASK_15);

while(1){
 if ( Button(&GPIOA_IDR,0,100,1) ){
 while(1){
  GPIOD_ODR.B15 = ~ GPIOD_ODR.B15 ;
 }
 }
}
}
