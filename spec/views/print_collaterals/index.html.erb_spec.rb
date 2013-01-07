require 'spec_helper'

describe "print_collaterals/index" do
  before(:each) do
    assign(:print_collaterals, [
      stub_model(PrintCollateral,
        :print_category => "Print Category",
        :title => "Title",
        :description => "MyText",
        :url => "Url",
        :image => "Image"
      ),
      stub_model(PrintCollateral,
        :print_category => "Print Category",
        :title => "Title",
        :description => "MyText",
        :url => "Url",
        :image => "Image"
      )
    ])
  end

  it "renders a list of print_collaterals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Print Category".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
