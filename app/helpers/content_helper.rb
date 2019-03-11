module ContentHelper
    def choose_new_or_edit
        if action_name == 'new' or action_name == "create"
            content_index_path
        elsif action_name == 'edit'
            content_path
        end
    end
end
