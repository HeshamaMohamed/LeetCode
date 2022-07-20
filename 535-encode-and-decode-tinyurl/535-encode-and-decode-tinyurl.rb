require 'securerandom'
# Encodes a URL to a shortened URL.
#
# @param {string} longUrl
# @return {string}
@tiny_urls = {}
def encode(longUrl)
    @tiny_urls[longUrl] = SecureRandom.hex(3)
end

# Decodes a shortened URL to its original URL.
#
# @param {string} shortUrl
# @return {string}
def decode(shortUrl)
    @tiny_urls.key(shortUrl)
end


# Your functions will be called as such:
# decode(encode(url))