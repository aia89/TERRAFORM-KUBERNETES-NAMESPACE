resource "kubernetes_namespace" "example" {
  metadata {
    name = var.name
    annotations = var.annotations
    labels = var.labels
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

