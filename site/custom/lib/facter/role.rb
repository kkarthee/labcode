Facter.add(:role) do
	setcode do 
		trole = Facter.value(:hostname)
		case trole
		when /^www\d+$/
 			'webrole'
		else
			trole
		end
	end
end
