cask "mnara" do
  version "1.5.2"
  sha256 "5b106fcc9f7aa2764be2d53134036d9dbd669550d4404596308c8d48938bd319"

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
