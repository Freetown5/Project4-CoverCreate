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
      redirect_to @basics
    end

    def show
      @basics = Basic.find(params[:id])
      # render :show
    end

    def create
      @basics = Basic.create!(basic_params)
      redirect_to @basics
    end

    def edit
      @basics = Basic.find(params[:id])
      # render :edit
    end

    def update
      @basics = Basic.find(params[:id])
      @basics.update!(basic_params)
        redirect_to @basics
    end

    def destroy
      @basics = Basic.find(params[:id])
      @basics.destroy
      # redirect_to "/interviewers"
    end

    def basic_params
      return params[:basic].permit(:yname, :ycity, :yphone, :yemail, :cname, :ccity, :cphone, :cemail, :date, :POClastname, :POCfirstname, :POCtitle, :reference, :position_info, :skills)
    end

  end
