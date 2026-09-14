cask "dcg" do
  version "0.15.1"

  on_macos do
    on_intel do
      sha256 "25ee39a4e9d49bae91e14646ada8dc5b8d7b232aa27b0a6ff0205c9b76795eee"
      url "https://github.com/bootswithdefer/destructive_command_guard/releases/download/v#{version}/dcg-x86_64-apple-darwin.tar.xz"
    end
    on_arm do
      sha256 "7d8043db483d09e9c14e2275d4e2a500ee2eeb8f1564e398c78893821f1ea1de"
      url "https://github.com/bootswithdefer/destructive_command_guard/releases/download/v#{version}/dcg-aarch64-apple-darwin.tar.xz"
    end
  end

  on_linux do
    on_intel do
      sha256 "9210d0c23b32aa8206433e8ff445a9666353db9bf7d6ea205c5aa800280795d6"
      url "https://github.com/bootswithdefer/destructive_command_guard/releases/download/v#{version}/dcg-x86_64-unknown-linux-musl.tar.xz"
    end
    on_arm do
      sha256 "4c63871f392b8ff4f718cd4c98ac1ce93ab0da8dfbec8911ebd78527be8fda14"
      url "https://github.com/bootswithdefer/destructive_command_guard/releases/download/v#{version}/dcg-aarch64-unknown-linux-gnu.tar.xz"
    end
  end

  name "dcg"
  desc "AI coding agent hook that blocks destructive commands before they execute"
  homepage "https://github.com/bootswithdefer/destructive_command_guard"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "dcg"

  postflight do
    if OS.mac?
      system "xattr", "-dr", "com.apple.quarantine", "#{staged_path}/dcg"
    end
  end

  # No zap stanza required

end
