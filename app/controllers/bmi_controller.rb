class BmiController < ApplicationController
  def top
  end
  def new
    @sintyo = params[:sintyo].to_i
    @taiju = params[:taiju].to_i
    @bmi = (@taiju.to_f * 10000 / (@sintyo.to_f ** 2)).round(1)
    @risou = (((@sintyo.to_f / 100) ** 2) * 22).round(1)
    if @bmi < 18.5
      @comment = "適正より痩せています"
    elsif @bmi < 25
      @comment = "普通の体重です"
    elsif @bmi < 30
      @comment ="ちょっと太っています"
    elsif @bmi < 35
      @comment = "太っています"
    elsif @bmi < 40
      @comment = "だいぶ太っています"
    else
      @comment = "かなり重いですね"
    end
    @mitinori = (@risou - @taiju).round(1)
    cnt = Cnt.find_by(id:1)
    cnt.num += 1
    cnt.save
    render("bmi/top")
  end
end
