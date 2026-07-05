#!/bin/bash
# Downloads your site's images from Squarespace into the assets/ folder.
# Run this ONCE while your Squarespace site is still live:
#   cd verasoft-site && bash get-images.sh
cd "$(dirname "$0")/assets" || exit 1
base="https://images.squarespace-cdn.com/content/v1/6988a408febb6b5bc26c3a0b"

curl -L -o logo.png        "$base/eb43d4bd-9e05-4f2f-8f2d-031297c63d0f/verasoft+final+logo.png?format=1500w"
curl -L -o hero-spools.png "$base/266468e0-d20e-4708-8f76-5a9e01adf5be/ChatGPT+Image+Feb+8%2C+2026%2C+11_02_22+PM.png?format=1500w"
curl -L -o eco-yarn.png    "$base/b922348c-03fd-4ab4-b91e-77bfb5d111b9/ChatGPT+Image+Feb+8%2C+2026%2C+11_14_54+PM.png?format=1500w"
curl -L -o yarn-1.jpg      "$base/2081764d-5cf9-4a71-9128-48eebb43b9f9/Verasoft+Yarn_Verasoft+Soluble+Filament+Yarn_Eco+Friendly+Yarn?format=1500w"
curl -L -o yarn-2.jpg      "$base/5dd136fe-efee-49ee-9b95-f77aa247bed4/Verasoft+Yarn_Verasoft+Soluble+Filament+Yarn?format=1500w"
curl -L -o yarn-3.jpg      "$base/c9f5e564-d3be-4651-9034-8897426e45f2/Verasoft+Yarn_Verasoft+Soluble+Filament+Yarn?format=1500w"
curl -L -o innovation.png  "$base/59edc8e7-30fd-4529-b885-f9e1e3ced56e/innovations.png?format=1500w"
curl -L -o app-towels.png  "$base/c9e1c7d8-ae6f-470c-9c14-22cc79e27538/Verasoft+yarn+zero+twist+towel.png?format=1000w"
curl -L -o app-polo.jpg    "$base/a34a913b-0467-4506-8b53-26cb52160a2d/blue+polo+image.jpg?format=1000w"
curl -L -o app-denim.jpg   "$base/dade4ac8-e822-4a94-a1b2-04c3836c6e78/denim.jpg?format=1000w"
curl -L -o app-wool.jpg    "$base/4b9d1b5e-92b5-42dc-bf13-04c0015e4e49/Verasoft_Soluble+Yarn_Wool+and+cashmere+fabric.jpg?format=1000w"
curl -L -o app-lace.jpg    "$base/211193d9-433c-4209-a924-3f83032855ef/Verasoft+Yarn+Lace+Fabric.jpg?format=1000w"
curl -L -o app-opal.png    "$base/122334f3-9b58-40b4-9fcc-58ed4bd22787/Verasoft+Yarn+Opal+Finished+Fabrics.png?format=1000w"

echo ""
echo "Done. Downloaded files:"
ls -la
