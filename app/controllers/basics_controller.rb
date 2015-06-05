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

    def generatePdf
  begin
    # create an API client instance
    client = Pdfcrowd::Client.new("Freetown5", "9053fc3b9beb9dd5fb071bb71d6628f4")

    # convert a web page and store the generated PDF to a variable
    pdf = client.convertURI("http://www.google.com")

    # send the generated PDF
    send_data(pdf,
              :filename => "google_com.pdf",
              :type => "application/pdf",
              :disposition => "attachment")
  rescue Pdfcrowd::Error => why
    render :text => why
  end
end

  end
