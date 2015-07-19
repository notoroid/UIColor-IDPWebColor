Pod::Spec.new do |s|

  s.name         = "UIColor-IDPWebColor"
  s.version      = "0.1"
  s.summary      = "UIColor-IDPWebColor is an extension of the order to specify the UIColor in Web Color."

  s.description  = <<-DESC
                   UIColor-IDPWebColor is an extension of the order to specify the UIColor in Web Color. - UIColor+IDPWebColor はUIColor をWeb Colorで指定するための拡張機能です。
                   DESC

  s.homepage     = "https://github.com/notoroid/UIColor-IDPWebColor"

  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "notoroid" => "noto@irimasu.com" }
  s.social_media_url   = "http://twitter.com/notoroid"

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/notoroid/UIColor-IDPWebColor.git", :tag => "#{s.version}" }

  s.source_files  = "Lib/**/*.{h,m}"
  s.frameworks   = ['UIKit']

  s.requires_arc = true

end
