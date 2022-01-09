# KIND_K8S_MAC

```sh
#Kind

## kindをインストールする。
brew install kind
# Docker Desktopを起動させる。
open -a Docker
#＃クラスタ作成する。
kind create cluster
## クラスタの情報を確認する。
kubectl cluster-info --context kind-kind
## 現在のコンテクストを確認する。
kubectl config current-context
## 切り替え可能なコンテクストを確認する。
kubectl config get-contexts
## コンテクストを変更する。
CONTEXT_NAME=kind-kind
kubectl config use-context $CONTEXT_NAME
## コンテクストの情報を確認する。
cat ~/.kube/config
## ファイルでkubeconfigを管理したい場合
export KUBECONFIG=/path/to/my-kubeconfig.yaml
kubectl --kubeconfig=/path/to/my-kubeconfig.yaml get pods

# helmのチュートリアル

##　helmインストール
brew install helm
##ディレクトリ構造の作成
mkdir -p my-namespace/templates
## Chart.yamlの追加
echo -e "apiVersion: v2\nname: my-namespace\ndescription: A Helm chart to create a Kubernetes namespace\nversion: 0.1.0" > my-namespace/Chart.yaml

## namespace.yamlの作成
echo -e "apiVersion: v1\nkind: Namespace\nmetadata:\n  name: {{ .Values.namespace.name }}" > my-namespace/templates/namespace.yaml

## values.yamlの作成
echo -e "namespace:\n  name: example-namespace" > my-namespace/values.yaml

## helmインストール
helm install my-namespace-release ./my-namespace

## Helmリリースの一覧を取得
helm list

##Helmリリースの詳細確認
release_name=my-namespace-release
helm status $release_name

## 次回からのデプロイ
helm upgrade my-namespace-release ./my-namespace

# 作業効率化

## kubectlのエイリアス設定
echo -e "\n## alias kubectl\nalias k=kubectl" >> ~/.zshrc
source ~/.zshrc
## kubectlの保管
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
source ~/.zshrc
```


