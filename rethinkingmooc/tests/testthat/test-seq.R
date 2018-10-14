context("test-seq.R")

test_that("first works for vectors", {
  expect_equal(first(c(1,2,3,4)), 1)
})

test_that("first works for lists", {
  expect_equal(first(list(1,2,3,4)), 1)
})

test_that("rest works for vectors", {
  expect_equal(
    rest(c(1,2,3,4)),
    c(2,3,4))
})

test_that("rest works for lists", {
  expect_equal(
    rest(list(1,2,3,4)),
    list(2,3,4))
})

test_that("nth works for vectors", {
  expect_equal(nth(c(1,2,3,4), 2), 2)
})

test_that("nth works for lists", {
  expect_equal(nth(list(1,2,3,4), 2), 2)
})
