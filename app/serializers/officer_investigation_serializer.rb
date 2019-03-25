class OfficerInvestigationSerializer < ActiveModel::Serializer
  	attributes :title_of_case, :start_date, :end_date, :is_open, :was_solved


  	def title_of_case
  		object.title
  	end

  	def start_date
  		object.date_opened
  		
  	end

  	def end_date
  		object.date_closed
  		
  	end

  	def was_solved
  		object.solved
  		
  	end

	def suspected_investigations
	  	object.investigations.map do |invest|
	  		CriminalInvestigationSerializer.new(invest)
	    end
	end

	def is_open
		if object.date_closed == nil
			true
		else 
			false
		end
	end

end
