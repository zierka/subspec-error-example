Pod::Spec.new do |s|
  s.name        = 'MyFramework'
  s.version       = '0.1.0'
  s.summary       = 'Dummy Framework'
  s.homepage      = 'https://github.com/zierka'
  s.license       = 'MIT'
  s.author        = {'Zier Erik' => 'erik.interwebz@gmail.com'}

  s.source        = {:git => 'git@github.com:zierka/subspec-error-example.git', :tag => s.version.to_s}

  s.requires_arc  = true
  s.platform      = :ios
  s.ios.deployment_target = '10.0'

  s.default_subspecs = 'App'

  s.subspec 'App' do |app|
    app.source_files = [
      'App/**/*.{swift}'
    ]
  end

  s.subspec 'Extension' do |ext|
    ext.source_files = [
      'App/CoreClass.swift',
      'Extension/**/*.{swift}'
    ]

    ext.exclude_files = [
      'App/AppClass.swift'
    ]
  end

end
