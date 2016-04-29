class Entrevistum < ActiveRecord::Base
	belongs_to :horario
	belongs_to :aula
	belongs_to :motivo
	has_one :derivation
	
	validates :horario_id, :presence => true
	validates :motivo_id, :presence => true
	validates :aula_id, :presence => true

	def asistencia_valor
		if asistencia == true
			"Presente"
		elsif asistencia == false 
			"Ausente"
		else
			"En Curso"
		end
	end

	def tipo_valor
		if tipo == true
			"Privada"
		elsif tipo == false
			"Grupal"
		else
			"No especificado"
		end
	end
end