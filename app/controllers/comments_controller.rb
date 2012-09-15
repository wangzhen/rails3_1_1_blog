 #coding: utf-8
class CommentsController < ApplicationController
  # GE: /comments
  # GET /comments.xml
  def index
    @search = Comment.search(params[:search])

    @comments = @search.page( params[:page]).per(10 ||params[:per_page])
    @title = ' Anthony Linode 代购 返现 合租 Liunx 服务器配置 Ruby On Rails(ROR) 发布教程'
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.xml
  def show
    @comment = Comment.find(params[:id])
   
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find_by_id_and_password(params[:id], params[:password])
    if @comment.blank?
      redirect_to comments_path
    end
  end

  # POST /comments
  # POST /comments.xml
  def create
    @comment = Comment.new(params[:comment])
    @comment.ip = request.remote_ip
    cookies['name'] = {
        :value => @comment.name,
        :secure => false
      }
 
    cookies['email'] = {
        :value => @comment.email,
        :secure => false
      }
 
    cookies['qq'] = {
        :value => @comment.qq,
        :secure => false
      }
  
    cookies['content'] = {
        :value => @comment.content,
        :secure => false
      }
 

# cookies[:name] = @comment.name
# cookies[:email] = @comment.email
# cookies[:qq] = @comment.qq
# cookies[:content] = @comment.content

    # render :update do |page|
    #   if @comment.save
    #     page.alert('sucess create')
    #   else
    #     page.alert(@comment.errors.full_messages.join("\n"))
    #   end
    # end

       respond_to do |format|
         if @comment.save
           format.html { redirect_to(blog_path(@comment.blog), :notice => 'Comment was successfully created.') }
           format.xml  { render :xml => @comment, :status => :created, :location => @comment }
         else
           format.html {  redirect_to(blog_path(@comment.blog), :notice => 'Comment was successfully created.') }
           format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
         end
       end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    @comment = Comment.find(params[:id])


    #     render :update do |page|
    #   if @comment.update_attributes(params[:comment])
    #     page.alert('sucess update')
    #   else
    #     page.alert(@comment.errors.full_messages.join("\n"))
    #   end
    # end

   respond_to do |format|
     if @comment.update_attributes(params[:comment])
       format.html { redirect_to( comments_path, :notice => 'Comment was successfully updated.') }
       format.xml  { head :ok }
     else
       format.html { render :action => "edit" }
       format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
     end
   end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(comments_url) }
      format.xml  { head :ok }
    end
  end
end
