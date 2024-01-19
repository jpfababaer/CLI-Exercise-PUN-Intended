require "minitest/autorun"
require "./workouts"

class TestWorkouts < Minitest::Test
  
  def test_push_ups
    workouts = Workouts.new
    assert_equal 1, workouts.push_ups, "Failed to add a push-up!"
  end

  def test_workout_list
    workouts = Workouts.new
    assert_equal([], workouts.workout_list, "Failed to introduce the application")
  end

end
