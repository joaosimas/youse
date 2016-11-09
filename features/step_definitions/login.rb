 # encoding: utf-8 (colocar o cerquilha antes)
 # !/usr/bin/env ruby (colocar o cerquilha antes)
 Before do
 	include Capybara::DSL
 end

 E(/^preencher e-mail$/) do
 	find(:id, 'email').set('youse@hilpert.net') 
 end

 E(/^clicar em proximo passo$/) do
 	click_on 'próximo passo'
 end

 E(/^preencher senha$/) do
 	find(:id, 'user_password').set('youse1!@3$') 
 end

 E(/^clicar em entrar$/) do
 	click_on 'entrar'
 end

 Então(/^realizar acesso$/) do
 	expect(page).to have_content('Login efetuado com sucesso')
 	puts 'Logou'
 end