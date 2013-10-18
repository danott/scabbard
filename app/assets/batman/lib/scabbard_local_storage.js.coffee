class Scabbard.LocalStorage extends Batman.LocalStorage
  storageRegExpForRecord: (record) -> new RegExp("^#{@storageKey(record)}([\\da-f]+)$")
