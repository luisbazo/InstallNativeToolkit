module "dev_tools_swagger" {
  source = "github.com/cloud-native-toolkit/terraform-tools-swaggereditor.git?ref=v1.5.1"

  cluster_ingress_hostname = module.dev_cluster.ingress_hostname
  cluster_config_file      = module.dev_cluster.config_file_path
  cluster_type             = module.dev_cluster.type_code
  tls_secret_name          = module.dev_cluster.tls_secret_name
  releases_namespace       = module.dev_tools_namespace.name
  enable_sso               = true
}
