require "string_calculator"

#spec for string calculator module
describe StringCalculator do
  # test case for adding numbers
  describe ".add" do
    context "input as empty string" do
      it "should return zero" do
        expect(StringCalculator.add(''))
      end
    end
  end
end