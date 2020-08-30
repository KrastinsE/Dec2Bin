  
def binary(n):
   if n > 1:
       binary(n//2)
       print(n % 2,end = '')
while True: 
    dec = input("Ievadiet pozitīvu skaitli: ") 
    try: 
        dec = int(dec) 
        if dec <= 0: 

print("Skaitļa",dec,"ievadītā vērtība ir: ")
binary(dec)