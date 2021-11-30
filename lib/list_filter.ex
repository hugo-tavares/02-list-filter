require Integer

defmodule ListFilter do
  def call(list) do
    Enum.count(
      Enum.filter(list, fn elem ->is_int(elem) and Integer.is_odd(String.to_integer(elem)) end)
    )
  end

  def is_int(elem) do
    try do
      _ = String.to_integer(elem)
      true
    rescue
      ArgumentError ->
        false
    end
  end
end
