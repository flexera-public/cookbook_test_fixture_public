maintainer "RightScale, Inc."
maintainer_email "support@rightscale.com"
description "Test fixture that has UTF-8 characters in the README"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version "1.0.0"

recipe "utf_8_chars_in_readme::default", "Do nothing. With style."
