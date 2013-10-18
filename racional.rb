# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	# metodo inicializador
	def initialize()
	
	end

#==========================================================================

	# metodo mostrar
	def toString(num1, den1, num2, den2)
	
	mcd1 = gcd(num1,den1)				#llamar al metodo Maximo Comun Divisor
	puts "Numero racional 1: "
	puts "#{num1/mcd1} / #{den1/mcd1}"

	mcd2 = gcd(num2,den2)
	puts "Numero racional 2: "
	puts "#{num2/mcd2} / #{den2/mcd2}"

	end

#==========================================================================

	# metodo sumar
	def suma(num1, den1, num2, den2)
	
	rac1 = den2 * num1
	rac2 = den1 * num2

	den = den1 * den2
	num = rac1 + rac2

	mcd = gcd(num,den)

	puts "Suma: #{num1}/#{den1} + #{num2}/#{den2} = #{num/mcd}/#{den/mcd}"	
	
	return num/mcd, den/mcd
	end

#==========================================================================

	#metodo restar
	def resta(num1, den1, num2, den2)

	rac1 = den2 * num1
	rac2 = den1 * num2

	den = den1 * den2
	num = rac1 - rac2

	mcd = gcd(num,den)

	puts "Resta: #{num1}/#{den1} - #{num2}/#{den2} = #{num/mcd}/#{den/mcd}"
	
	return num/mcd, den/mcd
	end

#==========================================================================

	#metodo producto
	def producto(num1, den1, num2, den2)

	num = num1 * num2
	den = den1 * den2

	mcd = gcd(num,den)

	puts "Producto: #{num1}/#{den1} * #{num2}/#{den2} = #{num/mcd}/#{den/mcd}"
	
	return num/mcd, den/mcd
	end

#==========================================================================

	#metodo division
	def division(num1, den1, num2, den2)

	num = num1 * den2
	den = den1 * num2

	mcd = gcd(num,den)

	puts "Division: #{num1}/#{den1} / #{num2}/#{den2} = #{num/mcd}/#{den/mcd}"
	
	return num/mcd, den/mcd
	end


end
