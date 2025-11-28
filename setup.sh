#!/bin/sh
cd "$(dirname "$0")"

cat > index_spa_clean.html <<'HTML'
<!doctype html>
<html><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Scalping Mastery — Local</title>
<link rel="stylesheet" href="styles_clean.css">
</head>
<body>
<div class="container">
<h1>Scalping Mastery — Local</h1>
<nav>
<a href="index_spa_clean.html">Home</a> |
<a href="strategies.html">Strategies</a> |
<a href="tools.html">Tools</a> |
<a href="psychology.html">Psychology</a>
</nav>
<p>Local demo running on your tablet.</p>
</div>
<script src="main_clean.js"></script>
</body></html>
HTML

cat > styles_clean.css <<'CSS'
body { background:#0b0f14; color:#e6f7ff; font-family:system-ui,Roboto,Arial; margin:24px; }
.container { max-width:900px; margin:0 auto; padding:18px; background:#071019;
border-radius:8px; border:1px solid rgba(0,200,255,0.06); }
a { color:#6fe1ff; text-decoration:none; }
a:hover { text-decoration:underline; }
h1 { color:#00d4ff; }
CSS

cat > main_clean.js <<'JS'
console.log("Main JS Loaded Successfully");
JS

cat > strategies.html <<'HTML'
<!doctype html><html><head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>Strategies</title><link rel="stylesheet" href="styles_clean.css"></head>
<body><div class="container"><h1>Strategies</h1>
<p>EMA 9/21 – VWAP Pullback – Orderflow Scalping</p>
<p><a href="index_spa_clean.html">Back</a></p></div></body></html>
HTML

cat > tools.html <<'HTML'
<!doctype html><html><head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tools</title><link rel="stylesheet" href="styles_clean.css"></head>
<body><div class="container"><h1>Tools</h1>
<p>Position Sizing, R/R Calculator (demo)</p>
<p><a href="index_spa_clean.html">Back</a></p></div></body></html>
HTML

cat > psychology.html <<'HTML'
<!doctype html><html><head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>Psychology</title><link rel="stylesheet" href="styles_clean.css"></head>
<body><div class="container"><h1>Psychology</h1>
<p>Journaling – Mind Control – Discipline</p>
<p><a href="index_spa_clean.html">Back</a></p></div></body></html>
HTML

echo "✔ All website files created in $(pwd)"
