  def destroy
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    @<%= singular_name %>.destroy
    flash[:notice] = t('common.destroyed')
    redirect_to <%= items_path('url') %>
  rescue ActiveRecord::DeleteRestrictionError
    redirect_to <%= items_path('url') %>, :alert => t('common.has_dependencies')    
  end
