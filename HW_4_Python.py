# HW_4
# 1. Создать переменную count со значением 0
count = 0
# 2. Создать переменную range_count со значением 10
range_count = 10
# 3. Создать переменную for_count со значением 0
for_count = 0
# 4. Создать переменную run  со значением True
run = True
# 5. Сделать цикл while который будет работать пока run
#Тело цикла:
#	5.1 Выводить в консоль “Hello Cycle”
#   5.2 Присвоить run значение False
while run:
	print("Hello Cycle")
	run = False
# 6. Сделать цикл while который будет работать пока count < 7
# Тело цикла:
# 	6.1 Выводить в консоль (“Step while1=”, count)
# 	6.2 Переменной count прибавлять 1 с присвоением.
while count < 7:
	print("Step while1= ", count)
	count += 1
# 7. Сделать цикл while который будет работать пока count < range_count
# Тело цикла:
#	7.1 Выводить в консоль (“Step while2 =”, count)
#	7.2 Переменной count прибавлять 1 с присвоением.
while count < range_count:
	print("Step while2= ", count)
	count += 1

# Обнулить count
# 8. Сделать цикл while который будет работать пока count <= range_count
# Тело цикла:
#	8.1 Выводить в консоль (“Step while3 =”, count)
#	8.2 Переменной count прибавлять 1 с присвоением.
#	8.3 Сделать if с условием, если count равен 3 то выводить в консоль (“Step =”, count, ‘If body’)
count = 0
while count <= range_count:
	print("Step while3 = ", count)
	count += 1
	if count == 3:
		print("Step = while3", count, 'If body')
# Обнулить count
# 9. Сделать цикл while который будет работать пока count < 12
# Тело цикла:
#	9.1 Выводить в консоль (“Step while4=”, count)
#	9.2 Переменной count прибавлять 1 с присвоением.
#	9.2 Сделать if с условием, если count равен range_count то цикл остановится.
#	9.3 В теле if вывести в консоль (“STOP”, count)
count = 0
while count < 12:
	print("Step while4 = ", count)
	count += 1
	if count == range_count:
		print("STOP", count)
		break
#Цилы For
# 10. Сделать цикл for c переменной item который будет работать пока счётчик range досчитает от for_count  до range_count
# Тело цикла:
# 10.1 Вывести в консоль (‘Step for1 =’, item)
for item in range(for_count, range_count):
	print("Step for1 = ", item)

# Сделать цикл for c переменной item который будет работать пока счётчик range досчитает от 0 до 30
# Тело цикла:
# 11.1 Вывести в консоль (‘Step for2=’, item)
# 11.2 Сделать if с условием, если item равен  5, то вывести в консоль (‘Item =’, item).
# 11.3 Сделать if с условием, если item равен  10, то вывести в консоль (‘Item =’, item).
# 11.4 Сделать if с условием, если item меньше 4, то вывести в консоль (item, "< 4").
# 11.5 Сделать if с условием, если item больше или равно 27, то вывести в консоль (item, ">= 27").
for item in range(0, 30):
	print("Step for2= ", item)
	if item == 5:
		print("Item = ", item)
	if item == 10:
		print("Item = ", item)
	if item < 4:
		print(item, "< 4")
	if item >=  27:
		print(item, ">= 27")
# Сделать цикл for c переменной item который будет работать пока счётчик range досчитает от 0 до range_count +1
# Тело цикла:
# 12.1 Вывести в консоль (‘Step for3=’, item)
# 12.2 Сделать if с условием, если item равен  7.
#	 - В теле if создать переменную inner_count равную 0
#	 - В теле if вывести в консоль (‘-- inner_count =’, inner_count)
#	 - В теле if сделать ещё одни цикл for с переменной inner_item который будет работать пока счётчик range досчитает от 0 до item.
#	Тело внутреннего цикла For:
#		-- Вывести в консоль (‘-------- Inner_Step =’, inner_item)
#		-- Сделать if если inner_item равен 5, то в inner_count присвоить inner_item.
#	- За пределами тела предыдущего цикла вывести в консоль (‘-- inner_count =’, inner_count)
for item in range(0, range_count+1):
	print("Step for3 = ", item)
	if item == 7:
		inner_count = 0
		print("-- inner_count =", inner_count)
		for inner_item in range(0, item):
			print("-------- Inner_Step = ", inner_item)
			if inner_item == 5:
				inner_count = inner_item
		print("-- inner_count = ", inner_count)
# Сделать цикл for c переменной item который будет работать пока счётчик range досчитает от 0 до 20
# Тело цикла:
# 13.1 Вывести в консоль (‘Step for4 =’, item)
# 13.2 Сделать if с условием, если item больше  7 и item меньше 12.
#	- В теле if вывести (‘If_item =’, item)
#	- В теле if поставить continue
# 13.3 Выйти з if. Вывести в консоль (‘End_iteration =’, item)
for item in range(0, 20):
	print("Step for4 = ", item)
	if (item > 7) and (item <12):
		print("If_item = ", item)
		continue
	print("End_iteration = ", item)




