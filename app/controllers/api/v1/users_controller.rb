module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate_request, only: %i[login register]

      def login
        authenticate params[:email], params[:password], params[:remember_me]
      end

      def test
        render json: {
            message: 'You have passed authentication and authorization test'
        }
      end

      # POST /register
      def register
        @user = User.create(user_params)
        if @user.save
          response = { message: 'User created successfully'}
          render json: response, status: :created
        else
          render json: @user.errors, status: :bad
        end
      end

      private

      def user_params
        params.permit(:name, :email, :password)
      end

      def authenticate(email, password, remember_me)
        command = AuthenticateUser.call(email, password, remember_me)

        if command.success?
          user = User.find_by_email(email).profile
          render json: {
              access_token: command.result,
              message: 'Login Successful',
              profile: ProfileSerializer.new(user).attributes
          }
        else
          render json: { error: command.errors }, status: :unauthorized
        end
      end

    end
  end
end