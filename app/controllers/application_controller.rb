class ApplicationController < ActionController::API

#     before_action :authenticate

#     def authenticate
#         auth_header = request.headers['Authorization']

#         if auth_header
#             token = auth_header.split(" ")[1]
#             secret = Rails.application.secrets.secret_key_base

#             begin
#                 decoded_token = JWT decode(token, secret)
#                 payload = decoded_token.first
#                 user_id = payload["user_id"]
#             rescue
#                 render json: { message: "Not Allowed!" }, status: :forbidden
#             end
#         else
#             render json: { message: "Not Allowed!" }, status: :forbidden
#         end
#     end
end
