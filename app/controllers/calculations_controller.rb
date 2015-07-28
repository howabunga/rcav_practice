class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square

    @number =params["number"]
    @square = (@number.to_f)**2

    render("square.html.erb")
  end

  def square_root

    @number2 =params["number2"]
    @squareroot = Math.sqrt(@number2.to_f)

    render("squareroot.html.erb")
  end

  def min_max

    @min = params["min"]
    @max = params["max"]

    @min_max = rand(@min.to_i..@max.to_i)

    render("minmax.html.erb")
  end

  def payment

    @apr = (params["apr"].to_f)/100
    @years = params["years"].to_i
    @pv = params["pv"].to_i
    @payment = ((@apr/100/12*@pv)/(1-(1+@apr/100/12)**(-(@years*12))))

  render("payment.html.erb")

  end

end
