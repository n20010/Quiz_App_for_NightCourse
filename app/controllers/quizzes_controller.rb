class QuizzesController < ApplicationController
  
  def home
  end
  
  def index
  end
  
  def linux
  end
  
  def linuxquiz
  end
  
  def github
  end
  
  def contact
  end
  
  def checkAdmin
  end
  
  def conform
    if params[:password] == 'kouki11037'
      redirect_to(quizzes_new_path)
    else
      redirect_to(quizzes_checkAdmin_path)
    end
  end
    
  
  def new
  end
  
  def create
    if params[:area] == "Linux"
      @quiz = Linux.new(question: params[:question], answer: params[:answer])
      @quiz.save
    elsif params[:area] == "Git"
      @quiz = Git.new(question: params[:question], answer: params[:answer])
      @quiz.save
    end
    redirect_to(quizzes_new_path)
  end
end
