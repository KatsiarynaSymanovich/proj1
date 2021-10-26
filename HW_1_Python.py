#1) Создать переменную типа String
Str = "String"

#2) Создать переменную типа Integer
Int = 1000

#3) Создать переменную типа Float
Flo = 3.14

#4) Создать переменную типа Bytes
Byte = bytes('1, 2, 3, 4', 'utf-8')

#5) Создать переменную типа List
List = ['I', 'am', 'Kate']

#6) Создать переменную типа Tuple
Tuple = (Str, Int, Flo)

#7) Создать переменную типа Set
Set = {"Hi,", "everyone!"}

#8) Создать переменную типа Frozen set
Froz = frozenset({Flo, 4, 5})

#9) Создать переменную типа Dict
Dic = dict(dic1=1, dic2=2)

#10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print("Str =", Str, type(Str))
print("Int =", Int, type(Int))
print("Flo =", Flo, type(Flo))
print("Byte = ", Byte, type(Byte))
print("List = ", List, type(List))
print("Tuple = ", Tuple, type(Tuple))
print("Set = ", Set, type(Set))
print("Froz = ", Froz, type(Froz))
print("Dic = ", Dic, type(Dic))

#11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
Str1 = "Katsiaryna"
Str2 = "Symanovich"
Conct = Str1 + ' ' + Str2
print(Conct)

#12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
print(Str,',', Int)

#13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
print(Str,'+',Int)
