## 1

O ficheiro [Paises_PIB_ICH.csv](https://web.tecnico.ulisboa.pt/~paulo.soares/pe/projeto/Paises_PIB_ICH.csv) contém um conjunto de dados com as seguintes variáveis:

 * **GDP**: PIB per capita ajustado ao custo de vida (estimativas do FMI em 2023, dólares internacionais) [GDP per capita adjusted for the cost of living (IMF estimates in 2023, international dollars)]

 * **HCI**: Índice de Capital Humano, índice calculado pelo Banco Mundial para medir a eficiência dos serviços de saúde e educação (valores entre 0 e 1, dados de 2020) [Human Capital Index, index computed by the World Bank to measure the efficiency of health and education services (values between 0 and 1, data from 2020)]

Após a leitura do ficheiro no R, selecione todos os países dos seguintes continentes: **Asia** e **Africa** (Nota: os nomes dos países e dos continentes estão em Inglês no ficheiro).

Com recurso ao pacote *ggplot2*, produza um único diagrama de dispersão que represente os valores do Índice de Capital Humano em função do PIB per capita e tal que:

1. seja possível identificar o continente a que cada país pertence;

2. o PIB esteja representado em escala logaritmica;

3. todos os paises sejam representados por um símbolo e, além disso, os seguintes países: United Arab Emirates, Nepal, Comoros e Namibia, apareçam representados pelo símbolo e identificados pelo nome.

Tenha em conta que o texto no ficheiro de dados se encontra em Inglês e, por simplicidade, mantenha todo o texto do gráfico nessa língua.

Submeta um ficheiro em formato PDF com uma única página A4 que contenha:

1. O código em R, incluindo os comandos para leitura dos dados do ficheiro e a construção do gráfico propriamente dito.

2. O gráfico produzido.

## 2

O ficheiro [master.csv](https://web.tecnico.ulisboa.pt/~paulo.soares/pe/projeto/master.csv) consiste de um conjunto de dados (obtidos no kaggle) sobre suicídios em 101 países, incluindo nomeadamente as variáveis:

    country – país (Portugal, Brasil, EUA, etc.),

    year – ano (1985, 1986,…, 2016),

    sex – sexo (masculino, feminino),

    age – grupo etário (5-14, 15-24, 25-34, 35-54, 55-74 e 75+ anos) e

    suicides/100k pop – número de suicídios por 100000 habitantes.

Após a leitura desse ficheiro no R, selecione os dados referentes ao ano de **2002** e ao grupo etário **55-74 years** (em Inglês no ficheiro).

Com recurso ao pacote *ggplot2*, produza um único gráfico com dois diagramas de extremos e quartis do número de suicídios por 100000 habitantes da população de cada país que permitam comparar homens e mulheres.

Tenha em conta que o texto no ficheiro de dados se encontra em Inglês e, por simplicidade, mantenha todo o texto do gráfico nessa língua.

Submeta um ficheiro em formato PDF com uma única página A4, que inclua:

1. O código em R, que deve incluir os comandos para leitura e seleção dos dados do ficheiro.

2. O gráfico produzido.

## 3

O ficheiro [electricity.xlsx](https://web.tecnico.ulisboa.pt/~paulo.soares/pe/projeto/electricity.xlsx) contém dados coletados pela Agência Internacional da Energia sobre a produção mensal de eletricidade desde 2010 até 2022 em vários países. A energia produzida foi medida em gigawatt-horas (GWh) e é proveniente de diferentes fontes incluindo as produções hídrica, eólica, solar, geotérmica, nuclear e a partir de combustíveis fósseis, entre outras.

Recorrendo ao pacote *ggplot2*, produza um único gráfico que permita ilustrar a evolução mensal da **proporção** de energia elétrica produzida a partir de fontes renováveis (**Renewables**, no ficheiro) desde o início de 2015. O gráfico deve incluir os valores médios para todos os países incluídos (**IEA Total**, no ficheiro) e os países **Italy** e **Latvia** (em Inglês no ficheiro). O gráfico deve ter ainda as seguintes características:

* a proporção de energia elétrica produzida mensalmente a partir de fontes renováveis deve ser expressa em percentagem;

* a escala do eixo das ordenadas deve cobrir todo o intervalo $[0,100]$.

Tenha em conta que o texto no ficheiro de dados se encontra em Inglês e, por simplicidade, mantenha todo o texto do gráfico nessa língua.

Submeta um ficheiro em formato PDF com uma única página A4, que inclua:

1. O código em R, que deve incluir os comandos para leitura e seleção dos dados do ficheiro.

2. O gráfico produzido.

## 4

Um sistema é formado por $7$ circuitos eléctricos, em que cada um emite sinais codificados no conjunto $\{1,2,…,9\}$. Cada circuito emite o sinal i com probabilidade $\frac{i}{45}$, para $i ∈ \{1,2,…,9\}$, independentemente dos restantes circuitos. Se pelo menos um dos circuitos emitir o sinal 2 é produzido um aviso sonoro e, caso pelo menos um dos circuitos emita o sinal 1, o sistema é desligado.

Fixando a semente em $2336$, simule $650$ realizações do estado de um sistema com as características acima descritas e calcule a proporção de vezes em que é produzido um aviso sonoro num sistema que não é desligado. Essa proporção arredondada a 2 casas decimais é igual a:

Selecione uma opção:
    
    a.0.09
    
    b.0.98
    
    c.0.23
    
    d.0.29
    
    e.0.18

## 5

Sejam $(Z_1,Z_2,…,Z_{n+1})$ variáveis aleatórias independentes e com distribuição normal padrão. Prova-se que a variável aleatória,

$$
T = \frac{\sqrt{n} \cdot Z_1}{\sqrt{\sum_{i=2}^{n+1} Z_i^2}}
$$

tem uma distribuição *t*-Student com $n$ graus de liberdade.

Como confirmação empírica, pretende-se que avalie a probabilidade $p=P(T≤1.5)$, procedendo da seguinte forma:

* considere $n=23$ e, fixando a semente em $1950$, gere $r=300$ amostras formadas por $m=170$ valores de $T$, à custa da geração de variáveis normais padrão;

* para cada amostra gerada, determine a proporção de valores menores ou iguais a $1.5$ e, finalmente, calcule a média de essas proporções como uma aproximação de $p$.

Calcule o valor absoluto da diferença entre a aproximação anterior e o valor obtido através da função do R que permite calcular diretamente a probabilidade de uma variável aleatória com distribuição $t_{(23)}$ tomar valores menores ou iguais do que $1.5$. Multiplique o valor obtido por 100 e indique esse resultado final arredondado a 5 casas decimais.

## 6

Considere que $X_1,…,X_{40}$ são variáveis aleatórias independentes e identicamente distribuídas de acordo com uma distribuição exponencial com valor esperado $a=4$, onde $X_i$ denota a duração da componente eletrónica $i, i=1,...,40$.

Para o cálculo da fiabilidade da duração total das 40 componentes eletrónicas em 126, ou seja, o cálculo de $P(Y>126)$, onde $Y = \sum_{i=1}^{40} X_i$, considere as seguintes abordagens:

* **Valor simulado**: Fixando a semente em 1973, gere 1000 amostras de dimensão n=40 da distribuição exponencial referida e calcule quer o valor simulado de Y para cada uma das amostras quer a proporção de valores simulados de Y que são maiores do que 126.

* **Valor exato**: Sabendo que a distribuição exata de Y é uma distribuição gama com parâmetros de forma $40$ e de escala $\frac{1}{4}$, obtenha o valor da fiabilidade da duração total das 40 componentes eletrónicas em 126.

Obtenha a probabilidade em causa em cada uma das abordagens e indique o valor absoluto da diferença entre os resultados obtidos com base nas abordagens 1. e 2., multiplicado por 100 e com 4 casas decimais.

## 7

Um gestor de risco de uma companhia de seguros assume que o montante de indemnização (em milhares de euros) de determinada carteira de apólices é representado pela variável aleatória $X$ com função de densidade de probabilidade dada por $θx^{−θ−1}a^θ$, para $x≥a$, onde $a=4.5$ e $θ$ é um parâmetro com um valor positivo desconhecido relacionado com a ocorrência de indemnizações elevadas.

A concretização de uma amostra aleatória de dimensão $n=18$ proveniente de $X$ conduziu ao seguinte conjunto de observações:

$$
8.54,4.76,5.15,4.96,6.25,7.22,12.9,6.04,8.86,4.88,6.54,4.53,4.7,5.38,5.96,5.17,5.09,5.11
$$

1. Recorra à função *mle* do pacote base *stats4* para obter a estimativa de máxima verosimilhança de $θ$, usando o valor 3.4 como valor inicial da pesquisa numérica e sem alterar qualquer outro argumento opcional de tal função.

2. Utilize a estimativa obtida em 1. para determinar a estimativa de máxima verosimilhança do quantil de probabilidade $p=0.25$ de $X$.

Calcule o desvio absoluto entre a estimativa obtida em 2. e o verdadeiro valor do quantil, quando $θ=3.4$. Apresente o resultado com 4 casas decimais.

## 8

Uma engenheira mecânica assume que a distância (em metros) de travagem, ao utilizar-se determinadas pinças de travão, é uma variável aleatória $X$ com distribuição normal de valor esperado desconhecido $μ$ e variância desconhecida $σ^2$.

1. Fixando a semente em 1820, extraia ao acaso e sem reposição $n=8$ observações da seguinte amostra casual de distâncias de travagem em condições controladas:
$$
34.0,39.5,33.2,38.1,29.9,37.4,32.1,36.5,31.4,34.1,33.1,31.5,33.9,33.9
$$

2. Obtenha o intervalo de confiança a um nível de confiança $γ=0.95$ para $σ^2$ com base na amostra selecionada em 1. e nos quantis de probabilidade $$a = F_{\chi^2_{(n-1)}}^{-1} \left( \frac{1-\gamma}{2} \right)\quad\text{e}\quad b = F_{\chi^2_{(n-1)}}^{-1} \left( \frac{1+\gamma}{2} \right)$$.

3. De modo a minimizar a amplitude esperada do intervalo aleatório de confiança para $σ^2$ ao nível de confiança anterior, considere o par de quantis de probabilidade $(c,d)$ satisfazendo as duas equações seguintes:$$\begin{cases}F_{\chi^2_{(n-1)}}(d) - F_{\chi^2_{(n-1)}}(c) = \gamma \\f_{\chi^2_{(n+3)}}(d) - f_{\chi^2_{(n+3)}}(c) = 0\end{cases}$$ Para obter $(c,d)$ instale o pacote pracma e use a função *fsolve* considerando $(a,b)$ como o valor inicial da pesquisa numérica e sem utilizar qualquer outro argumento opcional dessa função.
Utilize estes quantis para determinar um novo intervalo de confiança para $σ^2$ com base nos mesmos dados usados em 2.

4. Indique o valor da diferença, arredondada a três casas decimais, entre as amplitudes dos intervalos de confiança calculados em 2. e 3.

## 9

Seja $(X_1,…,X_{100})$ uma amostra aleatória de uma população com distribuição de Poisson de parâmetro $λ$. Para testar a hipótese $H_0:λ=2.90$ contra $H_1:λ=3.15$ construiu-se um teste de hipóteses que conduz à rejeição de $H_0$ quando $\overline{X}$ com $k=3.234$.

Fixando a semente em $2822$, gere $m=5000$ pares de amostras de dimensão $n=100$ da distribuição de Poisson, uma sob $H_0$ e outra sob $H_1$ em cada par, e calcule as frequências relativas de cada um dos dois tipos de decisões erradas a que o teste conduz. Com base nos resultados obtidos, calcule um valor aproximado do quociente entre a probabilidade de erro de 2ª espécie e a probabilidade de erro de 1ª espécie. Selecione a resposta correta de entre as seguintes opções:

    a. 28.05
    b. 25.55
    c. 29.05
    d. 13.20
    e. 23.05

## 10

Seja $X$ o tempo, em horas, que uma dada tarefa demora a ser executada numa empresa. O director desta empresa considera que $X$ tem distribuição triangular simétrica com valor mínimo $a=4.5$ e valor máximo $b=13$, cuja função de distribuição é

$$
F_X(x) = 
\begin{cases}
0, & x < a \\
2 \left( \frac{x - a}{b - a} \right)^2, & a \leq x < \frac{a + b}{2} \\
1 - 2 \left( \frac{b - x}{b - a} \right)^2, & \frac{a + b}{2} \leq y < b \\
1, & x \geq b
\end{cases}
$$

Para testar a sua hipótese ($H_0$) o director colecionou $n=140$ tempos de execução da tarefa, retirados ao acaso do historial da empresa, o que conduziu aos seguintes resultados:

6.52, 5.48, 7.01, 7.07, 9.76, 7.45, 10.11, 8.78, 8.53, 7.14, 8.56, 8.22, 8.11, 8.72, 9.89, 12.01, 9.14, 7.26, 11.05, 12.14, 8.44, 10.98, 6.95, 11.37, 8.65, 11.03, 10.55, 8.77, 10.04, 9.70, 9.43, 8.91, 10.79, 12.38, 7.41, 10.80, 8.40, 8.16, 9.22, 11.29, 8.54, 12.57, 8.53, 9.12, 8.53, 8.62, 12.03, 7.64, 11.13, 7.18, 8.16, 9.29, 6.89, 10.45, 11.20, 9.38, 8.79, 4.71, 9.35, 10.80, 10.90, 9.86, 9.50, 8.17, 11.19, 7.89, 8.72, 8.74, 8.87, 8.63, 9.28, 6.58, 10.74, 8.12, 6.92, 6.89, 5.19, 10.73, 10.38, 8.74, 8.96, 8.60, 4.92, 7.48, 8.96, 10.96, 8.08, 7.15, 8.82, 5.69, 8.09, 10.21, 5.80, 9.76, 11.90, 8.73, 7.10, 11.13, 5.07, 9.43, 8.04, 10.76, 7.95, 9.06, 9.39, 7.70, 5.92, 9.32, 10.53, 10.26, 6.31, 6.34, 5.36, 7.75, 7.74, 8.42, 10.76, 11.39, 8.42, 9.79, 9.45, 9.17, 7.91, 5.79, 5.70, 8.74, 10.33, 11.00, 6.17, 9.11, 9.57, 11.82, 10.35, 8.37, 6.66, 6.97, 9.66, 12.18, 10.80, 11.14

1. Divida o suporte da variável aleatória $[a,b]$ em $k=6$ classes, com igual amplitude.

2. Agrupe os valores da amostra observada nas classes definidas em 1., obtendo o conjunto de frequências absolutas observadas associadas a essas classes.

3. Recorra às frequências obtidas em 2. para testar $H_0$ e indique o valor-*p* do teste de ajustamento do qui-quadrado, arredondado a 4 casas decimais.

Selecione uma opção:

    a.0.1917
    b.0.1800
    c.0.1692
    d.0.9321
    e.0.5544
