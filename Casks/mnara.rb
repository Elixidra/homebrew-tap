cask "mnara" do
  version "1.5.3"
  sha256 "195eabe7c6ad93dc0b78b827830f1d19787f0423f157589cd39e2064f67b4561"

  url "https://github.com/Elixidra/Mnara-updates/releases/download/v#{version}/Mnara-#{version}.dmg"
  name "Mnara"
  desc "macOS menu bar system monitor for CPU, GPU, RAM, storage, network, battery, and more"
  homepage "https://elixidra.com/mnara"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Mnara.app"

  zap trash: [
    "~/Library/Application Support/Mnara",
    "~/Library/Caches/com.elixidra.mnara",
    "~/Library/Preferences/com.elixidra.mnara.plist",
  ]
end
