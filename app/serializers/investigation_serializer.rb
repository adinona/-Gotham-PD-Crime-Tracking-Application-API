class InvestigationSerializer < ActiveModel::Serializer
  attributes :id, :title, :associated_crimes, :suspects, :assigned_officers, :associated_notes

	def associated_crimes
		object.crimes.map do |c|
	  		CrimeSerializer.new(c)
	    end
	end
	def suspects
		object.suspects.map do |c|
	  		SuspectSerializer.new(c)
	    end
		
	end
	def assigned_officers
		object.assignments.map do |c|
	  		OfficerInvestSerializer.new(c)
	    end
		
	end
	def associated_notes
		object.investigation_notes.map do |c|
	  		NoteSerializer.new(c)
	    end
	end
end
