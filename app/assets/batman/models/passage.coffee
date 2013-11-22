class Scabbard.Passage extends Batman.Model
  @resourceName: 'passages'
  @storageKey: 'passages'
  @primaryKey: 'sha'
  @persist Scabbard.LocalStorage

  @encode 'title'
  @encode 'html'
