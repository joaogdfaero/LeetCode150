def timeConversion(s):
    # Split the string into hours, minutes, seconds, and AM/PM
    time_parts = s[:-2].split(':')
    hours, minutes, seconds = map(int, time_parts)
    am_pm = s[-2:]

    # SE FOR PM, SOMA 12, A NAO SER QUE SEJA 12PM, AI NAO FAZ NADA
    if am_pm == 'PM':
        if hours != 12:
            # soma 12
            new_hours = (hours + 12)
        else:
            return s[:-2]
    # SE FOR AM, NAO SOMA NADA, A NAO SER QUE SEJA 12AM, AI REMOVE 12
    elif am_pm == 'AM':
        if hours == 12:
            # remove 12
            new_hours = (hours - 12)
        else:
            return s[:-2]
            
    new_time_str = '{:02d}:{:02d}:{:02d}'.format(new_hours, minutes, seconds)
    new_time_str =  new_time_str
    
    return new_time_str 
             
s = '12:40:22AM'
print(timeConversion(s))