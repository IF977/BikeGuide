require 'rails_helper'
require 'spec_helper'

feature "user acessa Sobre Nos" do
    scenario "user succesfully acessa Sobre Nos" do
        visit root_path
        click_link 'Sobre Nos'
        page.should have_content "Sobre Nos: aqui informações sobre nos"
    end
end