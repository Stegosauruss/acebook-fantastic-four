module UserHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end
end
