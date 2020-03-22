import Config

# Import runtime configuration
import_config "releases.exs"

config :quarantine_code, QuarantineCodeWeb.Endpoint,
  code_reloader: true,
  check_origin: false,
  watchers: [
    npm: [
      "run",
      "watch",
      cd: Path.expand("../assets", __DIR__)
    ]
  ],
  live_reload: [
    patterns: [
      ~r{priv/gettext/.*$},
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{lib/quarantine_code_web/.*(ee?x)$}
    ]
  ]

config :quarantine_code, QuarantineCodeWeb.ContentSecurityPolicy, allow_unsafe_scripts: true

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20
