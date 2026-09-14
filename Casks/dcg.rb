cask "dcg" do
  version "0.16.1"

  on_macos do
    on_intel do
      sha256 "5fd58f6febdb611235e19a4669179b42e3f2fb2a701b56e35e3390aa383c460c"
      url "https://github.com/bootswithdefer/destructive_command_guard/releases/download/v#{version}/dcg-x86_64-apple-darwin.tar.xz"
    end
    on_arm do
      sha256 "f0952e944e114ebbc56e4d73a8136d74c9c9a7def959712d944e4048300f3344"
      url "https://github.com/bootswithdefer/destructive_command_guard/releases/download/v#{version}/dcg-aarch64-apple-darwin.tar.xz"
    end
  end

  on_linux do
    on_intel do
      sha256 "5043da109bd8d8f9dcef81fd37c98bb03976e5725b46a6220c2dcede583d841e"
      url "https://github.com/bootswithdefer/destructive_command_guard/releases/download/v#{version}/dcg-x86_64-unknown-linux-musl.tar.xz"
    end
    on_arm do
      sha256 "9bb14f741b2c0b6633e8ca2ead7b7bb13b61200b12ca7ddc542107d3d509c11e"
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
