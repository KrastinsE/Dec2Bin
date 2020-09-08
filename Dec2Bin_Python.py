print("Dec2Bin kalkulators!")

class NotPositiveError(UserWarning): 
	pass 

while True: 
	string = input("Lūdzu, ievadiet pozitīvu skaitli : ") 
	try: 
		number = int(string) 
		if number <= 0: 
			raise NotPositiveError 
		break 
	except ValueError: 
		print("Kļūda! Ievadītā vērtība nebija skaitlis, mēģiniet vēlreiz.") 
	except NotPositiveError: 
		print("Kļūda! Skaitlis nebija pozitīvs, mēģiniet vēlreiz.")

Dnum = string
Dnum = int(Dnum)

binnum = [int(i) for i in list('{0:0b}'.format(Dnum))]

print("Skaitļa", Dnum, "binārā vērtība ir : ",binnum)
print("Aprēķins pabeigts!")
