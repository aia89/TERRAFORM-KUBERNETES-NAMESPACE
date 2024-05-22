resource "kubernetes_namespace" "example" {
  metadata {
    name = var.name
    annotations = var.annotations
    labels = var.labels
  }
} 

resource "kubernetes_resource_quota" "example" {
  metadata {
    name = "pod-quota"
    namespace = kubernetes_namespace.example.metadata[0].name
  }
  spec {
    hard = {
      pods = var.pod_quota
    }
    scopes = ["BestEffort"]
  }
}

resource "kubernetes_limit_range" "example" {
  metadata {
    name = "terraform-example"
    namespace = kubernetes_namespace.example.metadata[0].name
  
  
  

  }
  spec {
    limit {
      type = "Pod"
      max = {
        cpu    = "2096m"
        memory = "4Gi"
      }
    }
  }
}







/* module testns {  #u can put a module code from module registry and paste it in yout code
    source = "aia89/namespace/kubernetes
    name = "testns"
    annotations = {
      new = "application"
    }
    labels = {
      createdby = "aia89"
    }
} */

