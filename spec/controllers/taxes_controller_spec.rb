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

describe TaxesController do

=begin
  # This should return the minimal set of attributes required to create a valid
  # Tax. As you add validations to Tax, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TaxesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all taxeses as @taxeses" do
      tax = Tax.create! valid_attributes
      get :index, {}, valid_session
      assigns(:taxes).should eq([tax])
    end
  end

  describe "GET show" do
    it "assigns the requested tax as @tax" do
      tax = Tax.create! valid_attributes
      get :show, {:id => tax.to_param}, valid_session
      assigns(:tax).should eq(tax)
    end
  end

  describe "GET new" do
    it "assigns a new tax as @tax" do
      get :new, {}, valid_session
      assigns(:tax).should be_a_new(Tax)
    end
  end

  describe "GET edit" do
    it "assigns the requested tax as @tax" do
      tax = Tax.create! valid_attributes
      get :edit, {:id => tax.to_param}, valid_session
      assigns(:tax).should eq(tax)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tax" do
        expect {
          post :create, {:tax => valid_attributes}, valid_session
        }.to change(Tax, :count).by(1)
      end

      it "assigns a newly created tax as @tax" do
        post :create, {:tax => valid_attributes}, valid_session
        assigns(:tax).should be_a(Tax)
        assigns(:tax).should be_persisted
      end

      it "redirects to the created tax" do
        post :create, {:tax => valid_attributes}, valid_session
        response.should redirect_to(Tax.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tax as @tax" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tax.any_instance.stub(:save).and_return(false)
        post :create, {:tax => {}}, valid_session
        assigns(:tax).should be_a_new(Tax)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tax.any_instance.stub(:save).and_return(false)
        post :create, {:tax => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tax" do
        tax = Tax.create! valid_attributes
        # Assuming there are no other taxes in the database, this
        # specifies that the Tax created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Tax.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => tax.to_param, :tax => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested tax as @tax" do
        tax = Tax.create! valid_attributes
        put :update, {:id => tax.to_param, :tax => valid_attributes}, valid_session
        assigns(:tax).should eq(tax)
      end

      it "redirects to the tax" do
        tax = Tax.create! valid_attributes
        put :update, {:id => tax.to_param, :tax => valid_attributes}, valid_session
        response.should redirect_to(tax)
      end
    end

    describe "with invalid params" do
      it "assigns the tax as @tax" do
        tax = Tax.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tax.any_instance.stub(:save).and_return(false)
        put :update, {:id => tax.to_param, :tax => {}}, valid_session
        assigns(:tax).should eq(tax)
      end

      it "re-renders the 'edit' template" do
        tax = Tax.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tax.any_instance.stub(:save).and_return(false)
        put :update, {:id => tax.to_param, :tax => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tax" do
      tax = Tax.create! valid_attributes
      expect {
        delete :destroy, {:id => tax.to_param}, valid_session
      }.to change(Tax, :count).by(-1)
    end

    it "redirects to the taxes list" do
      tax = Tax.create! valid_attributes
      delete :destroy, {:id => tax.to_param}, valid_session
      response.should redirect_to(taxes_url)
    end
  end
=end

end
