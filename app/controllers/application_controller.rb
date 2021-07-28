class ApplicationController < ActionController::Base

  def sms_to(phone_number, name = nil, html_options = {}, &block)
    html_options, name = name, nil if block_given?
    html_options = (html_options || {}).stringify_keys

    extras = %w{ body }.map! { |item|
      option = html_options.delete(item).presence || next
      "#{item.dasherize}=#{ERB::Util.url_encode(option)}"
    }.compact
    extras = extras.empty? ? "" : "?&" + extras.join("&")

    encoded_phone_number = ERB::Util.url_encode(phone_number)
    html_options["href"] = "sms:#{encoded_phone_number};#{extras}"

    content_tag("a", name || phone_number, html_options, &block)
  end
end
