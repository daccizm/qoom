require 'spec_helper'

describe "demands/edit" do
  before(:each) do
    @demand = assign(:demand, stub_model(Demand,
      :content => "MyString"
    ))
  end

  it "renders the edit demand form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", demand_path(@demand), "post" do
      assert_select "input#demand_content[name=?]", "demand[content]"
    end
  end
end
