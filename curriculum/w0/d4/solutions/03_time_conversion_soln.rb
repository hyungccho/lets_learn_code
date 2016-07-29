def time_conversion(mins)
  if mins < 60
    "0:#{mins}"
  else
    hours = mins / 60
    minutes = mins % 60

    if minutes < 10
      "#{hours}:0#{minutes}"
    else
      "#{hours}:#{minutes}"
    end
  end
end
