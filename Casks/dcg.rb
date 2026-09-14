cask "dcg" do
  version "0.16.0"

  on_macos do
    on_intel do
      sha256 "6302e35c5a5d9718cec1009f46cd962d579f572c9372de4eb176ad855706f095"
      url "https://github.com/bootswithdefer/destructive_command_guard/releases/download/v#{version}/dcg-x86_64-apple-darwin.tar.xz"
    end
    on_arm do
      sha256 "afe5e09ca1c1a73640c91f0d1ce114bd30982d71b70120191b2fae77345f6075"
      url "https://github.com/bootswithdefer/destructive_command_guard/releases/download/v#{version}/dcg-aarch64-apple-darwin.tar.xz"
    end
  end

  on_linux do
    on_intel do
      sha256 "3222b1b8834c9a6ab74c9e6b39ed9045ec42158920e3b47671ea08daff1ba5e9"
      url "https://github.com/bootswithdefer/destructive_command_guard/releases/download/v#{version}/dcg-x86_64-unknown-linux-musl.tar.xz"
    end
    on_arm do
      sha256 "cb36743b6d1664496fe78bc0b7301e4c7069a83e1984ea624c845004b0138a16"
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

  postflight_steps do
    on_macos do
      run "xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/dcg"]
    end
  end

  # No zap stanza required

end
