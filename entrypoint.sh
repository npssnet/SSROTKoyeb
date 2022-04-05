cat > /config.json <<EOF
{
    "password": "13955112-79c5-4aae-ac01-aabec4c963aa",
    "method": "aes-128-ctr",
    "protocol": "origin",
    "protocol_param": "",
    "obfs": "plain",
    "obfs_param": "",
    "udp": true,
    "idle_timeout": 300,
    "connect_timeout": 6,
    "udp_timeout": 6,
    "server_settings": {
        "listen_address": "0.0.0.0",
        "listen_port": 80
    },
    "client_settings": {
        "server": "ssrot-npssnet.koyeb.app",
        "server_port": 443,
        "listen_address": "0.0.0.0",
        "listen_port": 1080
    },
    "over_tls_settings": {
        "enable": true,
        "server_domain": "ssrot-npssnet.koyeb.app",
        "path": "/9ccbb338-2c45-4751-b767-8ba83a1e5624/",
        "root_cert_file": ""
    }
}
EOF

/ssrserver.sh -c /config.json
