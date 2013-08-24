class UsersController < ApplicationController
  def show
    raise BadParamError unless params[:user_id].present?
  rescue BadParamError => err
    render status: '400', json: err
  end
end
