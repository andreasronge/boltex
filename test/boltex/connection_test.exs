defmodule Boltex.ConnectionTest do
  use ExUnit.Case

  alias Boltex.Connection

  test "#parse_ip_or_hostname/1" do
    assert Connection.parse_ip_or_hostname("testme.net")  == 'testme.net'
    assert Connection.parse_ip_or_hostname("192.168.0.1") == {192, 168, 0, 1}
    assert Connection.parse_ip_or_hostname({192, 168, 99, 100}) == {192, 168, 99, 100}
  end
end