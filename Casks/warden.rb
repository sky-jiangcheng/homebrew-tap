cask "warden" do
  version "0.3.0"
  sha256 "fde85dc321473d9bf4a1c8a4fd8f94b7b3dc45ffba0cb3c4649405e46f974194"

  url "https://github.com/sky-jiangcheng/warden/releases/download/v#{version}/Warden_#{version}_universal.dmg"
  name "Warden"
  desc "Local copilot whose cross-session memory is served by Cinder over MCP"
  homepage "https://github.com/sky-jiangcheng/warden"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Warden.app"

  zap trash: [
    "~/Library/Application Support/com.jiangcheng.repotoryagent",
    "~/Library/WebKit/com.jiangcheng.repotoryagent",
    "~/Library/Logs/com.jiangcheng.repotoryagent",
  ]
end
