Facter.add(:role) do
	has_weight 100
	setcode do
		if File.exist? '/tmp/role.txt'
			Facter::Core::Execution.exec('cat /tmp/role.txt')
		end
	end
end
Facter.add(:role) do
	setcode do
		'default'
	end
end

