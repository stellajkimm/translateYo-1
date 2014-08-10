module AuthenticationHelpers
  def stub_current_user user
    # ApplicationController.any_instance.stub(:current_user) { user }
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  end

  def stub_authorize_user!
    # ApplicationController.any_instance.stub(:authorize_user!) { true }
    allow_any_instance_of(ApplicationController).to receive(:authorize_user!).and_return(true)
  end

end
