 #coding: utf-8
class TopsController < ApplicationController
  # GET /blogs
  # GET /blogs.xml
  def index
    @blogs = Blog.all
    @search = Blog.search(params[:search])
 
    @blogs = @search.page( params[:page]).per(10 ||params[:per_page])
    @title = ' Anthony Linode 代购 返现 合租 Liunx 服务器配置 Ruby On Rails(ROR) 发布教程'
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blogs }
    end
  end

def ddd
      @title = ' Anthony Linode 代购 返现 合租 Liunx 服务器配置 Ruby On Rails(ROR) 发布教程'
end

  # POST /blogs
  # POST /blogs.xml
  def create
 
     unless Link.count > 10
     Link.create({:url => params[:url] , :name => params[:name]  })
     end
     
    redirect_to :action => "index"
  end



end
