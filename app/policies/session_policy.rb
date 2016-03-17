SessionPolicy = Struct.new(:user, :session) do
  def create?
    user.blank?
  end

  def destroy?
    user.present?
  end
end
