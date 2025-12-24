#!/bin/bash
find src -type f \( -name "*.jsx" -o -name "*.tsx" -o -name "*.js" \) -exec sed -i '' 's|process\.env\.TEMPLATE_IMAGE_URL|import.meta.env.VITE_TEMPLATE_IMAGE_URL|g' {} \;
echo "Fixed process.env references"
