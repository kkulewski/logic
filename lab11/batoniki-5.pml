mtype = {PLN2, PLN5, MILK, DARK}

chan inputStream=[1] of {mtype};
chan outputStream=[1] of {mtype};

int userCash;
int userDark;
int userMilk;


int machineCash;
int machineDark;
int machineMilk;

proctype user()
{
	mtype item;
    
    do
    :: (userCash >= 2)
    {
        // suma pieniedzy maszyny i klienta jest stala
        //assert(userCash + machineCash == 45);
    
        // suma pieniedzy i wartosci batonikow w maszynie jest stala
        assert(machineMilk * 2 + machineDark * 5 + machineCash == 45)
    
        if
        :: (userCash >= 5) -> atomic
        {
            userCash = userCash - 5;
            inputStream!PLN5;            
            
            outputStream?item;           
            if
            :: (item == DARK) -> atomic
            {
                printf(">> Otrzymalem DARK\n");
                userDark = userDark + 1;
            }
            :: (item == PLN5) -> atomic
            {
                printf(">> Zwrocono mi PLN5\n");
                userCash = userCash + 5;
            }
            fi
            
            // otrzymalem dark lub zwrot PLN5
            assert(item == DARK | item == PLN5)
        }
        :: (userCash >= 2) -> atomic
        {
            userCash = userCash - 2;
            inputStream!PLN2;            
            
            outputStream?item;           
            if
            :: (item == MILK) -> atomic
            {
                printf(">> Otrzymalem MILK\n");
                userMilk = userMilk + 1;
            }
            :: (item == PLN2) -> atomic
            {
                printf(">> Zwrocono mi PLN2\n");
                userCash = userCash + 2;
            }
            fi
            
            // otrzymalem milk lub zwrot PLN2
            assert(item == MILK | item == PLN2)
        }
        fi  
    }
    od
    
    //printf(">> Nie moge wiecej kupic!\n");
}


proctype machine(){
	mtype item;
    
    do  
    :: (machineMilk + machineDark > 0)
    {
        inputStream?item
        
        if
        ::(item == PLN2) -> atomic
        {
            printf("[WRZUCONO: PLN2]\n");
            machineCash = machineCash + 2;
            
            if
            :: (machineMilk > 0) -> atomic
            {   
                printf("[WYDAJE: MILK]\n");
                machineMilk = machineMilk - 1;
                outputStream!MILK; 
            }
            :: else -> atomic
            {
                printf("[ODDAJE: PLN2] (brak MILK)\n"); 
                machineCash = machineCash - 2;
                outputStream!item;
            }
            fi
        }     
        ::(item == PLN5) -> atomic
        {
            printf("[WRZUCONO: PLN5]\n");
            machineCash = machineCash + 5;
            
            if
            :: (machineDark > 0) -> atomic
            {
                printf("[WYDAJE: DARK]\n");
                machineDark = machineDark - 1;
                outputStream!DARK;
            }
            :: else -> atomic
            {
                printf("[ODDAJE: PLN5] (brak DARK)\n");
                machineCash = machineCash - 5;
                outputStream!item;
            }
            fi
        }
        fi  
    }
    od
    
    //printf("[UWAGA] (brak batonikow)\n");
}

init {
    userCash = 45;
    userMilk = 0;
    userDark = 0;
    
    machineCash = 0;
    machineMilk = 10;
    machineDark = 5;
    
    run user();
    run machine();
    
    // Dopuść istnienie więcej niż jednego klienta, jakie własności dotyczące finansów bedą prawdziwe?
    // 1. Suma pieniedzy klientow i maszyny musi byc stala.
}
