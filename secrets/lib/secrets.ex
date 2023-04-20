defmodule Secrets do
  import Bitwise

  @spec secret_add(integer) :: (integer -> integer)
  def secret_add(secret) do
    &(&1 + secret)

  end

  @spec secret_subtract(integer) :: (integer -> integer)
  def secret_subtract(secret) do
    &(&1 - secret)

  end

  @spec secret_multiply(integer) :: (integer -> integer)
  def secret_multiply(secret) do
    &(&1 * secret)

  end

  @spec secret_divide(number) :: (number -> integer)
  def secret_divide(secret) do
    &(div(&1, secret))

  end

  @spec secret_and(integer) :: (integer -> integer)
  def secret_and(secret) do
    &(band(&1, secret))
  end

  @spec secret_xor(integer) :: (integer -> integer)
  def secret_xor(secret) do
    &(bxor(&1, secret))
  end

  @spec secret_combine(function, function) :: (integer -> integer)
  def secret_combine(secret_function1, secret_function2) do
    fn params ->
      params
      |> secret_function1.()
      |> secret_function2.()
    end
  end
end
