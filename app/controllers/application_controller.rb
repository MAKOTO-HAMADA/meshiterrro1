class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action：devise(ゲム)の各種機能が使う前に... という意味

  protected
  # protected：呼び出された他のコントローラからも参照する事ができる！
  # private　：一方privateとすると記述したコントローラ内でしか参照できない！

  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
