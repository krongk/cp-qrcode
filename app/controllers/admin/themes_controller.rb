class Admin::ThemesController < Admin::ApplicationController
  before_action :set_admin_theme, only: [:show, :edit, :update, :destroy]

  # GET /admin/themes
  # GET /admin/themes.json
  def index
    @admin_themes = Admin::Theme.all
  end

  # GET /admin/themes/1
  # GET /admin/themes/1.json
  def show
  end

  # GET /admin/themes/new
  def new
    @admin_theme = Admin::Theme.new
  end

  # GET /admin/themes/1/edit
  def edit
  end

  # POST /admin/themes
  # POST /admin/themes.json
  def create
    @admin_theme = Admin::Theme.new(admin_theme_params)
    @admin_theme.short_title = get_short_title('theme', @admin_theme.title) if @admin_theme.short_title.blank?
    
    respond_to do |format|
      if @admin_theme.save
        format.html { redirect_to admin_themes_path, notice: '模版添加成功.' }
        format.json { render action: 'show', status: :created, location: @admin_theme }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/themes/1
  # PATCH/PUT /admin/themes/1.json
  def update
    respond_to do |format|
      if @admin_theme.update(admin_theme_params)
        format.html { redirect_to admin_themes_path, notice: '模版添加成功.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/themes/1
  # DELETE /admin/themes/1.json
  def destroy
    @admin_theme.destroy
    respond_to do |format|
      format.html { redirect_to admin_themes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_theme
      @admin_theme = Admin::Theme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_theme_params
      params.require(:admin_theme).permit(:title, :short_title, :description, :properties)
    end
end
