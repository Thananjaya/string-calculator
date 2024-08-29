require "string_calculator"

#spec for string calculator module
describe StringCalculator do
  # test case for adding numbers
  describe ".add" do
    context "input passed as empty string" do
      it "should return zero" do
        expect(StringCalculator.add('')).to eq(0)
      end
    end
  end
end