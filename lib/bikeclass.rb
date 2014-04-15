class Bike
	def intialize
		fix!
	end

	def broken?
		@broken
	end

	def break!
		@broken = true
		self
	end

	def fix!
		@broken = false
		self
	end

	def status
		return "Feelin A-okay! :D" if @broken == false
		return "Help me I can't get up ;~;" if @broken == true
		return "ERROR. STATUS UNKNOWN" if @broken == nil
	end
end