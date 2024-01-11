 class Exercise
  attr_accessor :exercise, :sets, :reps, :weights

  def initialize(exercise, sets, reps, weights)
    @exercise = exercise
    @sets = sets
    @reps = reps
    @weights = weights
  end
end
