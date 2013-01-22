class Subdomain
  def self.matches?(request)
    request.subdomain.present? && request.subdomain != "www" && request.subdomain == "ibolya"
  end
end

class RootDomain
  @subdomains = ["www"]
  def self.matches?(request)
    @subdomains.include?(request.subdomain) || request.subdomain.blank?
  end
end