def isbn_verify?(isbn_string)
  isbn = isbn_string.gsub('-', '').upcase
  return false unless isbn.match? /^[0-9]{9}[0-9X]$/

  map = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'X' => 10
  }

  sum = 0
  10.times do |index|
    sum += (10-index) * map[isbn[index]]
  end

  return (sum % 11 == 0)
end