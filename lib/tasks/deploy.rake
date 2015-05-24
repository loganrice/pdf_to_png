 require 'paratrooper'

 namespace :deploy do
   desc 'Deploy app in staging environment'
   task :staging do
     deployment = Paratrooper::Deploy.new("automediator-staging", tag: 'staging')

     deployment.deploy
   end

   desc 'Deploy app in production environment'
   task :production do
     deployment = Paratrooper::Deploy.new("automediator-production") do |deploy|
       deploy.maintenance = true
     end

     deployment.deploy
   end
 end