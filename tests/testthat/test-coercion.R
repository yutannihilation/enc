context("coercion")

test_that("coercion in", {
  expect_identical(as.utf8("a"), utf8("a"))
  expect_identical(as.utf8("ä"), utf8("ä"))
  expect_identical(as.utf8(1), utf8("1"))
  expect_identical(as.utf8(FALSE), utf8("FALSE"))
})

test_that("coercion out", {
  expect_identical(as.character(utf8("ä")), "ä")
  expect_identical(as.utf8(utf8("ä")), utf8("ä"))
})