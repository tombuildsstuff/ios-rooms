Pod::Spec.new do |s|

  s.name                = "RoomsCore"
  s.version             = "0.0.1"
  s.summary             = "Rooms Core Library"
  s.source              = { :git => "https://github.com/tombuildsstuff/RoomsCore.git", :tag => s.version.to_s }
  s.platform            = :ios, 8.0
  s.requires_arc        = true
  s.source_files        = 'src/**/*.{h,m}'
  s.public_header_files = '**/*.h'
  s.author              = { "Tom Harvey" => "git@ibuildstuff.co.uk" }
  s.license             = 'MIT'
  s.homepage            = 'https://github.com/tombuildsstuff/RoomsCore'

end
