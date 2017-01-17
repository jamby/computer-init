###############################################################################
# Gloabl                                                                      #
###############################################################################

# Global: Put in dark mode
defaults write NSGlobalDomain AppleInterfaceStyle Dark

# Menu bar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Menu bar: disable transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Set sidebar icon size to Small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Show hidden files and file extensions by default
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing file extensions
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Reduce transparency
defaults write com.apple.universalaccess reduceTransparency -boolean true

# Screensaver: Flurry
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName -string "Flurry" path -string "/System/Library/Screen Savers/Flurry.saver" type -int 0

###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path in title bar
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

###############################################################################
# Trackpad, mouse, keyboard, and input                                        #
###############################################################################

# Trackpad: Tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: right hand corner for right click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2

# Trackpad: Disable "natural" scroll direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Keyboard: key repeat at second furthest to the right
defaults write NSGlobalDomain KeyRepeat -int 6

# Keyboard: delay until key repeat at furthest to the right
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Keyboard: no automatic capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -int 0;

# Keyboard: no dash substitution
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -int 0;

# Keyboard: no period substitution
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -int 0;

# Keyboard: no quote substitution
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -int 0;

# Keyboard: no spelling correction
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -int 0;

# Keyboard: no automatic text completion
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -int 0;

# TODO: defaults read /Library/Preferences/com.apple.PowerManagement