class CrimeSerializer < ActiveModel::Serializer
	attributes :crime_name, :is_felony 

	def crime_name
		object.name
	end
	def is_felony
		object.felony
	end
end