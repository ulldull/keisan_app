class KarbController < ApplicationController
  def top
  end
  def new
    @old = params[:old].to_i
    @rest = params[:rest].to_i
    @num = params[:huka][:num].to_i
    @active_palse = ((220 - @old - @rest) * @num / 100) + @rest
    cnt = Cnt.find_by(id:1)
    cnt.num = cnt.num.to_i + 1
    cnt.save
    render("karb/top")
  end
end
