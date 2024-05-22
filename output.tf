output namespace {
  description = "Outputs namespsce info"
  value = kubernetes_namespace.example.metadata[0].name
}