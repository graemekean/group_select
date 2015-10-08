# HOMEWORK

# PUT AN ARRAY OF PEOPLE NAMES INTO GROUPS
# VARY THE NUMBER OF PEOPLE AND THE SIZE OF THE GROUPS
# ADOPT A STRATEGY TO DEAL WITH UNEVEN GROUP SIZES.

# RANDOMIZE THE GROUPS - SHUFFLE THE ARRAY BEFORE ASSIGNING GROUPS.

# SET VARIABLES

# APOLOGIES - NOT THE BEST CODE - BUT IT WORKS
# NEEDS LOTS OF REFACTORING

students = %w(Iwona Craig GraemeK Kathryn Kieran Peter Ere Chae Zsolt Simon Syed Neil GraemeS Keith Nevin)
# puts students
students.shuffle!
@class_size = students.length.to_i

# METHODS  --------------------------------------------
def intro
  puts "There are #{@class_size} students in the class"

  puts "How many groups you would like the class to be split into: "
end



intro
group_number = gets.chomp.to_i
whole_number = @class_size / group_number
remainder = @class_size % group_number
my_groups = students.each_slice(whole_number).to_a 
puts ""

if remainder == 0
puts "That worked out well - there are exactly #{whole_number} students in each group"
my_groups.each {|group| 
  puts group.to_s
}

else
  puts "That's not an ideal number of groups for this size of class. #{group_number} groups would mean there are #{whole_number} students per group and #{remainder} students left over"
  puts ""
  puts ""

  count = group_number - 1

    for i in 0..count
      puts "In group #{i + 1}"
      puts ""
       puts my_groups[i].to_s
       puts ""
    end

    puts "Would the people below please join one of the other groups please:"
    puts ""
    joiners = my_groups.last.to_a
    puts joiners.to_s

      puts ""
      puts "Would you like me to assign #{joiners} to groups automatically? - (y) or (n)"
      assign_input = gets.chomp

    case assign_input
      when "y"
        number_to_join = joiners.length - 1
        # puts number_to_join
        new_array = joiners.each_slice(1).to_a
        # puts new_array

        for i in 0..number_to_join
          my_groups[i] << new_array.last
          new_array.pop        
        end

         my_groups.pop

        for i in 0..count
              
          puts "In group #{i + 1}"
          puts ""
          puts my_groups[i].to_s
          puts ""
        end

      when "n"
        puts "Thanks - have a good day"
    else
      puts "please select (y) or (n)"
      puts "ok - Have a nice day"

  end



end














