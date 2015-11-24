
Gem::Specification.new do |s|
  s.name         = 'nraya'
  s.version      = '0.0.1'
  s.date         = '2015-11-10'
  s.summary      = 'A 4 connect game on a (n) game version!'
  s.description  = 'The 3 or 4 connect game on a new and better n game version!'
  s.author       = 'Josue Daniel Bustamante - Santiago Baena'
  s.email        = 'jbusta16@eafit.edu.co'
  s.homepage     = 'http://github.com/JosueDanielBust/nraya'
  s.files        = ["lib/main.rb", "lib/board.rb", "lib/player.rb"]
  s.license      = 'MIT'
  s.executables << 'nraya'
  s.post_install_message = "Thanks for installing nraya! We think you like this awesome game!"
end
