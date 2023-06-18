void main() {
 GPIO_Digital_Input(&GPIOA_IDR,_GPIO_PINMASK_0);
 GPIO_Digital_Input(&GPIOD_ODR,_GPIO_PINMASK_12);

while(1){
     if (GPIOA_IDR.B0){

         GPIOD_ODR.B12=1; //led yanar
         Delay_ms(2000);
         GPIOD_ODR.B12=0;            // led söner
         Delay_ms(2000);
         }
}