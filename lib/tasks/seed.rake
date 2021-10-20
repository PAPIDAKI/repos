require 'csv'
namespace :db do
  namespace :seed do
   desc "Import all sales CSV "
    task :import_all_sales => :environment do
    filename = File.join(Rails.root,'db','data_files','allsales.csv')
    CSV.foreach(filename,:headers=>false) do |row|
      puts $. %10000== 0
      data={
        :date => row[0],
        :inv_number => row[1],
        :code => row[2],
        :name => row[3],
        :afm => row[4],
        :kgs => row[5],
        :value => row[6]
      }
      Sale.create(data)
    end
  end
 end
end
#how to run the task: bundle exec rake db:seed:import_all_sales


namespace :db do
  namespace :seed do
   desc "Import all buys  CSV "
    task :import_all_buys => :environment do
    filename = File.join(Rails.root,'db','data_files','allbuys.csv')
    CSV.foreach(filename,:headers=>false) do |row|
      puts $. %10000== 0
      data={
        :date => row[0],
        :inv_number => row[1],
        :code => row[2],
        :name => row[3],
        :afm => row[4],
        :kgs => row[5],
        :value => row[6]
      }
    #  Buy.create(data)
     Buy.create(data)
    end
  end
 end
end
#how to run the task: bundle exec rake db:seed:import_all_buys
