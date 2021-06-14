class GitsController < ApplicationController
  def question
    @ques = Git.find(params[:id])
  end

  def win
    num = 1
    while true do
      if Git.find_by(id: params[:id].to_i + num)
        break
      else
        num += 1
      end
      
    end
    @next = Git.find(params[:id].to_i + num)
  end

  def lose
  end
  
  def answer
    @ques = Git.find(params[:id])
  end
  
  def judge
    @ques = Git.find(params[:id])
    if @ques.answer == params[:answer]
      last_ques = Git.order(updated_at: :desc).limit(1)
      if params[:id].to_i == last_ques.ids[0]
        redirect_to("/gits/done")
      else
        redirect_to("/gits/#{params[:id]}/win")
      end
    else
      redirect_to("/gits/#{params[:id]}/lose")
    end
  end
  
  def done
  end
end