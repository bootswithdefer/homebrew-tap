cask "git-secateurs" do
  version "0.1.1"

  on_macos do
    on_intel do
      sha256 "4d3ca35e258c79b3c264cebcab2885125208b492cdf8dbcc9c1e51422191a321"
      url "https://github.com/bootswithdefer/git-secateurs/releases/download/v#{version}/git-secateurs-x86_64-apple-darwin.tar.xz"
    end
    on_arm do
      sha256 "162b52ba40e138ae8bbad0ae5a3314d29deacb58fc66b9a5272b2488bb35ed1d"
      url "https://github.com/bootswithdefer/git-secateurs/releases/download/v#{version}/git-secateurs-aarch64-apple-darwin.tar.xz"
    end
  end

  on_linux do
    on_intel do
      sha256 "26dfab662f4ef45aee8339f8d4b8d0cd404668991a7683d97e1213e588ad0a9d"
      url "https://github.com/bootswithdefer/git-secateurs/releases/download/v#{version}/git-secateurs-x86_64-unknown-linux-gnu.tar.xz"
    end
    on_arm do
      sha256 "0a1a8560538c5ce7fbe98205571cc41b3b3a670d1649dda4e48d8b9bd33af27e"
      url "https://github.com/bootswithdefer/git-secateurs/releases/download/v#{version}/git-secateurs-aarch64-unknown-linux-gnu.tar.xz"
    end
  end

  name "git-secateurs"
  desc "Automatically trims tracking branches whose upstream branches are merged or stray"
  homepage "https://github.com/bootswithdefer/git-secateurs"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "git-secat"

  postflight_steps do
    on_macos do
      run "xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/git-secat"]
    end
  end

  # No zap stanza required

end
