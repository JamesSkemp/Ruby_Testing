class Bacon
	attr_accessor :expired

	# self. = class definition
	def edible?
		!expired
	end

	def expired!
		# always use self. prefix on setter methods
		self.expired = true
	end
end