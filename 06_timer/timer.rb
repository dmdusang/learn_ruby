class Timer

	attr_accessor :seconds, :minutes, :hours

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	def seconds
		@seconds
	end

	def time_string
		seconds_to_minutes
		minutes_to_hours
		time = ""
		
		if @hours < 10
			time += "0#{@hours}"
		else
			time += hours.to_s
		end
		time += ":"
		if @minutes < 10
			time += "0#{@minutes}"
		else
			time += minutes.to_s
		end
		time += ":"
		if @seconds < 10
			time += "0#{@seconds}"
		else
			time += seconds.to_s
		end
	end

	private
	def less_than_10 num
		return num < 10
	end

	def seconds_to_minutes
		@minutes, @seconds = @seconds / 60, @seconds % 60
	end

	def minutes_to_hours
		@hours, @minutes = @minutes / 60, @minutes % 60
	end
end

