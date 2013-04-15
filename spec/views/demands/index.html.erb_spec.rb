require 'spec_helper'

describe "demands/index" do
  before(:each) do
    assign(:demands, [
      stub_model(Demand,
        :content => "Content"
      ),
      stub_model(Demand,
        :content => "Content"
      )
    ])
  end

  it "renders a list of demands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
