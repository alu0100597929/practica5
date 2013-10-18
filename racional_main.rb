require "./racional.rb"

puts "Practica 5 - Numeros Racionales"

puts "Introducir numero racional 1: "			
puts "Numerador: "
num1 = gets.chomp				#recoger numero por teclado
num1 = num1.to_i				#pasar numero a entero

puts "Denominador: "
den1 = gets.chomp
den1 = den1.to_i

puts "\nIntroducir numero racional 2: "
puts "Numerador: "
num2 = gets.chomp
num2 = num2.to_i

puts "Denominador: "
den2 = gets.chomp
den2 = den2.to_i


racionales = Fraccion.new(num1, den1, num2, den2)	#inicializar los numeros



puts "\n\n1. Suma"
puts "2. Resta"
puts "3. Multiplicacion"
puts "4. Division"
puts "5. Mostrar"
puts "0. Salir"

puts "\nElija una opcion: "
opcion = gets.chomp
opcion = opcion.to_i


while (opcion != 0)						#menu de opciones
	if (opcion == 1)					#opcion suma

	racionales.suma(num1, den1, num2, den2)

	end

	if (opcion == 2)					#opcion resta

	racionales.resta(num1, den1, num2, den2)

	end

	if (opcion == 3)					#opcion multiplicacion

	racionales.producto(num1, den1, num2, den2)

	end

	if (opcion == 4)					#opcion division

	racionales.division(num1, den1, num2, den2)

	end

	if(opcion == 5)						#opcion mostrar

	racionales.toString(num1,den1, num2, den2)

	end

puts "\nElija una opcion: "					#pedir una nueva eleccion, si no, salir
opcion = gets.chomp
opcion = opcion.to_i

end
















