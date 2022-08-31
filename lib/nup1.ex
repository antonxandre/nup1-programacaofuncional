defmodule Calculadora do
  def potencia(numero, potencia), do:  numero ** potencia

  def fatorial(0), do: 1
  def fatorial(n) when n > 0, do: n * fatorial(n - 1)
  def percentual(numero, percentual), do:  percentual * 100 / numero

end

defmodule Segunda do
  def maiorDaLista(numeros) do
    maiorNumero = Enum.max(numeros)
    posicao = Enum.find_index(numeros, fn x -> x == maiorNumero end)
    {maiorNumero, posicao}
  end
end

defmodule Terceira do
  def maisJovem(pessoas) do
    nomes = Enum.map(pessoas, fn x -> elem(x, 0) end)
    idades = Enum.map(pessoas, fn x -> elem(x, 1) end)
    idadeDaPessoaMaisJovem = Enum.min(idades)
    posicaoPessoaMaisJovem = Enum.find_index(idades, fn x -> x == idadeDaPessoaMaisJovem end)
    nomePessoaMaisJovem = Enum.at(nomes, posicaoPessoaMaisJovem)
    nomePessoaMaisJovem
  end

  def maioresQueTrinta(pessoas) do
    Enum.filter(pessoas, fn x -> elem(x, 1) >= 30 end)
    |> Enum.count()
  end

  def listaPessoasIdadePar(pessoas) do
    Enum.filter(pessoas, fn x -> rem(elem(x, 1), 2) != 0 end)
  end
end

defmodule Quarta do
  def unir(lista1, lista2) do
    lista1 ++ lista2
  end

  def intersectar(lista1, lista2) do
    lista1 -- lista2
  end
end



IO.inspect(Quarta.intersectar([true,false,true,true,false,false],[true]))
