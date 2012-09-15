 #coding: utf-8
class FanxiansController < ApplicationController
  # GE: /fanxians
  # GET /fanxians.xml
  def index
    @search = Fanxian.search(params[:search])

    @fanxians = @search.page( params[:page]).per(10 ||params[:per_page])
    @title = ' Anthony Linode 代购 返现 合租 Liunx 服务器配置 Ruby On Rails(ROR) 发布教程'
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fanxians }
    end
  end

  # GET /fanxians/1
  # GET /fanxians/1.xml
  def show
    @fanxian = Fanxian.find(params[:id])
   
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fanxian }
    end
  end

  # GET /fanxians/new
  # GET /fanxians/new.xml
  def new
    @fanxian = Fanxian.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fanxian }
    end
  end

  # GET /fanxians/1/edit
  def edit
    @fanxian = Fanxian.find_by_id_and_password(params[:id], params[:password])
    if @fanxian.blank?
      redirect_to fanxians_path
    end
  end

  # POST /fanxians
  # POST /fanxians.xml
  def create
    @fanxian = Fanxian.new(params[:fanxian])

    # render :update do |page|
    #   if @fanxian.save
    #     page.alert('sucess create')
    #   else
    #     page.alert(@fanxian.errors.full_messages.join("\n"))
    #   end
    # end

       respond_to do |format|
         if @fanxian.save
           format.html { redirect_to(fanxians_path, :notice => 'Fanxian was successfully created.') }
           format.xml  { render :xml => @fanxian, :status => :created, :location => @fanxian }
         else
           format.html { render :action => "new" }
           format.xml  { render :xml => @fanxian.errors, :status => :unprocessable_entity }
         end
       end
  end

  # PUT /fanxians/1
  # PUT /fanxians/1.xml
  def update
    @fanxian = Fanxian.find(params[:id])


    #     render :update do |page|
    #   if @fanxian.update_attributes(params[:fanxian])
    #     page.alert('sucess update')
    #   else
    #     page.alert(@fanxian.errors.full_messages.join("\n"))
    #   end
    # end

   respond_to do |format|
     if @fanxian.update_attributes(params[:fanxian])
       format.html { redirect_to( fanxians_path, :notice => 'Fanxian was successfully updated.') }
       format.xml  { head :ok }
     else
       format.html { render :action => "edit" }
       format.xml  { render :xml => @fanxian.errors, :status => :unprocessable_entity }
     end
   end
  end

  # DELETE /fanxians/1
  # DELETE /fanxians/1.xml
  def destroy
    @fanxian = Fanxian.find(params[:id])
    @fanxian.destroy

    respond_to do |format|
      format.html { redirect_to(fanxians_url) }
      format.xml  { head :ok }
    end
  end
end
