Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = '改下${POD_NAME}简介'


  s.description      = <<-DESC
                        最好写描述
                       DESC

  s.homepage         = 'http://git.dev.qianmi.com/adminapp/${POD_NAME}-ios.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'http://git.dev.qianmi.com/adminapp/${POD_NAME}-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = '${POD_NAME}/Classes/**/*'
  s.resource = '${POD_NAME}/Assets/**/*'

  s.dependency 'QMTargetRequest'
  s.dependency 'QMNavigator'


end
