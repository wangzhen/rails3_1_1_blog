class Admin::AdministratorsController < Admin::BasesController

  before_filter do
    @model_class = self.class.to_s.split('::').last.sub(/Controller$/, '').singularize.classify.constantize
    @model_singularize = self.class.to_s.split('::').last.sub(/Controller$/, '').singularize
  end

  def index

    @title = t('labels.manager', :model => @model_class.model_name.human)
    @search = @model_class.search(params[:search])

    unless params[:keyword].blank?
      keyword = split_keyword(params[:keyword])
      keyword.each do |word|
        @search.conditions.group do |group|
          group.or_name_like = word
        end
      end
    end
    @administrators =@search.page(params[:page] || 1).per(10)
  end

  def new
    @title = t('labels.manager', :model => @model_class.model_name.human)
    @administrator = @model_class.new
  end

  def create

    @administrator = @model_class.new(params[:administrator])
    if @administrator.save
      flash[:notice] = t('labels.created_success')
      redirect_to eval("admin_#{@model_singularize.tableize}_path")
    else
      render :action => :new
    end
  end

  def edit
    @title = t('labels.manager', :model => @model_class.model_name.human)
    @administrator = @model_class.find(params[:id])
  end

  def show
    @administrator = @model_class.find(params[:id])
    render :edit
  end

  def update
    @administrator = @model_class.find(params[:id])
    #    params[:administrator][:category] = params[:categories].join(",") unless params[:categories].blank?
    if @administrator.update_attributes(params[:administrator])
      flash[:notice] = t('labels.update_success')
      redirect_to eval("admin_#{@model_singularize.tableize}_path")
    else
      render :action => 'edit'
    end
  end

  def destroy
    @administrator = @model_class.find(params[:id])
    @administrator.destroy

    respond_to do |format|
      format.html { redirect_to( eval("admin_#{@model_singularize.tableize}_path")) }
      format.xml { head :ok }
    end
  end



end
