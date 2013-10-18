# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

   def test_suma
      assert_equal([1, 2], Fraccion.new().suma(1,7,2,8))  	# 1/7 + 2/8 = 11/28 
   end

   def test_resta
      assert_equal([-1, 9], Fraccion.new().resta(1,7,2,8))   	# 1/7 - 2/8 = -3/28
   end

   def test_producto
      assert_equal([1, 28], Fraccion.new().producto(1,7,2,8)) 	# 1/7 * 2/8 = 1/28
   end

   def test_division
	  assert_equal([1, 1], Fraccion.new().division(1,7,2,8))    # 1/7 / 2/8 = 4/7
   end


end
