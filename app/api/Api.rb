require "grape-swagger"

module Api
    class API < Grape::API
        prefix :api
        version 'v1'
        format :json

        mount Books::API

        add_swagger_documentation(
            api_version: "v1",
            hide_documentation_path: true,
            hide_format: true
        )
    end
end
