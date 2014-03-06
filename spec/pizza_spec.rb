require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end
end

describe Topping do
  it "exists" do
    expect(Topping).to be_a(Class)
  end
end

describe ".initialize" do
  it "sets the name of the topping" do
    topping = Topping.new("pep")

    expect(topping.name).to eq("pep")
  end
end

