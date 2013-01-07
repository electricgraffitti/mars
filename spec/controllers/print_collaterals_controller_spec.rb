require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PrintCollateralsController do

  # This should return the minimal set of attributes required to create a valid
  # PrintCollateral. As you add validations to PrintCollateral, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "print_category" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PrintCollateralsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all print_collaterals as @print_collaterals" do
      print_collateral = PrintCollateral.create! valid_attributes
      get :index, {}, valid_session
      assigns(:print_collaterals).should eq([print_collateral])
    end
  end

  describe "GET show" do
    it "assigns the requested print_collateral as @print_collateral" do
      print_collateral = PrintCollateral.create! valid_attributes
      get :show, {:id => print_collateral.to_param}, valid_session
      assigns(:print_collateral).should eq(print_collateral)
    end
  end

  describe "GET new" do
    it "assigns a new print_collateral as @print_collateral" do
      get :new, {}, valid_session
      assigns(:print_collateral).should be_a_new(PrintCollateral)
    end
  end

  describe "GET edit" do
    it "assigns the requested print_collateral as @print_collateral" do
      print_collateral = PrintCollateral.create! valid_attributes
      get :edit, {:id => print_collateral.to_param}, valid_session
      assigns(:print_collateral).should eq(print_collateral)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PrintCollateral" do
        expect {
          post :create, {:print_collateral => valid_attributes}, valid_session
        }.to change(PrintCollateral, :count).by(1)
      end

      it "assigns a newly created print_collateral as @print_collateral" do
        post :create, {:print_collateral => valid_attributes}, valid_session
        assigns(:print_collateral).should be_a(PrintCollateral)
        assigns(:print_collateral).should be_persisted
      end

      it "redirects to the created print_collateral" do
        post :create, {:print_collateral => valid_attributes}, valid_session
        response.should redirect_to(PrintCollateral.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved print_collateral as @print_collateral" do
        # Trigger the behavior that occurs when invalid params are submitted
        PrintCollateral.any_instance.stub(:save).and_return(false)
        post :create, {:print_collateral => { "print_category" => "invalid value" }}, valid_session
        assigns(:print_collateral).should be_a_new(PrintCollateral)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PrintCollateral.any_instance.stub(:save).and_return(false)
        post :create, {:print_collateral => { "print_category" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested print_collateral" do
        print_collateral = PrintCollateral.create! valid_attributes
        # Assuming there are no other print_collaterals in the database, this
        # specifies that the PrintCollateral created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PrintCollateral.any_instance.should_receive(:update_attributes).with({ "print_category" => "MyString" })
        put :update, {:id => print_collateral.to_param, :print_collateral => { "print_category" => "MyString" }}, valid_session
      end

      it "assigns the requested print_collateral as @print_collateral" do
        print_collateral = PrintCollateral.create! valid_attributes
        put :update, {:id => print_collateral.to_param, :print_collateral => valid_attributes}, valid_session
        assigns(:print_collateral).should eq(print_collateral)
      end

      it "redirects to the print_collateral" do
        print_collateral = PrintCollateral.create! valid_attributes
        put :update, {:id => print_collateral.to_param, :print_collateral => valid_attributes}, valid_session
        response.should redirect_to(print_collateral)
      end
    end

    describe "with invalid params" do
      it "assigns the print_collateral as @print_collateral" do
        print_collateral = PrintCollateral.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PrintCollateral.any_instance.stub(:save).and_return(false)
        put :update, {:id => print_collateral.to_param, :print_collateral => { "print_category" => "invalid value" }}, valid_session
        assigns(:print_collateral).should eq(print_collateral)
      end

      it "re-renders the 'edit' template" do
        print_collateral = PrintCollateral.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PrintCollateral.any_instance.stub(:save).and_return(false)
        put :update, {:id => print_collateral.to_param, :print_collateral => { "print_category" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested print_collateral" do
      print_collateral = PrintCollateral.create! valid_attributes
      expect {
        delete :destroy, {:id => print_collateral.to_param}, valid_session
      }.to change(PrintCollateral, :count).by(-1)
    end

    it "redirects to the print_collaterals list" do
      print_collateral = PrintCollateral.create! valid_attributes
      delete :destroy, {:id => print_collateral.to_param}, valid_session
      response.should redirect_to(print_collaterals_url)
    end
  end

end