<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Webserv</title>
</head>
<body>
    <h1>Webserv</h1>

    <p><strong>Webserv</strong> is a lightweight HTTP/1.1 web server implemented in C++98, inspired by NGINX.</p>

    <p>This project was developed as part of the 42 school curriculum to deepen understanding of network programming, socket management, and HTTP protocol internals. It demonstrates how web servers work and applies low-level programming techniques like multiplexing and non-blocking I/O.</p>

    <h2>🚀 Features</h2>
    <ul>
        <li>I/O multiplexing using <code>poll()</code></li>
        <li>Non-blocking socket reads and writes</li>
        <li>Support for HTTP methods: <code>GET</code>, <code>POST</code>, <code>DELETE</code></li>
        <li>Multipart/form-data handling (file uploads)</li>
        <li>Static file serving (HTML, CSS, JS, images)</li>
        <li>Autoindex (directory listing)</li>
        <li>CGI script execution (e.g., Python, PHP)</li>
        <li>Virtual server support (multiple domains and ports)</li>
        <li>Customizable error pages and redirection rules</li>
        <li>Client body size limits</li>
        <li>Stress-tested with 500+ concurrent connections</li>
        <li>Memory-safe execution (checked with Valgrind)</li>
    </ul>

    <h2>🗂 Project Structure</h2>
    <pre>
.
├── Makefile          # Build script
├── config/          # Example configuration files
├── includes/       # Header files
├── src/           # Source code files
    </pre>

    <h2>⚙️ Usage</h2>
    <h3>1️⃣ Clone the repository</h3>
    <pre>git clone https://github.com/yourusername/webserv.git
cd webserv</pre>

    <h3>2️⃣ Build the server</h3>
    <pre>make</pre>

    <h3>3️⃣ Run the server</h3>
    <pre>./webserv config/regular.conf</pre>

    <h3>4️⃣ Access the server</h3>
    <ul>
        <li>In your browser:
            <pre>http://localhost:&lt;port&gt;</pre>
        </li>
        <li>Using curl:
            <pre>curl -v http://localhost:&lt;port&gt;</pre>
        </li>
    </ul>

    <h2>📝 Configuration</h2>
    <p>The server is configured via <code>.conf</code> files (inspired by NGINX). You can customize:</p>
    <ul>
        <li>Server names and ports</li>
        <li>Root directories and locations</li>
        <li>Allowed HTTP methods</li>
        <li>Client body size limits</li>
        <li>Error pages and redirects</li>
        <li>CGI handlers and execution settings</li>
        <li>Autoindex (directory listing)</li>
    </ul>

    <p>Example configs are provided in the <code>config/</code> folder:</p>
    <ul>
        <li><code>regular.conf</code> — basic server setup</li>
        <li><code>multiple_servs.conf</code> — multiple virtual servers</li>
        <li><code>small_body_size.conf</code> — body size limit test</li>
    </ul>

    <h2>🧪 Testing & Performance</h2>
    <ul>
        <li>✅ Tested in browsers: Chrome, Firefox, Safari</li>
        <li>✅ Stress-tested with 500+ concurrent users (using <code>ab</code>, <code>wrk</code>)</li>
        <li>✅ Memory-checked with Valgrind — no leaks</li>
        <li>✅ Correct handling of invalid requests, large payloads, and slow clients</li>
    </ul>

    <h2>✨ What I Learned</h2>
    <ul>
        <li>Low-level network programming in C++</li>
        <li>Managing non-blocking I/O and multiplexing with <code>poll()</code></li>
        <li>Building an HTTP/1.1-compliant request/response parser</li>
        <li>Designing modular and configurable systems</li>
        <li>Writing memory-safe, leak-free code</li>
    </ul>

    <h2>🤝 Credits</h2>
    <p>Special thanks to my peer <strong>pedperei</strong> for his invaluable collaboration, feedback, and contributions throughout this project.</p>

    <h2>📜 License</h2>
    <p>This project is open-source under the MIT License.</p>

    <h2>💬 Contact</h2>
    <p>If you’re interested in my work or have any questions, feel free to connect:</p>
    <ul>
        <li>GitHub: <a href="https://github.com/yourusername">yourusername</a></li>
        <li>LinkedIn: <a href="https://www.linkedin.com/in/yourname">yourname</a></li>
    </ul>
</body>
</html>
