require "jekyll/gravatar/version"
require 'digest/md5'

module Jekyll
  module Gravatar
    def to_gravatar(email_address, size = nil)
      "#{protocol}://www.gravatar.com/avatar/#{hash(email_address)}"
    end

    private

    def protocol
      Jekyll.configuration['url'].start_with?("https") ? "https" : "http"
    end

    def hash(email_address)
      Digest::MD5.hexdigest(email_address.downcase.gsub(/\s+/, ""))
    end
  end
end

Liquid::Template.register_filter(Jekyll::Gravatar)
