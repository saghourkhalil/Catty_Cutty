module ApplicationHelper
    def resource_name
        :user
    end

    def resource
        @resource = User.new
    end

    def devise_mapping
        @devise_mapping = Devise.mappings[:user]
    end

    def bootstrap_class_for flash_type
        case flash_type
        when :success
            "alert-success"
        when :error
            "alert-error"
        when :alert
            "alert-block"
        when :notice
            "alert-info"
        else
            flash_type.to_s
        end
    end
end
