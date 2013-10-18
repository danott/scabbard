class Scabbard.Reference extends Batman.Model
  @resourceName: 'references'
  @storageKey: 'references'
  @primaryKey: 'sha'
  @persist Scabbard.LocalStorage

  @encode 'title'
  @encode 'html'
