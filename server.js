import express from "express";
import path from "path";
import { fileURLToPath } from "url";

const app = express();
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Melayani file statis dari folder 'dist'
app.use(express.static(path.join(__dirname, "dist")));

// Semua rute diarahkan ke 'index.html'
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "dist", "index.html"));
});

// server.js
// eslint-disable-next-line no-undef
const port = process.env.PORT || 16000;
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
