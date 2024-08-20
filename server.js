import express from "express";
import path from "path";

const app = express();
// eslint-disable-next-line no-undef
const PORT = process.env.PORT || 3000;

const __dirname = path.resolve();

// Serve static files from the dist directory
app.use(express.static(path.join(__dirname, "dist")));

app.get("*", (req, res) => {
  res.sendFile(path.resolve(__dirname, "dist", "index.html"));
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
