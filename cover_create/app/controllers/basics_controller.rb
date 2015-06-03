class BasicsController < ApplicationController

    def home
    end

    def index
      @basics = Basic.all
    end

    def new
      @basics = Basic.all
      @company = Company.all
      @content = Content.all
      @basic = Basic.new
    end

    def create
      @basics = Basic.create!(basic_params)
      # redirect_to(@job_seeker)

    #   @job_seeker = JobSeeker.find(params[:id])
    #   @interviewer = Interviewer.create!(interviewer_params)
    #   redirect_to(@interviewer)
    end

    def show
      @basic = Basic.find(params[:id])
      # render :show
    end

    def edit
      @basic = Basic.find(params[:id])
      # render :edit
    end

    def update
      @basic = Basic.find(params[:id])
      @basic.update!(basic_params)
    end

    def destroy
      @basic = Basic.find(params[:id])
      @basic.destroy
      # redirect_to "/interviewers"
    end

    def basic_params
      return params[:basics].permit(:yname, :ycity, :yphone, :yemail)
    end

  end
