require "minitest/autorun"
require "./workouts"

class TestWorkouts < Minitest::Test
  
  def test_pushups
    workouts = Workouts.new
    assert_equal 1, workouts.push_ups, "Failed to add a push-up!"
  end

  def test_workout_list
    workouts = Workouts.new
    assert_equal([], workouts.workout_list, "Failed to display workout Array")
  end

end
