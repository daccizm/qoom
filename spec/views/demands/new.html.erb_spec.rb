require 'spec_helper'

describe "demands/new" do
  before(:each) do
    assign(:demand, stub_model(Demand,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new demand form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", demands_path, "post" do
      assert_select "input#demand_content[name=?]", "demand[content]"
    end
  end
end
