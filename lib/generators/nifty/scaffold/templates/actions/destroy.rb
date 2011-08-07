  def destroy
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    @<%= instance_name %>.destroy
    redirect_to <%= items_url %>, :notice => t('common.destroyed')
  rescue ActiveRecord::DeleteRestrictionError
    redirect_to <%= items_url %>, :alert => t('common.has_dependencies')    
  end
