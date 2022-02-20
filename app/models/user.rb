class User < ApplicationRecord
    def self.search_users(result)
        @users_result = where("name like ?", "%#{result}%")
        if @users_result.length > 0
            @users_result
        else
            nil
        end
    end
end
