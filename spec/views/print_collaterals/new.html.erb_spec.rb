require 'spec_helper'

describe "print_collaterals/new" do
  before(:each) do
    assign(:print_collateral, stub_model(PrintCollateral,
      :print_category => "MyString",
      :title => "MyString",
      :description => "MyText",
      :url => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new print_collateral form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => print_collaterals_path, :method => "post" do
      assert_select "input#print_collateral_print_category", :name => "print_collateral[print_category]"
      assert_select "input#print_collateral_title", :name => "print_collateral[title]"
      assert_select "textarea#print_collateral_description", :name => "print_collateral[description]"
      assert_select "input#print_collateral_url", :name => "print_collateral[url]"
      assert_select "input#print_collateral_image", :name => "print_collateral[image]"
    end
  end
end