class Applet < ActiveRecord::Base
  attr_accessible "title", "content", "style", "javascript", "objective", "abstract", "curriculum", "theme", "author", "language", "country", "publisher", "description", "rightsholder", "submiter", "address", "license", "uri", "other_links", "applet_type", "direct_url"

  def include_snippet(width=720, height=400)
    case self.applet_type
    when 'flash'
      <<-EOF
        <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0">
        <param name="src" value="#{self.direct_url}">
        <embed src="#{self.direct_url}" width="#{width}" height="#{height}"></embed>
        </object>
      EOF
    else
      js = <<-EOF
        <script type="text/javascript"  charset="utf-8">
          #{self.javascript.blank? ? "" : self.javascript}
        </script>
      EOF

      style = <<-EOF
        <style>
          #{self.style.blank? ? "" : self.style}
        </style>
      EOF

      content = <<-EOF
        #{self.content}
      EOF

      "#{js} #{style} #{content}"
    end
  end
end
