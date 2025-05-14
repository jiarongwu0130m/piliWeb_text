#!/usr/bin/env sh

# 停止於錯誤
set -e

# 編譯
npm run build

# 進入輸出資料夾
cd dist

# 如果你已經建立過 repo，以下不會影響 main 分支
git init
git remote add origin https://github.com/jiarongwu0130m/piliWeb_text.git  # <== 加這行
git add -A
git commit -m "deploy"

echo ">>> pushing to GitHub..."
# ✅ 推送到 ghpages（請確認這行有寫對）
git push -f origin master:gh-pages

# 回到根目錄
cd -
