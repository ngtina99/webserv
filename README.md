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

## 📋 Additional Highlights

- Makefile with standard rules (`all`, `clean`, `fclean`, `re`)
- No external libraries used

## ✅ Summary of Testing Performed

- Tested with **telnet**, **curl**, and prepared files
- Verified **GET**, **POST**, **DELETE** requests
- Checked handling of **unknown HTTP methods**
- Confirmed correct **HTTP status codes** are returned
- Tested **file upload** and retrieval
- Checked **CGI scripts** with GET and POST methods
- Verified **CGI error handling** (e.g., infinite loops, script errors)
- Tested using **web browser** (static site, wrong URLs, directory listing, redirects)
- Tested configuration with **multiple ports** and **hostnames**
- Checked running **multiple servers** with overlapping ports
- Ran **stress tests** using Siege (`siege -b`)
- Confirmed **no memory leaks** under load
- Verified **no hanging or stuck connections**

## 🤝 Credits
I had the pleasure of working with [**Yulia**](https://github.com/leanor13) and [**Lucas**](https://github.com/andlukass) on our Webserv project. I'm really proud of how we combined our skills, supported each other, and turned our teamwork into a project we’re all proud of. 🌟

## 💼 Connect
If you have any questions or suggestions, feel free to connect:
🔗 [LinkedIn: Valentina Nguyen](https://www.linkedin.com/in/valentina-nguyen-t/) 🙋‍♀️

## 📜 License
This project is licensed under the MIT License. See LICENSE for details.

## 🖥️ System Compatibility
This project was developed and tested on Linux (Ubuntu).
