require 'uri'

def site_data site
  uri = URI (site)
  return uri.scheme, uri.host, uri.path
end

p site_data "https://career.softserveinc.com/en-us/learning-and-certification/formats-2/"
