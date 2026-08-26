class AwsCostlens < Formula
  include Language::Python::Virtualenv

  desc "Read-only AWS FinOps CLI for cost analysis, waste detection, and credit monitoring"
  homepage "https://github.com/aws-all-star/aws-costlens"
  url "https://github.com/aws-all-star/aws-costlens/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  license "MIT"

  depends_on "python@3.13"

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5a/8e/38aa427ed5402449e226975b649c5dc73ccadfefeb95e6aecb8f8ea4b6b6/annotated_doc-0.0.5.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/be/55/e026c943f7f1ed6d2f5e6035713f21233bbe9ee975008662dc64ca0d4ced/boto3-1.43.78.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/67/71/490aaa384855bf3b69405ded52ae77a0e5f4eeb2165044fa65466c4d3a73/botocore-1.43.78.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/d3/59/322338183ecda247fb5d1763a6cbe46eff7222eaeebafd9fa65d4bf5cb11/jmespath-1.1.0.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/76/43/35e4d8aa320bffe8287fe8f65f578fa2d2db0a64212f0e710dce58267854/s3transfer-0.19.2.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/ae/40/4a3db7990d1f62a53182aa96eaef57aeb2886a27f90a195bc66713565d31/typer-0.27.1.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "f2ed6ae4fcaa9b86cc42245ff056a9c8ebfca86bdc3350c408f497be6452c150"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/aws-costlens --help")
  end
end
