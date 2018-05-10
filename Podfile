platform :ios, '11.0'

target "Algorithm" do
  use_frameworks!
  # Normal libraries

  target "AlgorithmTests" do
    inherit! :search_paths

    pod 'Quick'
    pod 'Nimble'
    pod 'SwiftCheck'
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts target.name
  end
end