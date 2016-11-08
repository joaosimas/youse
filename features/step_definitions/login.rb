 # encoding: utf-8 (colocar o cerquilha antes)
 # !/usr/bin/env ruby (colocar o cerquilha antes)

 Dado(/^que eu acesse o site da youse$/) do
 	visit 'https://youse.com.br'
 end

 Quando(/^eu clicar em minha conta$/) do
 	click_link 'MINHA CONTA'
 end

 E(/^passar e-mail$/) do
 	find(:id, 'user_email').set('youse@hilpert.net') 
 end

 E(/^clicar em proximo passo$/) do
 	click_on 'próximo passo'
 end

 E(/^passar senha$/) do
 	find(:id, 'user_password').set('youse1!@3$') 
 end

 E(/^clicar em entrar$/) do
 	click_on 'entrar'
 end

 Então(/^realizar acesso$/) do
 	puts 'Logou'
 end