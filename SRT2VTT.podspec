Pod::Spec.new do |s|
  s.name             = "SRT2VTT"
  s.version          = "1.0"
  s.summary          = "Subtitle files conversion from srt to vtt for chromecast"
  s.homepage         = "https://github.com/aggelos81/SRT2VTT"
  s.license          = 'MIT'
  s.author           = { "aggelos81" => "aggelosred7@gmail.com" }
  s.requires_arc = true
  s.source = { :http => "https://github.com/aggelos81/SRT2VTT/releases/download/1.0/SRT2VTT.framework.zip" }
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = "Carthage/Build/iOS/SRT2VTT.framework"
end
