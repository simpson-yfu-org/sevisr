require 'openssl'
require 'net/http'
require 'sevisr/exchange_visitor_batch'

=begin
Expect the pks12 amnd pk password to be the same
=end
module Sevisr
  class Client

    attr_accessor :pks12_password, :url, :user, :pks12_path, :pks12, :http
    SEVIS_PROD = "https://egov.ice.gov/sevisbatch/action/"
    SEVIS_DEV = "https://egov.ice.gov/sbtsevisbatch/action/batchUpload"

    BOUNDARY = "AaB03x"

    header = {"Content-Type": "multipart/form-data; boundary=#{BOUNDARY}"}

    def initialize (url, user, pks12_path, pks12_password, httparty_options = {})
      @user = user
      @pks12_path = pks12_path
      @pks12_password = pks12_password
      @url = url
      uri = URI(url)

      raw = File.read @pks12_path # DER
      @pks12 = OpenSSL::PKCS12::new(raw, pks12_password)
      @http = Net::HTTP.new(uri.host, 443)
      @http.cert = pks12.certificate
      @http.key = pks12.key
      @http.use_ssl = true
      @http.set_debug_output($stdout)

    end

    def upload(batch, io)

      uri = URI.join(@url, "batchUpload")

      header = {"Content-Type": "multipart/form-data; boundary=#{BOUNDARY}"}
      post_body = []
      post_body << "--#{BOUNDARY}\r\n"
      post_body << "Content-Disposition: form-data; name=\"xml\"; filename=\"local.xml\"\r\n"
      post_body << "Content-Type: application/xml\r\n\r\n"
      post_body << batch.to_xml

      post_body << "--#{BOUNDARY}\r\n"
      post_body << "Content-Disposition: form-data; name=\"orgid\"\r\n\r\n"
      post_body << batch.org_id

      post_body << "--#{BOUNDARY}\r\n"
      post_body << "Content-Disposition: form-data; name=\"batchid\"\r\n\r\n"
      post_body << batch.batch_id

      post_body << "--#{BOUNDARY}\r\n"
      post_body << "Content-Disposition: form-data; name=\"userid\"\r\n\r\n"
      post_body << @user
      post_body << "\r\n\r\n--#{BOUNDARY}--\r\n"


      req = Net::HTTP::Post.new(uri.path, header)
      req.body = post_body.join
      req.content_type = "multipart/form-data; boundary=#{BOUNDARY}"
      res = @http.start do |http|
        http.request(req)
      end

      case res
      when Net::HTTPSuccess
        # OK
        io.write res.body
      else
        puts batch.to_xml
        res.value
      end
    end

    def get(org_id, batch_id, io)
      uri = URI.join(@url, "batchDownload")
      req = Net::HTTP::Get.new uri
      req.set_form_data('orgid' => org_id, 'batchid' => batch_id, 'userid' => @user)
      res = @http.start do |http|
        http.request(req)
      end

      case res
      when Net::HTTPSuccess
        # OK
        io.write res.body
      else
        res.value
      end


    end
  end
end