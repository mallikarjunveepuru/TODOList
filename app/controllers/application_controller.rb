class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def validate_records!(csv_file, field_map)
    @key_counts = {}
    check_ssn = field_map.primary_key != SSN_FIELD && csv_file.header.include?(SSN_FIELD)

    csv_file.each_record do |record|
      organization_id
    end
  end
end
