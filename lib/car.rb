class Car 
  attr_reader :make, :total_cost, :color, :model, :make_and_model, :monthly_payment, :loan_length, :paint

  def initialize(make_and_model, monthly_payment, loan_length)
    @make = make_and_model.split.first  
    @model = make_and_model.split.last  
    @make_and_model = make_and_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end 

  def total_cost
    @monthly_payment * @loan_length
  end 

  def paint!(color)
    @color = :blue  
  end
  
  

end 