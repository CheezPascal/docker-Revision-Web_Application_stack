const express = require("express");

const app = express();
const PORT = 3000;

// Serve static files from the public folder
app.use(express.static("public"));

// API Endpoint Example
app.get("/api", (req, res) => {
    res.json({ message: "Hello from Node.js!" });
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
