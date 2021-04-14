require 'sinatra'
require './config'
require './lib/toque_y_fama.rb'
enable :sessions

get '/' do
   session[:toqueFama] = ToqueFama.new(nil)
   erb :inicio
end

get '/fijarNumero/:numeroSecreto' do |numeroSecreto|
   session[:toqueFama] = ToqueFama.new(numeroSecreto)
   erb :inicio
end

post '/' do
   if params[:numero]
      @mensaje= session[:toqueFama].validar(params[:numero])
   end
   erb :inicio
end
