require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end

  describe "initialize" do
    it "records all of the toppings" do
      toppings = [
        Topping.new("pepperoni"),
        Topping.new("onion", vegetarian:true)
      ]
      pie = Pizza.new(toppings)
      expect(pie.toppings).to eq(toppings)
    end
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
    it "identifies a topping as vegetarian or not" do
      topping = Topping.new("pep")
      topping2 = Topping.new("onion", vegetarian: true)
    expect(topping.vegetarian).to eq(false)
    expect(topping2.vegetarian).to eq(true)
  end
end



