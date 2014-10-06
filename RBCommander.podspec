Pod::Spec.new do |s|

  s.name            = 'RBCommander'
  s.version         = '0.0.1'
  s.license         = 'MIT'
  s.platform        = :ios, '7.0'

  s.summary         = 'Commander to leverage the power of commands in iOS projects'
  s.homepage        = 'https://github.com/RoshanNindrai/RBCommander'
  s.author          = { 'Roshan Balaji' => 'roshan.nindrai@gmail.com'}
  s.source          = { :git => 'https://github.com/RoshanNindrai/RBCommander.git', :tag => s.version.to_s }

  s.source_files    = 'RBCommander/RBCommander/*'

  s.requires_arc    = true
end
