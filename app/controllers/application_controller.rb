class ApplicationController < ActionController::API
    rescue_from STBError, with: :rescue_stb_error

    private 
    def rescue_stb_error(error)
        render json: {
            success: false,
            type: error.class.to_s,
            error: error.to_s
        }, status: :bad_request and return
    end
end

# and return คือ บอกว่าไม่ต้องทำอะไรต่อแล้วให้หยุดได้เลยและส่ง JSON ออกไป