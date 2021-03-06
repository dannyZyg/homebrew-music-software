cask 'arturia-software-center' do
  version '2.2.1.94'
  sha256 'e4174168ce78e89bec3aa8963adedc59912d694a8549101919a0c8999baf9f20'

  url "https://downloads.arturia.com/infrastructure/asc/soft/Arturia_Software_Center_#{version.dots_to_underscores}.pkg"
  name 'Arturia Software Center'
  homepage 'http://www.arturia.com/support/downloads&manuals'

  pkg "Arturia_Software_Center_#{version.dots_to_underscores}.pkg"

  uninstall launchctl: 'com.Arturia.ArturiaSoftwareCenterAgent',
            pkgutil:   'com.Arturia.pkg.ArturiaSoftwareCenter'
end
