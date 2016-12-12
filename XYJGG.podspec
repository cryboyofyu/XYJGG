Pod::Spec.new do |s|
  s.name         = "XYJGG"
  s.version      = "0.0.1"
  s.summary      = "a custom view of JGG"

  s.description  = <<-DESC
                   a custom view of JGG
                   DESC

  s.homepage     = "https://github.com/cryboyofyu/XYJGG"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "LV" => "cryboyofyu@gmail.com" }
  
  s.platform     = :ios, "7.0"


  s.source       = { :git => "https://github.com/cryboyofyu/XYJGG", :tag => "0.0.1" }

  s.source_files  ="XYCustomJGGExample/XYCustomJGGExample/XYJGG/**/*.{h,m}"
  s.framework  = 'UIKit'
  s.dependency 'SDWebImage'


  # s.requires_arc = true

end