#define MaviLed GPIO_ODR.B15      //uygulamada button bas�l� tutunca yan�yor. ��z�m� button_uygulamas�_3 te

void main() {
 GPIO_Digital_Input(&GPIOA_IDR,_GPIO_PINMASK_0);
 GPIO_Digital_Input(&GPIOD_ODR,_GPIO_PINMASK_15);

while(1){
     if (GPIOA_IDR.B0){
         MaviLed= ~MaviLed;

         }
}