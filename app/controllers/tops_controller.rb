class TopsController < ApplicationController
  # GET /blogs
  # GET /blogs.xml
  def index
    @blogs = Blog.all
    @search = Blog.search(params[:search])

    @blogs = @search.page( params[:page]).per(10 ||params[:per_page])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blogs }
    end
  end



  # POST /blogs
  # POST /blogs.xml
  def create


     Link.create({:url => params[:url] , :name => params[:name]  })

    redirect_to :action => "index"
  end



end
