module ApplicationHelper
  def flash_class(level)
    case level
    when :success then "success"
    when :notice then "info"
    when :alert then "warning"
    when :error then "danger"
    end
  end
end
