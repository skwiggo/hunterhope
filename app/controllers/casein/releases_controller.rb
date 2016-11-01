# Scaffolding generated by Casein v5.1.1.5

module Casein
  class ReleasesController < Casein::CaseinController
  
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Releases'
  		@releases = Release.order(sort_order(:name)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'View release'
      @release = Release.find params[:id]
    end
  
    def new
      @casein_page_title = 'Add a new release'
    	@release = Release.new
    end

    def create
      @release = Release.new release_params
    
      if @release.save
        flash[:notice] = 'Release created'
        redirect_to casein_releases_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new release'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Update release'
      
      @release = Release.find params[:id]
    
      if @release.update_attributes release_params
        flash[:notice] = 'Release has been updated'
        redirect_to casein_releases_path
      else
        flash.now[:warning] = 'There were problems when trying to update this release'
        render :action => :show
      end
    end
 
    def destroy
      @release = Release.find params[:id]

      @release.destroy
      flash[:notice] = 'Release has been deleted'
      redirect_to casein_releases_path
    end
  
    private
      
      def release_params
        params.require(:release).permit(:name, :cover)
      end

  end
end