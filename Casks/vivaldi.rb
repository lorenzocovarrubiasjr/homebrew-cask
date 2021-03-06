cask 'vivaldi' do
  version '1.12.955.42'
  sha256 '3768bb9e742ee354e12e0cc1e876f1e13ab39236ca3ebf3646512f1c97d4ee73'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'fae673d6918f1ee12eb2b899798722ad00a4dd115049d103e2f4ecf273c00d51'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'

  zap delete: [
                '~/Library/Caches/Vivaldi',
                '~/Library/Caches/com.vivaldi.Vivaldi',
                '~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Vivaldi',
                '~/Library/Preferences/com.vivaldi.Vivaldi.plist',
              ]
end
