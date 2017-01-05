def display_rules
  puts "Enter number to do a specific action or type exit to exit."
  puts "\t1 to create a new package-list.txt"
  puts "\t2 to grab config.cson, keymap.cson, styles.less file from current Atom"
  puts "\t3 to install package-list.txt packages"
  puts "\t4 to install config.cson, keymap.cson, and styles.less to Atom folder"
  puts "\n"
end

# system 'clear'
display_rules

until (a = gets.chomp) =~ /(?:ex|qu)it/i
  case a
  when '1' # Get the current packages
    system 'rm package-list.txt'
    system 'apm list --installed --bare > package-list.txt'

  when "2" # Grab config.cson, keymap.cson, and styles.less file from current Atom
    system "rm #{ENV['HOME']}/Projects/computer-init/atom/config.cson"
    system "rm #{ENV['HOME']}/Projects/computer-init/atom/keymap.cson"
    system "rm #{ENV['HOME']}/Projects/computer-init/atom/styles.less"
    system "cp #{ENV['HOME']}/.atom/config.cson #{ENV['HOME']}/Projects/computer-init/atom/"
    system "cp #{ENV['HOME']}/.atom/keymap.cson #{ENV['HOME']}/Projects/computer-init/atom/"
    system "cp #{ENV['HOME']}/.atom/styles.less #{ENV['HOME']}/Projects/computer-init/atom/"

  when '3' # Install packages to atom from package-list.txt
    system 'apm install --packages-file package-list.txt'

  when "4" # Install files from above into Atom folder
    system "cp #{ENV['HOME']}/Projects/computer-init/atom/config.cson #{ENV['HOME']}/.atom/"
    system "cp #{ENV['HOME']}/Projects/computer-init/atom/keymap.cson #{ENV['HOME']}/.atom/"
    system "cp #{ENV['HOME']}/Projects/computer-init/atom/styles.less #{ENV['HOME']}/.atom/"
  end

  puts "\n"
  display_rules
end
