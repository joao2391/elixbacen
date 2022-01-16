defmodule ElixbacenTest do
  use ExUnit.Case
  doctest Elixbacen

  test "retorna 03 itens da lista de bancos" do
    assert Elixbacen.get_top03_bancos().lista_instituicao_financeira
            |> Enum.count() >= 0
  end

  test "retorna 03 itens da lista de demais bancos" do
    assert Elixbacen.get_top03_demaisbancos().lista_instituicao_financeira
            |> Enum.count() >= 0
  end

  test "retorna 03 itens da lista de reclamacoes" do
    assert Elixbacen.get_top03_reclamacoes().lista_reclamacoes
            |> Enum.count() >= 0
  end

  test "retorna 03 itens da lista de adm consorcio" do
    assert Elixbacen.get_top03_administradoras_consorcio().lista_instituicao
            |> Enum.count() >= 0
  end

end
