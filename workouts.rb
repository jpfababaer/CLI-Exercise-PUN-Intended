require_relative "exercise"

class Workouts

  def initialize
    @workouts = []
    @pushups = 0
  end

  #Loop method for infinite loop:
  def run 
    loop do
      puts "\n"
      puts "What's poppin'! How can I help with your workouts today?"
      puts "\n"
      puts "Here are your options: "
      puts "1: Add a workout"
      puts "2: Check the workout list"
      puts "3: +1 push-up"
      puts "4: Log out."

      option = gets.chomp.to_i

      case option
      when 1
        add_workout
      when 2
        workout_list
      when 3
        push_ups
      when 4
        puts "Get some rest! Sleep well."
        break
      else
        puts "Your option is invalid. Please choose between 1-4"
      end
    end
  end

  #Method 1: Adding workouts
  def add_workout

    puts "What exercise did you do today?"
    exercise = gets.chomp

    puts "How many sets were they?"
    sets = gets.chomp.to_i

    puts "How many repetitions were in each set?"
    reps = gets.chomp.to_i

    puts "What was the weight you were using?"
    weights = gets.chomp.to_i

    workout = Exercise.new(exercise, sets, reps, weights)
    @workouts << workout
  end

  #Method 2: View workout list
  def workout_list
    puts "Here are your workouts: "
    puts "\n"
    
    @workouts.each do |one_exercise|
      puts "Your exercise: #{one_exercise.exercise}"
      puts "It was #{one_exercise.sets} sets of #{one_exercise.reps} repetition with #{one_exercise.weights}lbs."
      puts "\n"
    end
  end

  #Method 3: Do a push-up
  def push_ups
    @pushups += 1

    puts "Your total push-up count: #{@pushups}. NICE!"
  end
end


      
