require 'rails_helper'

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

RSpec.describe GunsController, type: :controller do
  before(:each) do 
    @bullet1 = Projectile.create FactoryGirl.build(:projectile).attributes
    @bullet2 = Projectile.create FactoryGirl.build(:projectile).attributes
    @bullet3 = Projectile.create FactoryGirl.build(:projectile).attributes
    @bullet4 = Projectile.create FactoryGirl.build(:projectile).attributes
  end
  # This should return the minimal set of attributes required to create a valid
  # Gun. As you add validations to Gun, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.build(:gun).attributes
  }

  let(:invalid_attributes) {
    { 'name' => nil }
    { 'clip_size' => 0 }
    { 'proj_number' => 0 }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GunsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all guns as @guns" do
      gun = Gun.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:guns)).to eq([gun])
    end
  end

  describe "GET #show" do
    it "assigns the requested gun as @gun" do
      gun = Gun.create! valid_attributes
      get :show, {:id => gun.to_param}, valid_session
      expect(assigns(:gun)).to eq(gun)
    end
  end

  describe "GET #new" do
    it "assigns a new gun as @gun" do
      get :new, {}, valid_session
      expect(assigns(:gun)).to be_a_new(Gun)
    end
  end

  describe "GET #edit" do
    it "assigns the requested gun as @gun" do
      gun = Gun.create! valid_attributes
      get :edit, {:id => gun.to_param}, valid_session
      expect(assigns(:gun)).to eq(gun)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Gun" do
        expect {
          post :create, {:gun => valid_attributes}, valid_session
        }.to change(Gun, :count).by(1)
      end

      it "assigns a newly created gun as @gun" do
        post :create, {:gun => valid_attributes}, valid_session
        expect(assigns(:gun)).to be_a(Gun)
        expect(assigns(:gun)).to be_persisted
      end

      it "redirects to the created gun" do
        post :create, {:gun => valid_attributes}, valid_session
        expect(response).to redirect_to(Gun.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved gun as @gun" do
        post :create, {:gun => invalid_attributes}, valid_session
        expect(assigns(:gun)).to be_a_new(Gun)
      end

      it "re-renders the 'new' template" do
        post :create, {:gun => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { :name => "Nameless" }
      }

      it "updates the requested gun" do
        gun = Gun.create! valid_attributes
        put :update, {:id => gun.to_param, :gun => new_attributes}, valid_session
        gun.reload
        expect(gun.name).to eq 'Nameless'
      end

      it "assigns the requested gun as @gun" do
        gun = Gun.create! valid_attributes
        put :update, {:id => gun.to_param, :gun => valid_attributes}, valid_session
        expect(assigns(:gun)).to eq(gun)
      end

      it "redirects to the gun" do
        gun = Gun.create! valid_attributes
        put :update, {:id => gun.to_param, :gun => valid_attributes}, valid_session
        expect(response).to redirect_to(gun)
      end
    end

    context "with invalid params" do
      it "assigns the gun as @gun" do
        gun = Gun.create! valid_attributes
        put :update, {:id => gun.to_param, :gun => invalid_attributes}, valid_session
        expect(assigns(:gun)).to eq(gun)
      end

      it "re-renders the 'edit' template" do
        gun = Gun.create! valid_attributes
        put :update, {:id => gun.to_param, :gun => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested gun" do
      gun = Gun.create! valid_attributes
      expect {
        delete :destroy, {:id => gun.to_param}, valid_session
      }.to change(Gun, :count).by(-1)
    end

    it "redirects to the guns list" do
      gun = Gun.create! valid_attributes
      delete :destroy, {:id => gun.to_param}, valid_session
      expect(response).to redirect_to(guns_url)
    end
  end

end
