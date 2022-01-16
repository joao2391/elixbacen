defmodule Elixbacen do
  @moduledoc """
  Documentation for `Elixbacen`.
  """

  alias Elixbacen.Item
  alias Elixbacen.Ranking
  alias Elixbacen.ItemReclamacao
  alias Elixbacen.RankingReclamacao
  alias Elixbacen.RankingAdmConsorcio

  @url_bacen "https://www3.bcb.gov.br/ranking/"
  @doc """
  Retorna as 03 instituicoe financeiras listadas no Top 10 de reclamacoes do BACEN.

  """
  def get_top03_bancos() do
    case HTTPoison.get(@url_bacen) do
      {:ok, %{body: raw_body, status_code: code}} -> {code, raw_body}
      html = raw_body
      {:ok, document} = Floki.parse_document(html)

      lista =
        document
        |> Floki.find(".clearfix")
        |> Floki.find("tbody")
        |> Floki.find("span#lblColunaSemLink")
        |> Enum.map(fn {_chave, _valor1, valor2} -> valor2
                    |> Enum.at(0)
                    |> String.trim() end)

      posicao1 = lista |> Enum.at(0)
      if1 = lista |> Enum.at(1)
      rank1 = lista |> Enum.at(2)

      posicao2 = lista |> Enum.at(3)
      if2 = lista |> Enum.at(4)
      rank2 = lista |> Enum.at(5)

      posicao3 = lista |> Enum.at(6)
      if3 = lista |> Enum.at(7)
      rank3 = lista |> Enum.at(8)


      top1 = %Item{posicao: posicao1, instituicao: if1, ranking: rank1}
      top2 = %Item{posicao: posicao2, instituicao: if2, ranking: rank2}
      top3 = %Item{posicao: posicao3, instituicao: if3, ranking: rank3}

      list = [top1, top2, top3]

      ranking = %Ranking{lista_instituicao_financeira: list}

      ranking

      {:error, %{reason: reason}} -> {:error, reason}
    end
  end

  @doc """
  Retorna as 03 instituicoe financeiras listadas no ranking de reclamacoes do BACEN

  """
  def get_top03_demaisbancos() do
    case HTTPoison.get(@url_bacen) do
      {:ok, %{body: raw_body, status_code: code}} -> {code, raw_body}
      html = raw_body
      {:ok, document} = Floki.parse_document(html)

      lista =
        document
        |> Floki.find("tbody")
        |> Enum.at(1)
        |> Floki.find("span#lblColunaSemLink")
        |> Enum.map(fn {_chave, _valor1, valor2} -> valor2
                   |> Enum.at(0)
                   |> String.trim() end)

      posicao1 = lista |> Enum.at(0)
      if1 = lista |> Enum.at(1)
      rank1 = lista |> Enum.at(2)

      posicao2 = lista |> Enum.at(3)
      if2 = lista |> Enum.at(4)
      rank2 = lista |> Enum.at(5)

      posicao3 = lista |> Enum.at(6)
      if3 = lista |> Enum.at(7)
      rank3 = lista |> Enum.at(8)

      top1 = %Item{posicao: posicao1, instituicao: if1, ranking: rank1}
      top2 = %Item{posicao: posicao2, instituicao: if2, ranking: rank2}
      top3 = %Item{posicao: posicao3, instituicao: if3, ranking: rank3}

      list = [top1, top2, top3]

      ranking = %Ranking{lista_instituicao_financeira: list}

      ranking

      {:error, %{reason: reason}} -> {:error, reason}
    end
  end

  @doc """
  Retorna as 03 reclamacoes listadas no ranking do BACEN

  """
  def get_top03_reclamacoes() do
    case HTTPoison.get(@url_bacen) do
      {:ok, %{body: raw_body, status_code: code}} -> {code, raw_body}
      html = raw_body
      {:ok, document} = Floki.parse_document(html)

      lista =
        document
        |> Floki.find("tbody")
        |> Enum.at(2)
        |> Floki.find("span#lblColunaSemLink")
        |> Enum.map(fn {_chave, _valor1, valor2} -> valor2
                  |> Enum.at(0)
                  |> String.trim() end)

      posicao1 = lista |> Enum.at(0)
      if1 = lista |> Enum.at(1)

      posicao2 = lista |> Enum.at(2)
      if2 = lista |> Enum.at(3)

      posicao3 = lista |> Enum.at(4)
      if3 = lista |> Enum.at(5)

      top1 = %ItemReclamacao{posicao: posicao1, motivo: if1}
      top2 = %ItemReclamacao{posicao: posicao2, motivo: if2}
      top3 = %ItemReclamacao{posicao: posicao3, motivo: if3}

      list = [top1, top2, top3]

      ranking = %RankingReclamacao{lista_reclamacoes: list}

      ranking

      {:error, %{reason: reason}} -> {:error, reason}
    end
  end

  @doc """
  Retorna as 03 administradoras de consorcio listadas no ranking de reclamacoes do BACEN

  """
  def get_top03_administradoras_consorcio() do
    case HTTPoison.get(@url_bacen) do
      {:ok, %{body: raw_body, status_code: code}} -> {code, raw_body}
      html = raw_body
      {:ok, document} = Floki.parse_document(html)

      lista =
        document
        |> Floki.find("tbody")
        |> Enum.at(3)
        |> Floki.find("span#lblColunaSemLink")
        |> Enum.map(fn {_chave, _valor1, valor2} -> valor2
                   |> Enum.at(0)
                   |> String.trim() end)

      posicao1 = lista |> Enum.at(0)
      if1 = lista |> Enum.at(1)
      rank1 = lista |> Enum.at(2)

      posicao2 = lista |> Enum.at(3)
      if2 = lista |> Enum.at(4)
      rank2 = lista |> Enum.at(5)

      posicao3 = lista |> Enum.at(6)
      if3 = lista |> Enum.at(7)
      rank3 = lista |> Enum.at(8)

      top1 = %Item{posicao: posicao1, instituicao: if1, ranking: rank1}
      top2 = %Item{posicao: posicao2, instituicao: if2, ranking: rank2}
      top3 = %Item{posicao: posicao3, instituicao: if3, ranking: rank3}

      list = [top1, top2, top3]

      ranking = %RankingAdmConsorcio{lista_instituicao: list}

      ranking

      {:error, %{reason: reason}} -> {:error, reason}
    end
  end

end
