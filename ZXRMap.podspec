#
#  Be sure to run `pod spec lint ZXRMap.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "ZXRMap"
  s.version      = "1.0.0"
  s.summary      = "ZXR地图"

  s.description  = <<-DESC
                   ZXR地图
                   DESC

  s.homepage     = "http://www.zhaoxiangru.cn"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # s.license      = "MIT"
  #s.license      = {  :type => "Copyright", :text => "Copyright ©2019 ZXR" }
  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "CLASSNULLZXR" => "1120887410@qq.com" }
  # Or just: s.author    = ""
  # s.social_media_url   = "http://twitter.com/"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "7.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/CLASSNULLZXR/ZXRMap.git", :tag => s.version }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #
  # s.source_files  = "ZXRMap/*.framework/Headers/*.h"  //framework 无需此项
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "ZXRMap/*.framework/Headers/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  s.resources = "ZXRMap/*.framework/*.bundle"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

#s.vendored_frameworks = 'ZXRMap/*.framework'
    s.subspec 'Base' do |b|
    b.vendored_frameworks = 'ZXRMap/BaiduMapAPI_Base.framework'
    end
    s.subspec 'Map' do |m|
    m.vendored_frameworks = 'ZXRMap/BaiduMapAPI_Map.framework'
    end
    s.subspec 'Search' do |se|
    se.vendored_frameworks = 'ZXRMap/BaiduMapAPI_Search.framework'
    end
    s.subspec 'Cloud' do |c|
    c.vendored_frameworks = 'ZXRMap/BaiduMapAPI_Cloud.framework'
    end
    s.subspec 'Utils' do |u|
    u.vendored_frameworks = 'ZXRMap/BaiduMapAPI_Utils.framework'
    end

  s.vendored_libraries = 'ZXRMap/thirdlibs/*.a'
  s.frameworks = "CoreLocation", "QuartzCore", "OpenGLES", "SystemConfiguration", "CoreGraphics", "Security", "CoreTelephony","MobileCoreServices"

  # s.library   = "iconv"
  s.libraries = "sqlite3.0", "c++"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

end
