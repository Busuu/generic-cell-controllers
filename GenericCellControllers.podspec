
Pod::Spec.new do |spec|
  spec.name         = 'GenericCellControllers'
  spec.version      = '1.2.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/Busuu/generic-cell-controllers'
  spec.authors      = { 'Javier Valdera' => 'javier.valdera@gmail.com' }
  spec.summary      = 'Framework that makes it easier to work with heterogeneous lists of data in iOS.'
  spec.description  = <<-DESC
                        Generic Cell Controllers provide protocols, implementations and extensions that will make work
                        with heterogeneous lists of data in iOS really easy. It provides a way to abstract the details
                        of each particular cell configuration and management away from the View Controllers, Data
                        Sources and Delegates.
                      DESC

  spec.source       = { :git => 'https://github.com/Busuu/generic-cell-controllers.git', :tag => '1.2.0' }
  spec.swift_version = '5.0'

  spec.platform     = :ios, "12.0"
  spec.ios.deployment_target  = '12.0'

  spec.source_files  = 'GenericCellControllers/Source/**/*.{h,m,swift}'
  spec.ios.source_files   = 'GenericCellControllers/Source/**/*.{h,m,swift}'

  spec.ios.framework  = 'UIKit'
end
