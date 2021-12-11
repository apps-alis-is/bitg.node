am.app.set_model(
    {
        DAEMON_URL = "https://github.com/bitcoin-green/bitcoingreen/releases/download/v1.6.0.1/bitgreen-1.6.0.1-x86_64-linux-gnu.tar.gz",
        DAEMON_ARCHIVE_KIND="tar.gz",
        DAEMON_CONFIGURATION = {
            server = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            listen = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            masternodeprivkey = am.app.get_configuration("NODE_PRIVKEY"),
            masternode = am.app.get_configuration("NODE_PRIVKEY") and 1 or nil
        },
        DAEMON_NAME = "bin/bitgreend",
        CLI_NAME = "bin/bitgreen-cli",
        CONF_NAME = "bitgreen.conf",
        CONF_SOURCE = "__btc/assets/daemon.conf",
        SERVICE_NAME = "bitgreend",
        ABOUT_SOURCE = "__bitg/about.hjson"
    },
    { merge = true, overwrite = true }
)