require 'generator/exercise_cases'

class RunLengthEncodingCase < Generator::ExerciseCase

  def workload
    indent_lines([
      "input = '#{input}'",
      "output = '#{expected}'",
      assertion
    ], 4)
  end

  private

  def assertion
    if property == 'consistency'
      'assert_equal output,
                 RunLengthEncoding.decode(RunLengthEncoding.encode(input))'
    else
      "assert_equal output, RunLengthEncoding.#{property}(input)"
    end
  end

end
