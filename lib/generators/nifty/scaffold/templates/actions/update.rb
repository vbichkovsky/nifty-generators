  def update
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    if @<%= instance_name %>.update_attributes(params[:<%= instance_name %>])
      redirect_to <%= item_url %>, :notice  => t('common.saved')
    else
      render :edit
    end
  end
