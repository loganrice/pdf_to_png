require 'rails_helper'

describe ClaimsController do 
  describe "GET new" do 
    it "renders the claims new view" do 
      get :new
      expect(response).to render_template(:new)
    end

    it "sets the @claim instance variable" do 
      get :new
      expect(assigns(:claim)).to be_a Claim
    end
  end

  describe "POST create" do 
    context "with valid input" do 
      it "redirects to the index page" do 
        post :create, claim: { client_first_name: "Marco Polo"}
        expect(response).to redirect_to claim_path(Claim.first) 
      end

      it "creates a claim" do 
        post :create, claim: { client_first_name: "Marco Polo"}
        expect(Claim.count).to eq(1)
      end
    end
  end

  describe "GET show" do 

    it "renders the :show template" do 
      claim = Claim.create(client_first_name: "Marco Polo")
      get :show, id: claim
      expect(response).to render_template :show
    end

    it "assigns the requested claim to @claim" do 
      claim = Claim.create(client_first_name: "Marco Polo")
      get :show, id: claim
      expect(assigns(:claim)).to eq(claim)
    end
  end
 
  describe "GET index" do 
    it "assigns @clams" do 
      claim1 = Claim.create(client_first_name: "Marco Polo")
      claim2 = Claim.create(client_first_name: "Columbus")
      get :index
      expect(assigns(:claims)).to include(claim1, claim2)
    end

    it "renders the :index template" do 
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET edit" do 
    before(:each) do
      @claim = Claim.create(client_first_name: "Marco Polo")
    end

    it "assigns @claim" do 
      get :edit, id: @claim
      expect(assigns(:claim)).to eq(@claim)
    end

    it "renders the edit template" do 
      get :edit, id: @claim
      expect(response).to render_template :edit 
    end
  end

  describe "PUT update" do 
    before(:each) do 
      @claim = Claim.create(client_first_name: "Marco Polo")
    end

    it "redirects to the claims index" do
      put :update, id: @claim.id, claim: { client_first_name: "Marco" }
      expect(response).to redirect_to claims_path
    end
    it "updates the claim" do 
      put :update, id: @claim.id, claim: {  client_first_name: "Columbus" }
      @claim.reload
      expect(@claim.client_first_name).to eq("Columbus")
    end
  end

  describe "DELETE destroy" do 
    before(:each) do 
      @claim = Claim.create(client_first_name: "Marco Polo")
    end

    it "redirects to the claims index path" do
      delete :destroy, id: @claim.id
      expect(response).to redirect_to claims_path
    end
    it "deletes the claim" do 
      delete :destroy, id: @claim.id
      expect(Claim.all.count).to eq(0) 
    end
  end
end
