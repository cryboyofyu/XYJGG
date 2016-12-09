Pod::Spec.new do |s|
  s.name         = "XYJGG"
  s.version      = "0.0.1"

  s.description  = <<-DESC
                   a custom view of jiuGongGe
                   DESC

  s.homepage     = "https://github.com/cryboyofyu/XYJGG"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "LV" => "cryboyofyu@gmail.com" }
  # Or just: s.author    = "LV"
  # s.authors            = { "LV" => "cryboyofyu@gmail.com" }

  s.source       = { :git => "https://github.com/cryboyofyu/XYJGG", :tag => "0.0.1" }

  s.source_files  = "Classes", "XYCustomJGGExample/**/*.{h,m}"

  # s.requires_arc = true


end
