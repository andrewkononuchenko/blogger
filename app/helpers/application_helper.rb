module ApplicationHelper
  def flash_class(type)
    valid_class = case type
                    when 'notice'
                      'info'
                    when 'error'
                      'danger'
                    when 'success'
                      'success'
                    else
                      'warning'
    end

    "alert alert-#{valid_class}"
  end
end
