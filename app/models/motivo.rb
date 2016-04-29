class Motivo < ActiveRecord::Base
	has_many :entrevistum

	validates :tipo, presence: {message: "El campo no puede quedar vacio"}
end