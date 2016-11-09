name 'acme'
maintainer 'acme'
maintainer_email 'info@example.com'
license 'Apache 2.0'
description 'Installs/configures the acme box!'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'

%w{ centos ubuntu }.each do |os|
  supports os
end

%w{ docker }.each do |cbook|
  depends cbook
end
