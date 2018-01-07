Facter.add(:wrole) do
	setcode do 
		trole = Facter.value(:hostname)
		case trole
		when /^www\d+$/
 			'webrole'
		else
			''	
		end
	end
end
