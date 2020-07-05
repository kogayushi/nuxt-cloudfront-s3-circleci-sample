# this is originally from official site => https://ja.nuxtjs.org/faq/deployment-aws-s3-cloudfront/

# nvm（node version manager）を読み込み、node（.nvmrc 内のバージョン）をインストールし、npm パッケージをインストールします。
[ -s "$HOME/.nvm/nvm.sh" ] && source "$HOME/.nvm/nvm.sh" && nvm use
# まだインストールされていない場合は npm をインストールする
[ ! -d "node_modules" ] && yarn install

yarn generate
yarn run gulp deploy
