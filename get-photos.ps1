# Copies M Bakeri's photos into .\images so the site serves them from your GitHub repo.
New-Item -ItemType Directory -Force -Path images | Out-Null
$urls = @(
  "https://mbakerillc.com/wp-content/uploads/2020/04/maca-post-1a.jpg",
  "https://mbakerillc.com/wp-content/uploads/2022/08/capuccino.jpg",
  "https://mbakerillc.com/wp-content/uploads/2022/08/mbak-side-panel-1.jpg",
  "https://mbakerillc.com/wp-content/uploads/2023/07/salmon-quiche-slice.jpg",
  "https://mbakerillc.com/wp-content/uploads/2023/08/cakes-1a.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/07/chris-expand-1a.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/bottle-water.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/cappu.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/drinks.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/drip.png",
  "https://mbakerillc.com/wp-content/uploads/2024/08/flatwhite.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/hotchoc.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/ice-tea.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/iced-2.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/iced-cream.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/iced-red.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/latte.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/macchiato.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/old-milk.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/redeye.jpg",
  "https://mbakerillc.com/wp-content/uploads/2024/08/sparkling.jpg",
  "https://mbakerillc.com/wp-content/uploads/2025/06/smoothie-green-goddess-1a.webp",
  "https://mbakerillc.com/wp-content/uploads/elementor/thumbs/bagette-qywo0pi8j90k1e765qha7h4pq7l8hpnrz3azgd3tnk.png",
  "https://mbakerillc.com/wp-content/uploads/elementor/thumbs/mb-wrap-1a-r76f5pcx1u66mvle1y5hb8pu6nsevgwvab00b0ltb4.webp",
  "https://mbakerillc.com/wp-content/uploads/elementor/thumbs/pistachio-cookies-qywo0pi8a1gwsz9bvivv1rqcwwou33pdyqzvkzyyfs.jpg",
  "https://mbakerillc.com/wp-content/uploads/elementor/thumbs/swwets-1a-qywo0rdwwharrstcgbvclz0yb59w8ujztd7vrtzm3k.jpg"
)
foreach ($u in $urls) { $f = Split-Path $u -Leaf; Invoke-WebRequest -Uri $u -OutFile "images\$f"; Write-Host "ok  $f" }
