cask "native-access" do
  version "1.13.3.136"
  sha256 :no_check

  url "https://www.native-instruments.com/fileadmin/downloads/Native_Access_Installer.dmg"
  name "Native Access"
  desc "Native Instruments manager to install and activate software."
  homepage "https://www.native-instruments.com/en/specials/native-access/"

  app "Native Access.app"
  uninstall pkgutil:    "com.native-instruments..*",
            launchctl:  "com.native-instruments.NativeAccess.Helper2"
end
