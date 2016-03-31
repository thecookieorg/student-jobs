class PagesController < ApplicationController
  def index
    @jobs = Job.all.order("created_at desc").limit(5)
  end
  
  def all_jobs
    @jobs = Job.all.order("created_at desc").paginate(page: params[:page], per_page: 30)
  end
    
end
