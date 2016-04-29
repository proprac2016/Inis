class Aula < ActiveRecord::Base
	has_many :entrevistum


	def aleatorio(number)
	  charset = Array('a'..'z')
	  Array.new(number) { charset.sample }.join
	end

	validates :nombre, presence: {message: "El campo no puede quedar vacio"}
end

