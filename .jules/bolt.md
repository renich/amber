## 2024-05-24 - Avoid Large Regex Alternation for Extension Checking
**Learning:** Checking for file extensions using a massive regular expression (`/\.(html|json|txt|...)$/` with ~600 entries) in a hot path like router matching or content type parsing is extremely slow.
**Action:** Always prefer basic string manipulation and hash lookups. Using `File.extname(path)` and looking up the extension in a pre-populated Hash (e.g., `MIME_TYPES.has_key?(ext)`) can yield a 14x performance improvement for matches, and even larger improvements for rejections.
