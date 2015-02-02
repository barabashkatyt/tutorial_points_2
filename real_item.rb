class RealItem < Item

	attr_reader:weight

	def initialize(options)
		@weight = options[:weight]
		super(options)
	end

	def info
		yeild(weight)
		
	end

end