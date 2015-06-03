class ContentsController < ApplicationController

    def index
      @contents = Content.all
    end

    def create
      @contents = Content.create!(content_params)
      # redirect_to(@job_seeker)
    end

    def show
      @content = Content.find(params[:id])
      # render :show
    end

    def edit
      @content = Content.find(params[:id])
      # render :edit
    end

    def update
      @content = Content.find(params[:id])
      @content.update!(content_params)
    end

    def destroy
      @content = Content.find(params[:id])
      @content.destroy
      # redirect_to "/interviewers"
    end

    def content_params
      return params[:contents].permit(:date, :POClastname, :POCfirstname, :POCtitle, :reference, :position_info, :skills)
    end

  end
