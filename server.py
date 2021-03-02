import http.server
import socketserver
import subprocess

class MyHttpRequestHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        # Sending an '200 OK' response
        self.send_response(200)

        # Setting the header
        self.send_header("Content-type", "application/json")

        # Whenever using 'send_header', you also have to call 'end_headers'
        self.end_headers()

        output = subprocess.check_output("bash /usr/local/openvpn_as/scripts/sacli VPNSummary", shell=True)

        self.wfile.write(output)

        return

# Create an object of the above class
handler_object = MyHttpRequestHandler

PORT = 4444
my_server = socketserver.TCPServer(("", PORT), handler_object)

# Star the server
my_server.serve_forever()