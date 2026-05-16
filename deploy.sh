#!/bin/bash

set -e

echo "Generating site with Kiln..."

if command -v kiln >/dev/null 2>&1; then
  kiln generate
else
  /opt/homebrew/bin/kiln generate
fi

echo "Creating KaTeX init script..."
mkdir -p docs

cat > docs/katex-init.js <<'EOF'
document.addEventListener("DOMContentLoaded", () => {
  if (window.renderMathInElement) {
    renderMathInElement(document.body, {
      delimiters: [
        { left: "$$", right: "$$", display: true },
        { left: "$", right: "$", display: false },
        { left: "\\(", right: "\\)", display: false },
        { left: "\\[", right: "\\]", display: true }
      ],
      throwOnError: false
    });
  }
});
EOF

echo "Injecting KaTeX into HTML files..."

find docs -name "*.html" | while read -r file; do

  # Skip if already injected
  if grep -q "KATEX-INJECTED" "$file"; then
    continue
  fi

  sed -i '' "
  s#</head>#\
  <!-- KATEX-INJECTED -->\
  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.css\">\
  <script defer src=\"https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.js\"></script>\
  <script defer src=\"https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/contrib/auto-render.min.js\"></script>\
  <script defer src=\"/personal-notes/katex-init.js\"></script>\
  </head>#g
  " "$file"

done

echo "KaTeX injection complete."

echo ""
git status
echo ""

git add .

if git diff --cached --quiet; then
  echo "No changes to commit."
  exit 0
fi

git commit -m "Obsidian push"

echo "Pushing to GitHub..."
git push

echo ""
echo "Deployment complete."