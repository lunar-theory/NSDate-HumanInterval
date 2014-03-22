
Pod::Spec.new do |s|
  s.name         = "NSDate+HumanInterval"
  s.version      = "0.0.2"
  s.summary      = "Category that adds a method that returns an human-readable representation of the NSDate"
  s.description  = "Category that adds a method that returns an human-readable representation of the NSDate:
                   * To easily translate date strings to human readable representation
                   * Current supported languages: Spanish and English"
  s.homepage     = "https://github.com/orlandoaleman/NSDate-HumanInterval"
  s.license      = {:type => 'MIT', :file => 'LICENSE'}
  s.authors      = { "David E. Wheeler" => "david@justatheory.com", "Orlando Aleman Ortiz" => "contacto@orlandoaleman.com"}
  s.platform     = :ios, '5.0'
  s.source       = { :git => "https://github.com/orlandoaleman/NSDate-HumanInterval.git", :tag => "0.0.2" }
  s.source_files  = 'src/*.{h,m}'
  s.resources = "Shared/HILanguages.bundle"
  s.frameworks = 'Foundation'  
end
