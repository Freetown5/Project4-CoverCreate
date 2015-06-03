class CompaniesController < ApplicationController

    def index
      @companies = Companies.all
    end

    def create
      @companies = Companies.create!(company_params)
      # redirect_to(@job_seeker)

    #   @job_seeker = JobSeeker.find(params[:id])
    #   @interviewer = Interviewer.create!(interviewer_params)
    #   redirect_to(@interviewer)
    end

    def show
      @company = Companies.find(params[:id])
      # render :show
    end

    def edit
      @company = Companies.find(params[:id])
      # render :edit
    end

    def update
      @company = Companies.find(params[:id])
      @company.update!(company_params)
    end

    def destroy
      @company = Companies.find(params[:id])
      @company.destroy
      # redirect_to "/interviewers"
    end

    def company_params
      return params[:companies].permit(:cname, :ccity, :cphone, :cemail)
    end

  end
  # create_table "companies", force: :cascade do |t|
  #   t.string   "cname"
  #   t.text     "ccity"
  #   t.string   "cphone"
  #   t.string   "cemail"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

end
