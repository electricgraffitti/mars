require 'spec_helper'

describe "print_collaterals/show" do
  before(:each) do
    @print_collateral = assign(:print_collateral, stub_model(PrintCollateral,
      :print_category => "Print Category",
      :title => "Title",
      :description => "MyText",
      :url => "Url",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Print Category/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Url/)
    rendered.should match(/Image/)
  end
end
