class BasicsController < ApplicationController

    def home
    end

    def index
      @basics = Basic.all
    end

    def new
      @basics = Basic.new
    end

    def create
      @basics = Basic.create!(basic_params)
       redirect_to(@basics)

    #   @job_seeker = JobSeeker.find(params[:id])
    #   @interviewer = Interviewer.create!(interviewer_params)
    #   redirect_to(@interviewer)
    end

    def show
      @basics = Basic.find(params[:id])
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
      return params[:basic].permit(:yname, :ycity, :yphone, :yemail, :cname, :ccity, :cphone, :cemail, :date, :POClastname, :POCfirstname, :POCtitle, :reference, :position_info, :skills)
    end

  end
