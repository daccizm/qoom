require 'spec_helper'

describe "demands/show" do
  before(:each) do
    @demand = assign(:demand, stub_model(Demand,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
