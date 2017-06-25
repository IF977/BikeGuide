module ApplicationHelper
    def sessions_new_path(resource)
        session["sessions_new_path"] || root_path
    end
end