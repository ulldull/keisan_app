class TaishaController < ApplicationController
  def top
  end
  def new
    @old = params[:old]
    @sintyo = params[:sintyo]
    @taiju = params[:taiju]
    @gender = params[:gender]
    case @gender
      when "male" then
      @taisha = ((13.397 * @taiju.to_f) + (4.799 * @sintyo.to_f) + 88.362 - (5.677 * @old.to_f)).round(1)
      when "female" then
      @taisha = ((9.247 * @taiju.to_f) + (3.098 * @sintyo.to_f)  + 447.593 - (4.33 * @old.to_f)).round(1)
    end
    if @taisha
      @comment = "ごはん#{(@taisha / 240).round(1)}杯くらいだと思います！"
    end
    render("taisha/top")
  end
end
