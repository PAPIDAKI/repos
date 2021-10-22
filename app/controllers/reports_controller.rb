class ReportsController < ApplicationController

  def dashboard
    @current_date = Date.today 
    @date_last_invoice = Sale.raisins.order(:date).last.date
    @next_30_forcast = Sale.raisins.next_30.total_kgs

    @last_year_sales = Sale.ly.raisins.total_kgs
    @current_year_sales = Sale.cy.raisins.total_kgs
    @recent_invoices = Sale.raisins.order(date: :desc ).first(5)
    @till_new_crop = Date.new(2022,9,1)-Date.today

  end



end
