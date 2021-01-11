curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo
yum install yarn -y -y
yarn config set registry https://registry.npm.taobao.org/
yarn install
npm run gh
cd dist
tar -cvf react.tar *