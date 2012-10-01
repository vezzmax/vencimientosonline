require 'spec_helper'

describe "UserPages" do
  subject { page }

  describe "pagina de registracion" do
    before { visit registrarse_path }

    it { should have_selector('h1',    text: 'Registrarse') }
    #it { should have_selector('title', text: full_title('Sign up')) }
  end
end


