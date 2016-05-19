module ConvertTo
	def fromMinutesToHours minutesConvert
		minutesConvert/60.0
	end
	def fromHoursToDays hoursConvert
		hoursConvert/24.0
	end
	def fromDaysToMonth daysConvert
		daysConvert/30.0
	end
end