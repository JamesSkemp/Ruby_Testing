require 'bacon'

describe Bacon do
	it "is edible" do
		expect(Bacon.new.edible?).to be_truthy
	end

	it "expired!" do
		bacon = Bacon.new
		bacon.expired!
		expect(bacon).to_not be_edible
	end
end