class JobsController < ApplicationController
    def index 
        @jobs = Job.all
       
        render 'index'

    end

    def show 
        @job = Job.find(params[:id])
      
        render 'show';
    end

    def create
        @job = Job.new(job_params)

        if @job.save
            redirect_to action: :index
        end
    end

    private

    def job_params
        
        params.require(:jobs).permit(:id,:url,:employer_name,:employer_description,:job_title,:job_description,:years_of_experience,:education_requirement,:industry,:base_salary,:employment_type_id)
    end
end
