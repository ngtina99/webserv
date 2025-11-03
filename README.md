# Webserv

Webserv is a C++ project aimed at creating an HTTP/1.1 web server, inspired by NGINX, to explore the inner workings of web servers.

I had the pleasure of working with [**Yulia**](https://github.com/leanor13) and [**Lucas**](https://github.com/andlukass). I focused mainly on request handling, static site setup, and host/port management.
This was a big and exciting project. I’m really proud of how we worked as a team, shared ideas, and brought all the pieces together. 🎉

## 📽 Demo

Here’s a short demo of our Webserv project in action - serving static pages, handling HTTP requests, and demonstrating the key features we implemented.

![Webserv demo](webserv_gif.gif)

## 🛠️ Usage

1️⃣ **Clone the repository**

```bash
git clone https://github.com/ngtina99/webserv.git webserv
cd webserv
```

2️⃣ Build the server

```bash
make
```

3️⃣ Run the server

```bash
./webserv config/regular.conf
```

4️⃣ Access the server

In a browser: http://localhost:8080

With curl from the terminal:
```bash
curl -v http://localhost:8080
```

## Server Flow
```bash
1. Server starts → reads config file (ports, routes, CGI, etc.)
2. Creates socket(s) → binds → listens on one or more ports
3. Uses non-blocking I/O (select/poll) to handle many clients
4. Parses HTTP request → method, headers, body
5. Decides response:
      - static file (HTML, PNG, etc.)
      - CGI program (Python/PHP script)
      - error page
6. Sends response back
```

### Method flow

```bash
1. Client sends HTTP request (GET or POST)
2. Server reads data from socket
3. Parse method, path, headers, body
4. Match config location block
5. Check if method is allowed (allow_methods)
6. Route to correct handler:
      - static file (GET)
      - CGI execution (POST or GET)
      - upload handler (POST)
7. Build HTTP response
8. Send response back
```


## 📝 Configuration

The configuration files (`.conf`) allow you to customize:

- **Server names and ports**
- **Locations and root directories**
- **Allowed HTTP methods**
- **Client body size limits**
- **Error pages and redirections**
- **CGI handlers and paths**
- **Autoindex** (directory listing)

Example configs are provided in the `config/` directory.

## ✨ Features

- 📄 Serve static websites (HTML, CSS)
- ⚙️ Support multiple servers with custom ports and hostnames
- 🔀 Manage routes with:
  - Accepted HTTP methods (GET, POST, DELETE)
  - Custom root directories and default files
  - Directory listing (autoindex)
  - HTTP redirection
- 🛑 Custom error pages for proper HTTP status handling
- 📦 File upload support via POST
- 🖥️ Execute CGI scripts (e.g., Python, BASH)
- 🔧 Configuration file system inspired by NGINX:
  - Define server blocks
  - Configure error pages, client body size limits and CGI handlers
- ↔️ Non-blocking I/O using a single `select()` for all client-server operations
- 🍪 Cookie and session management

## ✅ Summary of Testing Performed

- Tested with  **curl**, and prepared files (curl -v http://localhost:8080/, 
- Verified **GET**, **POST**, **DELETE** requests (curl -X POST -F "file=@text.txt" http://localhost:8080/, curl -X DELETE http://localhost:8080/upload/text.txt)
- Checked handling of **unknown HTTP methods** (curl -X PATCH http://localhost:8080/)
- Confirmed correct **HTTP status codes** are returned (curl -I http://localhost:8080/)
- Tested **file upload** and retrieval (http://localhost:8080/valami.txt)
- Tested using **web browser** (static site, wrong URLs, directory listing, redirects)
- Tested configuration with **multiple ports** and **hostnames** (lsof -i :8080, ps aux | grep webserv)
- Ran **stress tests** using Siege (siege -b, siege -b -c 10 http://localhost:8080/, siege -c 50 -t 10s http://localhost:8080/)
- Confirmed **no memory leaks** under load (valgrind --leak-check=full --show-leak-kinds=all ./webserv config/regular.conf)
- Verified **no hanging or stuck connections** (lsof -i :8080)
- Checked **CGI scripts** with GET and POST methods

## 📋 Additional Highlights

- Makefile with standard rules (`all`, `clean`, `fclean`, `re`)
- No external libraries used

## 🤝 Credits
I had the pleasure of working with [**Yulia**](https://github.com/leanor13) and [**Lucas**](https://github.com/andlukass) on our Webserv project. I'm really proud of how we combined our skills, supported each other, and turned our teamwork into a project we’re all proud of. 🌟

## 💼 Connect
If you have any questions or suggestions, feel free to connect:
🔗 [LinkedIn: Valentina Nguyen](https://www.linkedin.com/in/valentina-nguyen-t/) 🙋‍♀️

## 📜 License
This project is licensed under the MIT License. See LICENSE for details.

## 🖥️ System Compatibility
This project was developed and tested on Linux (Ubuntu).
