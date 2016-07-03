//= require bible.js

test("suggestions when there's nothing present", function() {
  var expected = {
    normalized: null,
    suggesting: null,
    suggestions: [],
  }
  assert.deepEqual(expected, suggestions(""))
})

test("suggesting a chapter from a book", function() {
  var expected = {
    normalized: "James",
    suggesting: "chapter",
    suggestions: [
      { normalized: "James 1", abbreviated: "1"},
      { normalized: "James 2", abbreviated: "2"},
      { normalized: "James 3", abbreviated: "3"},
      { normalized: "James 4", abbreviated: "4"},
      { normalized: "James 5", abbreviated: "5"},
    ]
  }
  var actual = suggestions("jam")
  assert.deepEqual(expected, actual)
})

test("suggesting a verse from a chapter", function() {
  var expected = {
    normalized: "Zechariah 3",
    suggesting: "verseStart",
    suggestions: [
      { normalized: "Zechariah 3:1", abbreviated: "1"},
      { normalized: "Zechariah 3:2", abbreviated: "2"},
      { normalized: "Zechariah 3:3", abbreviated: "3"},
      { normalized: "Zechariah 3:4", abbreviated: "4"},
      { normalized: "Zechariah 3:5", abbreviated: "5"},
      { normalized: "Zechariah 3:6", abbreviated: "6"},
      { normalized: "Zechariah 3:7", abbreviated: "7"},
      { normalized: "Zechariah 3:8", abbreviated: "8"},
      { normalized: "Zechariah 3:9", abbreviated: "9"},
      { normalized: "Zechariah 3:10", abbreviated: "10"},
    ]
  }
  var actual = suggestions("zech 3")
  assert.deepEqual(expected, actual)
})

test("suggesting an ending verse from a starting verse", function() {
  var expected = {
    normalized: "Zechariah 3:8",
    suggesting: "verseEnd",
    suggestions: [
      { normalized: "Zechariah 3:8-9", abbreviated: "9"},
      { normalized: "Zechariah 3:8-10", abbreviated: "10"},
    ]
  }
  var actual = suggestions("zech 3:8")
  assert.deepEqual(expected, actual)
})

test("suggesting when a full reference is present", function () {
  var expected = {
    normalized: null,
    suggesting: null,
    suggestions: [],
  }
  var actual = suggestions("zech 3:8-9")
  assert.deepEqual(expected, actual)
})

test("parsing a reference", function() {
  const subject = parseReference
  assert.deepEqual({ book: "1 John", chapter: 2, verseStart: 4, verseEnd: 9 }, subject("1 John 2:4-9"))
  assert.deepEqual({ book: "John", chapter: 3, verseStart: 16, verseEnd: null }, subject("John 3:16"))
  assert.deepEqual({ book: "Job", chapter: 14, verseStart: null, verseEnd: null }, subject("Job 14:"))
  assert.deepEqual({ book: "Bluth", chapter: 20, verseStart: null, verseEnd: null }, subject("Bluth 20"))
  assert.deepEqual({ book: "Lucille", chapter: null, verseStart: null, verseEnd: null }, subject("Lucille "))
  assert.deepEqual({ book: "Buster", chapter: null, verseStart: null, verseEnd: null }, subject("Buster"))
})
