class CriminalSerializer < ActiveModel::Serializer
  	attributes :id, :name, :suspected_investigations

  	def name
  		object.first_name + " " + object.last_name
  	end

	def suspected_investigations
	  	object.investigations.map do |invest|
	  		CriminalInvestigationSerializer.new(invest)
	    end
	end

end
