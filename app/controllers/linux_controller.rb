class LinuxController < ApplicationController
  def question
    @ques = Linux.find(params[:id])
  end

  def win
    num = 1
    while true do
      if Linux.find_by(id: params[:id].to_i + num)
        break
      else
        num += 1
      end
      
    end
    @next = Linux.find(params[:id].to_i + num)
  end

  def lose
  end
  
  def answer
    @ques = Linux.find(params[:id])
  end
  
  def judge
    @ques = Linux.find(params[:id])
    if @ques.answer == params[:answer]
      last_ques = Linux.order(updated_at: :desc).limit(1)
      if params[:id].to_i == last_ques.ids[0]
        redirect_to("/linux/done")
      else
        redirect_to("/linux/#{params[:id]}/win")
      end
    else
      redirect_to("/linux/#{params[:id]}/lose")
    end
  end
  
  def done
  end
end
