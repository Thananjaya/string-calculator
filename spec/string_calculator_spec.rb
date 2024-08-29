require "string_calculator"

#spec for string calculator module
describe StringCalculator do
  # test case for adding numbers
  describe ".add" do
    context "input passed as empty string" do
      it "should return 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "string input passed with single integer, 7" do
      it "should return 7" do
        expect(StringCalculator.add("7")).to eq(7)
      end
    end

    context "string input passed with single integer, 10" do
      it "should return 10" do
        expect(StringCalculator.add("10")).to eq(10)
      end
    end

    context "string input passed with two integers, 7 & 10" do
      it 'should return 17' do
        expect(StringCalculator.add("7, 10")).to eq(17)
      end
    end

    context "string input passed with new line along with numbers" do
      it "should handle new line between numbers" do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end

    context "string input passed with different delimeters" do
      it "should handle delimeters between numbers" do
        expect(StringCalculator.add("//;\n10;25")).to eq(35)
      end
    end
    
    context "string input passed with negative numbers" do
      it "should not process negative numbers" do
        expect(StringCalculator.add("-21, 100")).to eq('Negative numbers not allowed -21')
      end
    end

    context "string input passed with negative numbers and different delimeters" do
      it "should not process should not proces negative numbers" do
        expect(StringCalculator.add("//;\n10;25-96,100,-88//-52")).to eq('Negative numbers not allowed -96, -88, -52')
      end
    end
  end
end
