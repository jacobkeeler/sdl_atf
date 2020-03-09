--- Module which provides ATF connection configuration
--
-- *Dependencies:* none
--
-- *Globals:* none
-- @copyright [Ford Motor Company](https://smartdevicelink.com/partners/ford/) and [SmartDeviceLink Consortium](https://smartdevicelink.com/consortium/)
-- @license <https://github.com/smartdevicelink/sdl_core/blob/master/LICENSE>

local config = { }

--- Define timeout to wait for connection to be established
config.connectionTimeout = 5000

--- Remote cofiguration
config.remoteConnection = {}
config.remoteConnection.enabled = true
--- Define host for default remote connection
config.remoteConnection.url = "192.168.1.131"
config.remoteConnection.port = 5555
config.hmiAdapterConfig = {}
config.hmiAdapterConfig.hmiAdapterType = "WebSocket"
--- Define configuration parameters for HMI connection on WebSocket base
config.hmiAdapterConfig.WebSocket = {}
config.hmiAdapterConfig.WebSocket.url = "ws://localhost"
config.hmiAdapterConfig.WebSocket.port = 8087
--- Define configuration parameters for Remote HMI connection
config.hmiAdapterConfig.Remote = {}
--- Define configuration parameters for HMI connection on WebSocket base
-- for Remote HMI connection
config.hmiAdapterConfig.Remote.WebSocketConfig = {}
config.hmiAdapterConfig.Remote.WebSocketConfig.host = "127.0.0.1"
config.hmiAdapterConfig.Remote.WebSocketConfig.port = 8087

--- Default mobile connection
--
--- Define transport type for default mobile device connection
-- TCP - TCP connection (connection parameters: mobileHost, mobilePort)
-- WS - WebSocket connection (connection parameters: wsMobileURL, wsMobilePort)
-- WSS - WebSocketSecure connection (connection parameters: wssMobileURL, wssMobilePort,
--      wssCertificateCA, wssCertificateClient, wssPrivateKey)
config.defaultMobileAdapterType = "TCP"
--- Define host for TCP default mobile device connection
config.mobileHost = "192.168.1.246"
--- Define port for TCP default mobile device connection
config.mobilePort = 12345
--- Define URL for WS default mobile device connection
config.wsMobileURL = "ws://localhost"
--- Define port for WS default mobile device connection
config.wsMobilePort = 2020
--- Define URL for WSS default mobile device connection
config.wssMobileURL = "wss://localhost"
--- Define port for WSS default mobile device connection
config.wssMobilePort = 2020
--- Define security protocol for WSS default mobile device connection
--  TlsV1_0 - TLS 1.0
--  TlsV1_1 - TLS 1.1
--  TlsV1_2 - TLS 1.2
--  DtlsV1_0 - DTLS 1.0
--  DtlsV1_2 - DTLS 1.2
--  TlsV1SslV3 - TLS 1.0 or SSL 3.0
config.wssSecurityProtocol = "TlsV1SslV3"
--- Define cypher list for WSS default mobile device connection
config.wssCypherListString = "ALL"
--- Define CA certificate for WSS default mobile device connection
config.wssCertificateCAPath = "./data/cert/wss/ca-cert.pem"
--- Define client certificate for WSS default mobile device connection
config.wssCertificateClientPath = "./data/cert/wss/client-cert.pem"
--- Define client private key for WSS default mobile device connection
config.wssPrivateKeyPath = "./data/cert/wss/client-key.pem"
--

--- Define host for SDL logs
config.sdl_logs_host = "192.168.1.131"
--- Define port for SDL logs
config.sdl_logs_port = 6676

return config
