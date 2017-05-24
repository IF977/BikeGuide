require 'rails_helper'
require 'spec_helper'

feature "user acessa Contato" do
    scenario "user succesfully acessa Contato" do
        visit root_path
        click_link 'Contato'
        page.should have_content "Contato: nosso contato"
    end
end