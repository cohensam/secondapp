module ApplicationHelper
  def warningfor model, field
    if model.errors[field].present? 
      "warning"
    end
  end
end
