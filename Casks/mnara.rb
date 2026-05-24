cask "mnara" do
  version "1.5.4"
  sha256 "9fa515f721b3871e2e192cd70adcf6c4925903fe704068fa3ec4814a69a6c4e6"

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
