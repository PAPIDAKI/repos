class Sale < ApplicationRecord
  
  #product
  scope :raisins,->{where(code: ['1011','1014']) }
  #scope :raisin_imports,->{where("afm LIKE ?",'999999999%') }
  #scope :raisin_buys,->{where(code:['2012','2022'])} 

  #scope :grape_sales,->{where(code: ['1012','1015','1042'])}
  #scope :grape_x,->{where(code:['3023'])}
  scope :raisins_x,->{where(code:['3021'])}
  # rents 


  #time range
  scope :cy,->{where(date:Time.now-1.year..Time.now)}
  scope :ly,->{where(date:Time.now-2.year..Time.now-1.year)}
  scope :ty,->{where(date:Time.now-3.year..Time.now-2.year)}

  scope :next_30,->{where(date:Time.now-1.year..Time.now-11.months)} #next_30
  scope :next_,->(d){where(date:Time.now-1.year..Time.now-365.days+d.days)}

  # last invoice date  
  scope :most_recent,->{
    first.date
  }

  #problems 
  scope :raisin_returns, -> {
    where('code = ? OR code = ? AND kgs != ? ' ,1311,1321,0)
  }
    # remove pallet - and zero s kgs zeros 
  scope :palet_free, -> {
  }

  def self.total_kgs
    sum{|invoice| invoice.kgs}
  end

  def self.total_value
    sum{|inv| inv.value}
  end

  def self.avg_price
    total_value/total_kgs
  end
end

