class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search_facility

  private
  def set_search_facility
    # 検索バー表示
    @q = Facility.ransack(params[:q])
  end

protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :kana_last_name, :kana_first_name, :telephone, :email])
  end
  # ログイン後に遷移するpathを設定
  def after_sign_in_path_for(resource)
    if resource.instance_of?(Admin)
      top_admins_facilities_path
    elsif resource.instance_of?(Customer)
      root_path
    else
      root_path
    end
  end

  # ログアウト後に遷移するpathを設定
  def after_sign_out_path_for(resource)
    if resource == :admins
      admins_facilities_path
    elsif resource == :customer
      root_path
    else
      root_path
    end
  end
end
