require "string_calculator"

#spec for string calculator module
describe StringCalculator do
  let(:string_calculator) { StringCalculator }
  
  # test case for adding numbers
  describe ".add" do
    context "input passed as empty string" do
      it "should return 0" do
        expect(string_calculator.add("")).to eq(0)
      end
    end

    context "string input passed with single integer, 7" do
      it "should return 7" do
        expect(string_calculator.add("7")).to eq(7)
      end
    end

    context "string input passed with single integer, 10" do
      it "should return 10" do
        expect(string_calculator.add("10")).to eq(10)
      end
    end

    context "string input passed with two integers, 7 & 10" do
      it "should return 17" do
        expect(string_calculator.add("7, 10")).to eq(17)
      end
    end

    context "string input passed with multiple integers" do
      it "return 142 from processing '7, 10 & 25, 100' " do
        expect(string_calculator.add("7, 10 & 25, 100")).to eq(142)
      end
    end

    context "string input passed with new line along with numbers" do
      it "return 6 from processing '1\\n2,3'" do
        expect(string_calculator.add("1\n2,3")).to eq(6)
      end
    end

    context "string input passed with different delimeters" do
      it "return 35 from processing '//;\\n10;25'" do
        expect(string_calculator.add("//;\n10;25")).to eq(35)
      end
    end
    
    context "string input passed with negative numbers, -21 & 100" do
      it "return 'Negative numbers not allowed -21'" do
        expect(string_calculator.add("-21, 100")).to eq('Negative numbers not allowed -21')
      end
    end

    context "string input passed with negative numbers and different delimeters" do
      it "return 'Negative numbers not allowed -96, -88, -52' from processing '//;\\n10;25-96,100,-88//-52'" do
        expect(string_calculator.add("//;\n10;25-96,100,-88//-52")).to eq('Negative numbers not allowed -96, -88, -52')
      end
    end
  end
end
