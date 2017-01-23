 require 'pry'
 # encoding: utf-8 (colocar o cerquilha antes)
 # !/usr/bin/env ruby (colocar o cerquilha antes)
 Before do
 	include Capybara::DSL
 	@nome = Faker::Name.name	
 	@email = Faker::Internet.email('youse')
 	@senha = Faker::Base.numerify('youse1!@#$').to_s
 	@confirmarsenha = Faker::Base.numerify('youse1!@#$').to_s
 end

 Dado(/^que eu acesse o site da youse$/) do
 	visit '/'
 end

 Quando(/^eu clicar em minha conta$/) do
 	click_link 'MINHA CONTA'
 end
 
 E(/^clicar em cadastre-se$/) do
 	sleep 3
 	click_link 'Cadastre-se'
 end

 E(/^passar nome$/) do
 	find(:id, 'user_name').set(@nome) 	
 	puts 'O nome utilizado é: ' + @nome
 end

 E(/^passar e-mail$/) do
 	find(:id, 'user_email').set(@email) 
 	puts 'O email utilizado é: ' + @email
 end

 E(/^passar senha$/) do
 	find(:id, 'user_password').set(@senha) 
 	puts 'A senha escolhida foi: ' + @senha
 end

 E(/^confirmar senha$/) do
 	find(:id, 'user_password_confirmation').set(@senha) 
 	puts 'A confirmação da senha foi: ' + @senha
 end

 Então(/^clicar em enviar cadastro$/) do
 	click_on 'enviar cadastro'
 	expect(page).to have_content('Ops, você ainda não tem nenhum seguro Youse. =(')
 	puts 'Cadastro enviado com sucesso'
 end
