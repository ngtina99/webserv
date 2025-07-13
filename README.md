# Webserv

**Webserv** is a C++98 project that implements an HTTP/1.1 web server inspired by NGINX.

This project was developed as part of the 42 curriculum to provide a deep understanding of HTTP protocols, socket programming, I/O multiplexing, and server management.

---

## 🚀 Features

- I/O multiplexing using `poll()`
- Non-blocking file descriptors for efficient read/write
- Support for HTTP methods: `GET`, `POST`, `DELETE`
- Multipart request handling (e.g., file uploads)
- Static file serving (HTML, CSS, JS, images, etc.)
- Directory listing (autoindex) when enabled
- CGI script execution (e.g., PHP, Python)
- Configurable client body size limit
- Customizable error pages and redirections
- Support for multiple virtual servers and ports
- Stress-tested to handle **500+ concurrent clients**
- Clean memory management (no leaks on exit or error)

---

## ⚙️ Project Structure
