#
#  Be sure to run `pod spec lint MethodLoader.swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "MethodLoader.swift"
  s.module_name  = "MethodLoader"
  s.version      = "0.0.2"
  s.summary      = "Instead of swift initialize function"

  s.description  = <<-DESC
                    Instead of swift initialize function.
                   DESC

  s.homepage     = "https://github.com/SwiftyRetriever/MethodLoader.swift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "zevwings" => "zev.wings@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/SwiftyRetriever/MethodLoader.swift.git", :tag => s.version.to_s }
  s.source_files = "MethodLoader/**/*.{swift,h,m}"
  s.requires_arc = true

end
