maintainer "RightScale, Inc."
maintainer_email "support@rightscale.com"
description "Test fixture that has one dependency"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version "1.0.0"

depends "ui_has_no_dependencies", "1.0.0"

recipe "ui_has_one_dependency::default", "Do nothing. With style."
