class ReportsController < ApplicationController

  def dashboard
    @current_date = Date.today 
    @last_invoice = " Last invoice was by SM  dated 13/10/2021"
    @next_30_forcast = "For the next 30 days we will be needing 40 tons distributed to the following custommers"
    @last_year_sales = "Last year from 2019 to 2020  Year to day 500 tons  "
    @current_year_sales = "Current year sales from one year to the day today "
    @till_new_crop = Date.new(2022,9,1)-Date.today

  end




end
