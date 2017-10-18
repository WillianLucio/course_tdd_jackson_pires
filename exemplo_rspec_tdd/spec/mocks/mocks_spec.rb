require 'student'
require 'course'

describe "Stub" do
  it '#has_finished' do
    # Setup
    student = Student.new

    # Verify
    expect(student).to receive(:bar)

    # exercise
    student.bar

  end
end
