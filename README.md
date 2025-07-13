# Webserv

**Webserv** is a C++98 project that implements an HTTP/1.1 web server inspired by NGINX.

This project was developed to provide a deep understanding of HTTP protocols, socket programming, I/O multiplexing, and server management.

[![Watch the demo](assets/video-thumbnail.png)](https://1drv.ms/v/c/cbba1ebb1a165cd3/EepgbuCuB4tCilq-AplQCcwBHTFArXg8InyfVrQgMSP9BQ)


💻 8. Write for both technical and non-technical readers
Technical: Explain design decisions, patterns, challenges.

Non-technical: One short paragraph on why the project matters, why you’re prou
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

## 🛠️ Usage

1️⃣ **Clone the repository**

```bash
git clone https://github.com/yourusername/webserv.git
cd webserv
2️⃣ Build the server

bash
Copy
Edit
make
3️⃣ Run the server

bash
Copy
Edit
./webserv config/regular.conf
4️⃣ Access the server

In a browser: http://localhost:<port>

With curl:

bash
Copy
Edit
curl -v http://localhost:<port>
📝 Configuration
The configuration files (.conf) allow you to customize:

Server names and ports

Locations and root directories

Allowed HTTP methods

Client body size limits

Error pages and redirections

CGI handlers and paths

Autoindex (directory listing)

Example configs are provided in the config/ directory.
🧪 Testing & Performance
✅ Tested with web browsers: Chrome, Firefox, Safari
✅ Stress-tested with 500+ concurrent users using ab and wrk
✅ Memory-leak free under Valgrind
✅ Correct handling of invalid requests, large payloads, and slow clients

🤝 Credits
I would like to express my gratitude to my peer pedperei for his collaboration and invaluable contributions throughout this project.

📜 License
This project is licensed under the MIT License. See LICENSE for details.

💬 Contact
If you’re interested in my work or have any questions, feel free to connect:

GitHub: yourusername

LinkedIn: yourname
