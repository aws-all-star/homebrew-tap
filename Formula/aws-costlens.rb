class AwsCostlens < Formula
  include Language::Python::Virtualenv

  desc "Read-only AWS FinOps CLI for cost analysis, waste detection, and credit monitoring"
  homepage "https://github.com/aws-all-star/aws-costlens"
  url "https://github.com/aws-all-star/aws-costlens/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e41e838541eabe5133fc30bc0baba367b6b23d872bee8ac846ab05ed2b1fcfd1"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/aws-costlens --help")
  end
end
