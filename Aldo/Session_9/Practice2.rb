require "singleton"
class Products
	include Singleton
	attr_reader :counterOfProduct
	def initialize
		@myHashName = { 1 => "Pantalon" ,  2 => "Polera" }
		@myHashPrice = { 1 => 15.6 ,  2 => 29.99 }
		@myHashStock = { 1 => 50 ,  2 => 60 }
		@counterOfProduct = 2
	end
	def getHashPrice productId
		@myHashPrice[productId]
	end
	def getHashStock productId
		@myHashStock[productId]
	end
	def subtractionStock productId,count
		@myHashStock[productId] -= count
	end
	def calculatePrice productId,price
		 price * @myHashPrice[productId]
	end
	def getAll
		return @myHashName.keys,@myHashName.values,@myHashStock.values,@myHashPrice.values
	end
end
class Sales
	include Singleton
	def initialize
		@myHashCount = Hash.new
		@myHashProductId = Hash.new
		@myHashPrice = Hash.new
	end
	def add sale
		@myHash.store
	end
end
myProducts = Products.instance
option = 0
while option != 4
	system "cls"
	puts "clothing for sale"
	puts "1.- Pantalon a #{myProducts.getHashPrice 1} bs, stock #{myProducts.getHashStock 1}"
	puts "2.- Polera a #{myProducts.getHashPrice 2} bs, stock #{myProducts.getHashStock 2}"
	puts "4.- Salir"
	print "Enter to opcion : "
	option = gets.chomp.to_i
	case option
		when 1 then 
			print "Digite la cantidad de pantalones a comprar : " 
			count = gets.chomp.to_i
			puts "La cantidad a comprar es #{count}, precio unitario #{myProducts.getHashPrice option}, total a pagar #{myProducts.calculatePrice option,count}"
			puts "Confirmar transaccion s/n :"
			confir = gets.chomp
			if confir.upcase == "S" 
				myProducts.subtractionStock option,count
				puts "Compra realizada con exito :)"
				print "presione una tecla para continuar"
				gets.chomp
			end
		when 2 then
			print "Digite la cantidad de poleras a comprar : " 
			count = gets.chomp.to_i
			puts "La cantidad a comprar es #{count}, precio unitario #{myProducts.getHashPrice option}, total a pagar #{myProducts.calculatePrice option,count}"
			puts "Confirmar transaccion s/n :"
			confir = gets.chomp
			if confir.upcase == "S" 
				myProducts.subtractionStock option,count
				puts "Compra realizada con exito :)"
				print "presione una tecla para continuar"
				gets.chomp
			end
	end
end

arrayKey,arrayName,arrayStock,arrayPrice = myProducts.getAll
puts "Reporte de Productos"
puts "ProductId 	Producto 		Stock 		Precio"
arrayKey.length.times do |value|
	puts "#{arrayKey[value]} 		#{arrayName[value]} 		#{arrayStock[value]} 		#{arrayPrice[value]}"
end