#define MaviLed GPIOD_ODR.B15      //buton kontrolü-2
#define BUTTON Button(&GPIOA_IDR,0,100,1)// 1. A portu, 2. 0. pin, 3. 100 ms bekleme süresi, 4. lojik=1

void main() {
 GPIO_Digital_Input(&GPIOA_IDR,_GPIO_PINMASK_0);
 GPIO_Digital_Input(&GPIOD_ODR,_GPIO_PINMASK_15);

while(1){
     if (BUTTON){
        while(1){
         MaviLed= ~MaviLed;
         }
         }
}
}