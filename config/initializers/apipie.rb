Apipie.configure do |config|
  config.app_name = "Redu Apps App"
  config.copyright = "&copy; 2012 Redu Educational Technologies"
  config.doc_base_url = "/apidoc"
  config.api_base_url = "/"
  config.validate = false
  config.markup = Apipie::Markup::Markdown.new
  config.reload_controllers = true
  config.api_controllers_matcher = \
    File.join(Rails.root, "app/controllers/applets_controller.rb")
  config.app_info = <<-DOC
    This is the REST API documentation to create learning objects. Each registered user has an access token which can be used to issue request to the rest API. You just need to inform it through query string.

    For example, issuing a ``GET /applets?token=ABCDE`` will list the applets on behalf of the user with the token ABCDE.

    If you need to know which is your token email guilhermec@redu.com.br
  DOC
end
