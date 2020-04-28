class KarbController < ApplicationController
  def top
  end
  def new
    @old = params[:old].to_i
    @rest = params[:rest].to_i
    @num = params[:huka][:num].to_i
    @active_palse = ((220 - @old - @rest) * @num / 100) + @rest
    render("karb/top")
  end
end
