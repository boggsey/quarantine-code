import Config

version = Mix.Project.config()[:version]

config :quarantine_code,
  ecto_repos: [QuarantineCode.Repo],
  version: version

config :phoenix, :json_library, Jason

config :quarantine_code, QuarantineCodeWeb.Endpoint,
  pubsub: [name: QuarantineCode.PubSub, adapter: Phoenix.PubSub.PG2],
  render_errors: [view: QuarantineCodeWeb.Errors.View, accepts: ~w(html json)]

config :quarantine_code, QuarantineCode.Repo, start_apps_before_migration: [:ssl]

config :quarantine_code, Corsica, allow_headers: :all

config :quarantine_code, QuarantineCode.Gettext, default_locale: "en"

config :quarantine_code, QuarantineCodeWeb.ContentSecurityPolicy, allow_unsafe_scripts: false

config :sentry,
  included_environments: ~w(prod)a,
  root_source_code_path: File.cwd!(),
  release: version

# Import environment configuration
import_config "#{Mix.env()}.exs"
