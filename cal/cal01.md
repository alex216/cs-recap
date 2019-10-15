# Real number & Convergence

## 数の分類

### 自然数

自然数は英語でnatural numberなので自然数の集合は$\mathbb{N}$と表します

$\mathbb{N}=\lbrace 1,2,3,4,\cdots \rbrace$となります

### 整数

整数は自然数に0や負の数を加えてもので,ドイツ語でganze Zahlと呼ぶので集合は$\mathbb{Z}$と表します

$\mathbb{\cdots,-2,-1,0,1,2,\cdots}$となります

### 有理数

有理数はrational numberなので,その集合は$\mathbb{R}$と表します

rationalはratioから来た言葉であり,分数で表せる数が有理数です

循環する小数は分数で表すことができるので,有理数です

有理数の集合は$\mathbb{Q}$と書きます

### (厳密ではない)実数

循環しない小数は分数で表せません.このような数を無理数と言い,無理数と有理数の集合の和集合を実数と言います

実数の集合は$\mathbb{R}$と書きます

## 実数

実数全体の集合を$\mathbb{R}$とし,$S\subseteq \mathbb{R}$とします

$\forall{s} \in S$に対して,$s \subseteq S$となる実数$a$があれば,$a$は$S$の**下界**と呼びます.また,下界が存在することを**下に有界**と言います

逆は**上界**,**上に有界**と言います

下界で最大の数を**下限**,上界で最小の数を**上限**と言います

## 数列と収束性

### 数列

**数列**は$a_1, a_2, a_3, \cdots$と続く数の列のことです

n番目の元$a_n$を一般項と考え,数列$\lbrace a_n \rbrace$と書くことも有ります

数列の部分集合を同じ順番に並べたものを**部分列**と呼びます

### 収束

$\lbrace a_n \rbrace$が$n$が大きくなるに従って,ある数$\alpha$に近づくとき,$\lbrace a_n \rbrace$は$\alpha$に**収束する**と言います.また,$\alpha$は$\lbrace a_n \rbrace$の**極限**と言います.これを以下のように書きます

$$
\lim_{n \to \infty}a_n = \alpha
$$

もしくは

$$
a_n \to \alpha \;\;\;(n \to \infty)
$$

と書きます

$n \to \infty$で$a_n$が限りなく大きくなるとき,$\lbrace a_n \rbrace$は発散するといい,次のように書きます

$$
\lim_{n \to \infty}a_n = \infty
$$

もしくは

$$
a_n \to \infty \;\;\;(n \to \infty)
$$

また,

$$
\lim_{n \to \infty}a_n = -\infty
$$

もしくは

$$
a_n \to -\infty \;\;\;(n \to \infty)
$$

$\pm \infty$に発散していなくても,どこにも収束しない時,発散するということもあります

### コーシー列

数列がどこに収束しているかはわからないが,どこかに収束しているときに**コーシー列**という概念が役に立ちます

$m,n$が限りなく大きくなるにつれ,$|a_m - a_n|$が$0$に近づくとき,$\lbrace a_n \rbrace$をコーシー列と言います

### 収束の厳密な定義

数列$\lbrace a_n \rbrace$が$\alpha$に収束することは,任意の正数$\varepsilon$に対し,自然数$N$が存在し,全ての$n \geq N$に対し

$$
|a_n - \alpha| < \varepsilon
$$

となることです.論理学の記号を使うと

$$
\forall{\varepsilon} >0,\;\; \exists{N}; \;\;\; |a_n - \alpha| < \varepsilon, \;\; \forall{n} \geq N
$$

と書けます

## 実数の完備性

### ボルツァーノ･ワイヤシュトラスの定理

## 級数
