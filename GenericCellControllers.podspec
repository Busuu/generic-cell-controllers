#
#  Be sure to run `pod spec lint GenericCellControllers.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "GenericCellControllers"
  s.version      = "0.0.1"
  s.summary      = "Framework to make it easier to work with heterogeneous lists of data in iOS."
  s.description  = <<-DESC
                    Generic Cell Controllers provide protocols, implementations and extensions that will make work
                    with heterogeneous lists of data in iOS really easy. It provides a way to abstract the details 
                    of each particular cell configuration and management away from the View Controllers, Data 
                    Sources and Delegates.
                   DESC
  s.homepage     = "https://github.com/Busuu/generic-cell-controllers"
  s.license      = { :type => "MIT" }
  s.author             = { "JAvier Valdera" => "javier.valdera@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "git@github.com:Busuu/generic-cell-controllers.git", :tag => "#{s.version}" }
  s.source_files  = "GenericCellControllers/Source/**/*.{h,m,swift}"
  s.public_header_files = "GenericCellControllers/Source/**/*.h"
  s.requires_arc = true

end
