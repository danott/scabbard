var Bible = [
  { "order": 1, "short": "gen", "name": "Genesis", "chapters": 50, "counts": [ 31, 25, 24, 26, 32, 22, 24, 22, 29, 32, 32, 20, 18, 24, 21, 16, 27, 33, 38, 18, 34, 24, 20, 67, 34, 35, 46, 22, 35, 43, 54, 33, 20, 31, 29, 43, 36, 30, 23, 23, 57, 38, 34, 34, 28, 34, 31, 22, 33, 26 ] },
  { "order": 2, "short": "exo", "name": "Exodus", "chapters": 40, "counts": [ 22, 25, 22, 31, 23, 30, 29, 28, 35, 29, 10, 51, 22, 31, 27, 36, 16, 27, 25, 26, 37, 30, 33, 18, 40, 37, 21, 43, 46, 38, 18, 35, 23, 35, 35, 38, 29, 31, 43, 38 ] },
  { "order": 3, "short": "lev", "name": "Leviticus", "chapters": 27, "counts": [ 17, 16, 17, 35, 26, 23, 38, 36, 24, 20, 47, 8, 59, 57, 33, 34, 16, 30, 37, 27, 24, 33, 44, 23, 55, 46, 34 ] },
  { "order": 4, "short": "num", "name": "Numbers", "chapters": 36, "counts": [ 54, 34, 51, 49, 31, 27, 89, 26, 23, 36, 35, 16, 33, 45, 41, 35, 28, 32, 22, 29, 35, 41, 30, 25, 19, 65, 23, 31, 39, 17, 54, 42, 56, 29, 34, 13 ] },
  { "order": 5, "short": "deu", "name": "Deuteronomy", "chapters": 34, "counts": [ 46, 37, 29, 49, 33, 25, 26, 20, 29, 22, 32, 31, 19, 29, 23, 22, 20, 22, 21, 20, 23, 29, 26, 22, 19, 19, 26, 69, 28, 20, 30, 52, 29, 12 ] },
  { "order": 6, "short": "jos", "name": "Judges", "chapters": 21, "counts": [ 36, 23, 31, 24, 31, 40, 25, 35, 57, 18, 40, 15, 25, 20, 20, 31, 13, 31, 30, 48, 25 ] },
  { "order": 7, "short": "jdg", "name": "Ruth", "chapters": 4, "counts": [ 22, 23, 18, 22 ] },
  { "order": 8, "short": "rut", "name": "1 Samuel", "chapters": 31, "counts": [ 28, 36, 21, 22, 12, 21, 17, 22, 27, 27, 15, 25, 23, 52, 35, 23, 58, 30, 24, 42, 16, 23, 28, 23, 43, 25, 12, 25, 11, 31, 13 ] },
  { "order": 9, "short": "1sa", "name": "2 Samuel", "chapters": 24, "counts": [ 27, 32, 39, 12, 25, 23, 29, 18, 13, 19, 27, 31, 39, 33, 37, 23, 29, 32, 44, 26, 22, 51, 39, 25 ] },
  { "order": 10, "short": "2sa", "name": "1 Kings", "chapters": 22, "counts": [ 53, 46, 28, 20, 32, 38, 51, 66, 28, 29, 43, 33, 34, 31, 34, 34, 24, 46, 21, 43, 29, 54 ] },
  { "order": 11, "short": "1ki", "name": "2 Kings", "chapters": 25, "counts": [ 18, 25, 27, 44, 27, 33, 20, 29, 37, 36, 20, 22, 25, 29, 38, 20, 41, 37, 37, 21, 26, 20, 37, 20, 30 ] },
  { "order": 12, "short": "2ki", "name": "1 Chronicles", "chapters": 29, "counts": [ 54, 55, 24, 43, 41, 66, 40, 40, 44, 14, 47, 41, 14, 17, 29, 43, 27, 17, 19, 8, 30, 19, 32, 31, 31, 32, 34, 21, 30 ] },
  { "order": 13, "short": "1ch", "name": "2 Chronicles", "chapters": 36, "counts": [ 18, 17, 17, 22, 14, 42, 22, 18, 31, 19, 23, 16, 23, 14, 19, 14, 19, 34, 11, 37, 20, 12, 21, 27, 28, 23, 9, 27, 36, 27, 21, 33, 25, 33, 26, 23 ] },
  { "order": 14, "short": "2ch", "name": "Ezra", "chapters": 10, "counts": [ 11, 70, 13, 24, 17, 22, 28, 36, 15, 44 ] },
  { "order": 15, "short": "ezr", "name": "Nehemiah", "chapters": 13, "counts": [ 11, 20, 38, 17, 19, 19, 72, 18, 37, 40, 36, 47, 31 ] },
  { "order": 16, "short": "neh", "name": "Judith", "chapters": 16, "counts": [ 16, 28, 10, 15, 24, 21, 32, 36, 14, 23, 23, 20, 20, 19, 14, 25 ] },
  { "order": 17, "short": "est", "name": "Esther", "chapters": 16, "counts": [ 22, 23, 15, 17, 14, 14, 10, 17, 32, 3, 17, 8, 30, 16, 24, 10 ] },
  { "order": 18, "short": "job", "name": "Job", "chapters": 42, "counts": [ 22, 13, 26, 21, 27, 30, 21, 22, 35, 22, 20, 25, 28, 22, 35, 22, 16, 21, 29, 29, 34, 30, 17, 25, 6, 14, 21, 28, 25, 31, 40, 22, 33, 37, 16, 33, 24, 41, 30, 32, 26, 17 ] },
  { "order": 19, "short": "psa", "name": "Psalms", "chapters": 150, "counts": [ 6, 11, 9, 9, 13, 11, 18, 10, 21, 18, 7, 9, 6, 7, 5, 11, 15, 51, 15, 10, 14, 32, 6, 10, 22, 11, 14, 9, 11, 13, 25, 11, 22, 23, 28, 13, 40, 23, 14, 18, 14, 12, 5, 27, 18, 12, 10, 15, 21, 23, 21, 11, 7, 9, 24, 14, 12, 12, 18, 14, 9, 13, 12, 11, 14, 20, 8, 36, 37, 6, 24, 20, 28, 23, 11, 13, 21, 72, 13, 20, 17, 8, 19, 13, 14, 17, 7, 19, 53, 17, 16, 16, 5, 23, 11, 13, 12, 9, 9, 5, 8, 29, 22, 35, 45, 48, 43, 14, 31, 7, 10, 10, 9, 8, 18, 19, 2, 29, 176, 7, 8, 9, 4, 8, 5, 6, 5, 6, 8, 8, 3, 18, 3, 3, 21, 26, 9, 8, 24, 14, 10, 8, 12, 15, 21, 10, 20, 14, 9, 6 ] },
  { "order": 20, "short": "pro", "name": "Proverbs", "chapters": 31, "counts": [ 33, 22, 35, 27, 23, 35, 27, 36, 18, 32, 31, 28, 25, 35, 33, 33, 28, 24, 29, 30, 31, 29, 35, 34, 28, 28, 27, 28, 27, 33, 31 ] },
  { "order": 21, "short": "ecc", "name": "Ecclesiastes", "chapters": 12, "counts": [ 18, 26, 22, 17, 19, 12, 29, 17, 18, 20, 10, 14 ] },
  { "order": 22, "short": "sng", "name": "Song of Solomon", "chapters": 8, "counts": [ 17, 17, 11, 16, 16, 12, 14, 14 ] },
  { "order": 23, "short": "isa", "name": "Isaiah", "chapters": 66, "counts": [ 31, 22, 26, 6, 30, 13, 25, 23, 20, 34, 16, 6, 22, 32, 9, 14, 14, 7, 25, 6, 17, 25, 18, 23, 12, 21, 13, 29, 24, 33, 9, 20, 24, 17, 10, 22, 38, 22, 8, 31, 29, 25, 28, 28, 25, 13, 15, 22, 26, 11, 23, 15, 12, 17, 13, 12, 21, 14, 21, 22, 11, 12, 19, 11, 25, 24 ] },
  { "order": 24, "short": "jer", "name": "Jeremiah", "chapters": 52, "counts": [ 19, 37, 25, 31, 31, 30, 34, 23, 25, 25, 23, 17, 27, 22, 21, 21, 27, 23, 15, 18, 14, 30, 40, 10, 38, 24, 22, 17, 32, 24, 40, 44, 26, 22, 19, 32, 21, 28, 18, 16, 18, 22, 13, 30, 5, 28, 7, 47, 39, 46, 64, 34 ] },
  { "order": 25, "short": "lam", "name": "Lamentations", "chapters": 5, "counts": [ 22, 22, 66, 22, 22 ] },
  { "order": 26, "short": "ezk", "name": "Ezekiel", "chapters": 48, "counts": [ 28, 10, 27, 17, 17, 14, 27, 18, 11, 22, 25, 28, 23, 23, 8, 63, 24, 32, 14, 44, 37, 31, 49, 27, 17, 21, 36, 26, 21, 26, 18, 32, 33, 31, 15, 38, 28, 23, 29, 49, 26, 20, 27, 31, 25, 24, 23, 35 ] },
  { "order": 27, "short": "dan", "name": "Daniel", "chapters": 14, "counts": [ 21, 49, 100, 34, 30, 29, 28, 27, 27, 21, 45, 13, 64, 42 ] },
  { "order": 28, "short": "hos", "name": "Hosea", "chapters": 14, "counts": [ 9, 25, 5, 19, 15, 11, 16, 14, 17, 15, 11, 15, 15, 10 ] },
  { "order": 29, "short": "jol", "name": "Joel", "chapters": 4, "counts": [ 20, 27, 5, 21 ] },
  { "order": 30, "short": "amo", "name": "Amos", "chapters": 9, "counts": [ 15, 16, 15, 13, 27, 14, 17, 14, 15 ] },
  { "order": 31, "short": "oba", "name": "Obadiah", "chapters": 1, "counts": [ 21 ] },
  { "order": 32, "short": "jon", "name": "Jonah", "chapters": 4, "counts": [ 16, 11, 10, 11 ] },
  { "order": 33, "short": "mic", "name": "Micah", "chapters": 7, "counts": [ 16, 13, 12, 14, 14, 16, 20 ] },
  { "order": 34, "short": "nam", "name": "Nahum", "chapters": 3, "counts": [ 14, 14, 19 ] },
  { "order": 35, "short": "hab", "name": "Habakkuk", "chapters": 3, "counts": [ 17, 20, 19 ] },
  { "order": 36, "short": "zep", "name": "Zephaniah", "chapters": 3, "counts": [ 18, 15, 20 ] },
  { "order": 37, "short": "hag", "name": "Haggai", "chapters": 2, "counts": [ 15, 23 ] },
  { "order": 38, "short": "zec", "name": "Zechariah", "chapters": 14, "counts": [ 17, 17, 10, 14, 11, 15, 14, 23, 17, 12, 17, 14, 9, 21 ] },
  { "order": 39, "short": "mal", "name": "Malachi", "chapters": 3, "counts": [ 14, 17, 24 ] },
  { "order": 40, "short": "mat", "name": "Matthew", "chapters": 28, "counts": [ 25, 23, 17, 25, 48, 34, 29, 34, 38, 42, 30, 50, 58, 36, 39, 28, 27, 35, 30, 34, 46, 46, 39, 51, 46, 75, 66, 20 ]},
  { "order": 41, "short": "mrk", "name": "Mark", "chapters": 16, "counts": [ 45, 28, 35, 41, 43, 56, 37, 38, 50, 52, 33, 44, 37, 72, 47, 20 ]},
  { "order": 42, "short": "lke", "name": "Luke", "chapters": 24, "counts": [ 80, 52, 38, 44, 39, 49, 50, 56, 62, 42, 54, 59, 35, 35, 32, 31, 37, 43, 48, 47, 38, 71, 56, 53 ]},
  { "order": 43, "short": "jhn", "name": "John", "chapters": 21, "counts": [ 51, 25, 36, 54, 47, 71, 53, 59, 41, 42, 57, 50, 38, 31, 27, 33, 26, 40, 42, 31, 25 ]},
  { "order": 44, "short": "act", "name": "Acts", "chapters": 28, "counts": [ 26, 47, 26, 37, 42, 15, 60, 40, 43, 48, 30, 25, 52, 28, 41, 40, 34, 28, 40, 38, 40, 30, 35, 27, 27, 32, 44, 31 ]},
  { "order": 45, "short": "rom", "name": "Romans", "chapters": 16, "counts": [ 32, 29, 31, 25, 21, 23, 25, 39, 33, 21, 36, 21, 14, 23, 33, 27 ]},
  { "order": 46, "short": "1co", "name": "1 Corinthians", "chapters": 16, "counts": [ 31, 16, 23, 21, 13, 20, 40, 13, 27, 33, 34, 31, 13, 40, 58, 24 ]},
  { "order": 47, "short": "2co", "name": "2 Corinthians", "chapters": 13, "counts": [ 24, 17, 18, 18, 21, 18, 16, 24, 15, 18, 33, 21, 13 ]},
  { "order": 48, "short": "gal", "name": "Galatians", "chapters": 6, "counts": [ 24, 21, 29, 31, 26, 18 ]},
  { "order": 49, "short": "eph", "name": "Ephesians", "chapters": 6, "counts": [ 23, 22, 21, 32, 33, 24 ]},
  { "order": 50, "short": "php", "name": "Philippians", "chapters": 4, "counts": [ 30, 30, 21, 23 ]},
  { "order": 51, "short": "col", "name": "Colossians", "chapters": 4, "counts": [ 29, 23, 25, 18 ]},
  { "order": 52, "short": "1th", "name": "1 Thessalonians", "chapters": 5, "counts": [ 10, 20, 13, 18, 28 ]},
  { "order": 53, "short": "2th", "name": "2 Thessalonians", "chapters": 3, "counts": [ 12, 17, 18 ]},
  { "order": 54, "short": "1ti", "name": "1 Timothy", "chapters": 6, "counts": [ 20, 15, 16, 16, 25, 21 ]},
  { "order": 55, "short": "2ti", "name": "2 Timothy", "chapters": 4, "counts": [ 18, 26, 17, 22 ]},
  { "order": 56, "short": "tit", "name": "Titus", "chapters": 3, "counts": [ 16, 15, 15 ]},
  { "order": 57, "short": "phm", "name": "Philemon", "chapters": 1, "counts": [ 25 ]},
  { "order": 58, "short": "heb", "name": "Hebrews", "chapters": 13, "counts": [ 14, 18, 19, 16, 14, 20, 28, 13, 28, 39, 40, 29, 25 ]},
  { "order": 59, "short": "jas", "name": "James", "chapters": 5, "counts": [ 27, 26, 18, 17, 20 ]},
  { "order": 60, "short": "1pe", "name": "1 Peter", "chapters": 5, "counts": [ 25, 25, 22, 19, 14 ]},
  { "order": 61, "short": "2pe", "name": "2 Peter", "chapters": 3, "counts": [ 21, 22, 18 ]},
  { "order": 62, "short": "1jn", "name": "1 John", "chapters": 5, "counts": [ 10, 29, 24, 21, 21 ]},
  { "order": 63, "short": "2jn", "name": "2 John", "chapters": 1, "counts": [ 13 ]},
  { "order": 64, "short": "3jn", "name": "3 John", "chapters": 1, "counts": [ 15 ]},
  { "order": 65, "short": "jud", "name": "Jude", "chapters": 1, "counts": [ 25 ]},
  { "order": 66, "short": "rev", "name": "Revelation", "chapters": 22, "counts": [ 20, 29, 22, 11, 14, 17, 17, 13, 21, 11, 19, 17, 18, 20, 8, 21, 18, 24, 21, 15, 27, 21 ]}
]

