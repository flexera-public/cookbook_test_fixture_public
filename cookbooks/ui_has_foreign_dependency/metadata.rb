maintainer "RightScale, Inc."
maintainer_email "support@rightscale.com"
description "Test fixture that has no dependencies"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version "1.0.0"

depends "mysql", "> 0.0.1"

recipe "ui_has_foreign_dependency::default", "Do nothing. With style."
