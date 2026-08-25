class AwsCostlens < Formula
  include Language::Python::Virtualenv

  desc "Read-only AWS FinOps CLI for cost analysis, waste detection, and credit monitoring"
  homepage "https://github.com/aws-all-star/aws-costlens"
  url "https://github.com/aws-all-star/aws-costlens/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "5bd3f5e5587913054b673402232390d8d99eda7c560c3264dfae4cac1a264a77"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/aws-costlens --help")
  end
end