var findBookByName = function(name) {
  var regExp = new RegExp(`^${name}`, "i")
  return Bible.filter((book) => regExp.test(book.name.toLowerCase()))[0]
}

function parseReference(string) {
  const parts = string.replace(/[:-]/g, " ").split(" ").filter((s) => s.length > 0)
  let book = parts.shift() || null

  if (parseInt(book)) {
    book = `${book} ${parts.shift()}`
  }

  const chapter = parseInt(parts.shift(), 10) || null
  const verseStart = parseInt(parts.shift(), 10) || null
  const verseEnd = parseInt(parts.shift(), 10) || null

  return { book, chapter, verseStart, verseEnd }
}

function suggestions(string) {
  const reference = parseReference(string)
  const book = findBookByName(reference.book)
  let normalized, suggesting, suggestions

  normalized = null
  suggesting = null
  suggestions = []

  if (book && !reference.verseEnd) {
    if (reference.verseStart) {
      normalized = `${book.name} ${reference.chapter}:${reference.verseStart}`
      suggesting = "verseEnd"
      suggestions = Array.apply(null, Array(book.counts[reference.chapter - 1] - reference.verseStart)).map((item, index) => {
        const verseEnd = reference.verseStart + index + 1
        return {
          normalized: `${book.name} ${reference.chapter}:${reference.verseStart}-${verseEnd}`,
          abbreviated: verseEnd.toString()
        }
      })
    } else if (reference.chapter) {
      normalized = `${book.name} ${reference.chapter}`
      suggesting = "verseStart"
      suggestions = Array.apply(null, Array(book.counts[reference.chapter - 1])).map((item, index) => {
        const verseStart = index + 1
        return {
          normalized: `${book.name} ${reference.chapter}:${verseStart}`,
          abbreviated: verseStart.toString()
        }
      })
    } else {
      normalized = book.name
      suggesting = "chapter"
      suggestions = book.counts.map((item, index) => {
        const chapter = index + 1
        return { normalized: `${book.name} ${chapter}`, abbreviated: chapter.toString() }
      })
    }
  }

  return { normalized, suggesting, suggestions }
}
