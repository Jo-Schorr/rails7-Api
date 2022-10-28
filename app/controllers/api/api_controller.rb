class Api.v1::ApiController < ApplicationController
  before_action :authenticate_user!
end
