module DocServer
  # Inherit controller from host application
  class DocsController < ::ApplicationController
    def show
      template = template_path(params[:id])
      if template_exists?(template)
        render template
      else
        raise ActionController::RoutingError,
          "DocsController: #{template} not found"
      end
    end


    private


    def template_path(id)
      slug = id.delete("..").tr("-", "-")
      "doc_server/docs/#{slug}"
    end
  end
end
