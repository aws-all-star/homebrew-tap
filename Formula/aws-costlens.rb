class AwsCostlens < Formula
  include Language::Python::Virtualenv

  desc "Read-only AWS FinOps CLI for cost analysis, waste detection, and credit monitoring"
  homepage "https://github.com/aws-all-star/aws-costlens"
  url "https://github.com/aws-all-star/aws-costlens/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fe551374be773e2284580bb5cd4a72a452bcdfb3aafdaa64a1dbc53d55fe2d0a"
  license "MIT"

  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, "python3.13")

    venv.pip_install [
      "boto3>=1.35.0",
      "rich>=13.7.0",
      "typer>=0.12.0",
    ]

    venv.pip_install buildpath

    bin.install_symlink libexec/"bin/aws-costlens"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/aws-costlens --help")
  end
end
