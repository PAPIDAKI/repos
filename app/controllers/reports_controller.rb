class ReportsController < ApplicationController

  def dashboard
    @current_date = Date.today 
    @last_invoice = Sale.order(:date).last.date
    @next_30_forcast = Sale.raisins.next_30.total_kgs/1000
    @last_year_sales = Sale.ly.raisins.total_kgs/1000
    @current_year_sales = Sale.cy.raisins.total_kgs/1000
    @till_new_crop = Date.new(2022,9,1)-Date.today

  end



end
