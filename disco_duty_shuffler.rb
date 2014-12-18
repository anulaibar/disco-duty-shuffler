#!/usr/bin/ruby
# Hela sköna klass 3C
kids = %w(
    Lois Enya Eira Joel Wilhelm Edward Vincent Harry
    Oliver Elsa Nellie Molly Lorentz Elis Atalia Sharil
    Axel Irja Alfred Hanna Valiant Alexander Olle Lo
    Kajsa Arvid Leon Agnes
)

# Några kan inte vara med...
cannot_come = %w(
    Arvid Lois Edward
)

# ...så de får vi ta bort :(
kids -= cannot_come

# Föräldrar som gillar juldisco
parents = %w(
    Thomas Sarhadon Daniel Petra Charlotte Maria/Pontus
    Johanna Annika Kajsa
)

# Vi behöver toavakter, kioskbiträden och entrévärdaar
jobs = %w(
    Toavakter Kioskbiträden Entrévärdar
)

# Det finns två arbetspass för kvällen
shifts = %w(
    17:45-19:15 19:15-20:45
)

# Vi blandar om bland eleverna och föräldrarna
kids.shuffle!
parents.shuffle!

# För varje jobb...
jobs.each do |job|

    # ...finns det tre ansvariga föräldrar
    puts "#{job} (#{parents.pop(3).join(', ')})"
    
    # För varje arbetspass ...
    shifts.each do |shift|

        # ...finns det 4 ansvariga elever 
        puts "#{shift}: #{kids.pop(4).join(', ' )}"
    end
    puts 
end

# Resten får hjälpa tomten
puts "Tomtens hjälpredor"
puts "#{kids.join(', ')}"
