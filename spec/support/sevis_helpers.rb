require "yaml"

module SevisHelpers
  def config
    spec = Gem::Specification.find_by_name("sevisr")
    gem_root = spec.gem_dir
    @config = YAML.load_file(File.join gem_root, "config/test.yml")

  end
  def user
    @user_id ||= config["SEVIS_USER"]
  end

  def org
    @orgID ||= config["SEVIS_ORG"]
  end

  def batch
    @batchID ||= "batch" + ("%09d" % Random.rand(100000))
  end

  def pks_path
    @pks_path = config["SEVIS_PKS12_PATH"]
  end

  def pks12_password
    @pks12_password ||= config["SEVIS_PKS12_PASSWORD"]
  end

  def pk_password
    @pk_password ||= config["SEVIS_PKS_PASSWORD"]
  end

end