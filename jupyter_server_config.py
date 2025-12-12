c = get_config()

c.ServerApp.ip = "0.0.0.0"
c.ServerApp.port = 8888
c.ServerApp.open_browser = False
c.ServerApp.allow_root = True

# Semua auth dimatikan – gunakan hanya di jaringan aman!
c.ServerApp.token = ""
c.ServerApp.password = ""
c.ServerApp.password_required = False
c.ServerApp.disable_check_xsrf = True 
