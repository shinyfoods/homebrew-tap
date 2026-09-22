class WorktreeLanes < Formula
  desc "Per-worktree/lane dev+test isolation CLI (shared across repos)"
  homepage "https://github.com/shinyfoods/worktree-lanes"
  url "https://github.com/shinyfoods/worktree-lanes/archive/refs/tags/v0.1.26.tar.gz"
  sha256 "58b0d3f1c96673dfd1f2f3e83f318bec32a4de563b69f1e05e7474023774aa17"
  license "MIT"

  def install
    libexec.install "lib", "libexec", "VERSION"
    (libexec/"bin").install "bin/worktree"
    bin.install_symlink libexec/"bin/worktree"
  end

  test do
    assert_match "usage: worktree", shell_output("#{bin}/worktree help")
  end
end
