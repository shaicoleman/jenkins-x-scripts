# Scripts to try out Jenkins-X on GKE

### Install Google Cloud SDK
* https://cloud.google.com/sdk/docs/quickstarts

### Download tools for Linux (Helm/Jenkins/Skaffold)
`./download_tools_linux.sh`

### Generate GitHub token
`./generate_github_token.sh`

### Edit configuration
Copy `config.sh.example` to `config.sh` and edit it

### Create GKE cluster
`./create_gke_cluster.sh`

### Install Jenkins-X
`./install_jx_and_helm.sh`
