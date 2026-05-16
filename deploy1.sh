#!/bin/bash

set -e

echo "Cleaning old docs..."
rm -rf docs

echo "Generating site..."
kiln generate

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

find docs -name "*.html" -exec sed -i '' '
s#</head>#\
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.css">\
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.js"></script>\
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/contrib/auto-render.min.js"></script>\
<script defer src="/katex-init.js"></script>\
</head>#g
' {} \;

echo "Done."
