module SevisHelpers
  def user
    @user_id = ENV["SEVIS_USER"] || "user567890"
  end

  def org
    @orgID ||= ENV["SEVIS_ORG"] ||= "P-1-12345"
  end

  def batch
    @batchID ||= ENV["SEVIS_BATCG"] ||= "batch123456789"
  end


end