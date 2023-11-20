Pod::Spec.new do |s|
  s.name             = 'MYSkin'
  s.version          = '0.1.0'
  s.summary          = '皮肤主题管理.'
  s.description      = <<-DESC
一个方便的皮肤主题管理控件。可以解决动态皮肤管理。
                       DESC

  s.homepage         = 'https://github.com/WenMingYan/MYSkin'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'WenMingYan' => 'wenmingyan1990@163.com' }
  s.source           = { :git => 'https://github.com/WenMingYan/MYSkin.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'MYSkin/Classes/**/*'
  
#   s.resource_bundles = {
#     'MYSkin' => ['MYSkin/Assets/*.{png,json}']
#   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'YYModel'
end
