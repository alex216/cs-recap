# Basic Math

電磁気で用いる数学についてやります

## ベクトル解析

電磁気では多くの数学が使われます

ここではそのうち最も重要である**ベクトル解析**について簡単に触れます

### スカラー積とベクトル積

**スカラー積**は内積,**ベクトル積**は外積とも呼びます

ベクトル$\bm{A}$とベクトル$\bm{B}$のスカラー積とは,$\bm{A}$の大きさに$\bm{B}$の$\bm{A}$のに落とした正射影の成分の大きさをかけたものです

式では次のように書きます

$$
\bm{A} \cdot \bm{B} = |A||B|\cos\theta
$$

また

$$
\bm{A} \cdot \bm{B} = A_x B_x + A_y B_y
$$

となるのも,$A_x B_y$などが直行して$x$軸に対して(もしくはy軸に対して)大きさがないからです

ベクトル積は**回転が関係します**

ベクトル$r$とベクトル$F$のベクトル積は$r$から$F$にひねった方向に回転し,それに対する右ねじの方向に向いた力です

例えば$x$, $y$, $z$軸方向に大きさ1の単位ベクトルがあるとして

- $x$同士の掛け算は回転しないので大きさ$0$のベクトル
- $x$と$y$の掛け算は回転するので大きさ$1$の$z$方向へのベクトル
- $y$と$x$の掛け算は回転するので大きさ$1$の$-z$方向へのベクトル

## 微分

### 偏微分

偏微分は変数を定数として見るというものです

偏微分は$\partial$を使って演算をします

おそらく問題ないと思います

### 全微分

全微分は以下のような式です

$$
\Delta f = \frac{\partial f}{\partial x}\Delta x + \frac{\partial f}{\partial y}\Delta y + \frac{\partial f}{\partial z}\Delta z
$$

この数式がどのようなイメージを持つかを説明するため,$x-y$の2次元に次元を落として考えます

場の量$f$は$x-y$平面上で定義された量でかつスカラーとしておけば$x-y$平面上を覆うような曲面だということがわかると思います

この微小な領域を考えます

その微小な領域の$x$, $y$方向での変化をそれぞれ$\Delta x$, $\Delta y$とすると,$z$軸方向の変化は$\frac{\partial f}{\partial y}\Delta y + \frac{\partial f}{\partial x}\Delta x$

つまり,全微分とはそのような微小な領域の体積を求めているのです

## $\nabla$関連の公式の意味

### grad$\psi$($\nabla \psi$)

スカラー場$\psi$から傾斜を求めるときに使うのが$grad \psi$($\nabla \psi$)です

これも全微分の例と同様に考えることが可能です

つまり,スカラー場$\psi$の最大傾斜の方向を向き,傾斜が大きければ大きいほどその値も大きなベクトルです

### $div A$($\nabla A$)

具体的に

$$
div \bm{D} = \rho
$$

を考えてみます

この式の両辺に微小体積$\Delta V$をかけるとh

$$
div \bm{D} \Delta V = \rho \Delta V
$$

右辺は$\rho$を電荷密度としてその体積の中にある電気量の合計です

$$
div \bm{D} \Delta V = \left( \frac{\partial D_x}{\partial x} + \frac{\partial D_y}{\partial y} + \frac{\partial D_z}{\partial z} \right) \Delta x \Delta y \Delta z
$$

ここで$\partial D_x / \partial x$だけを考えます

$$
\frac{\partial D_x}{\partial x}\Delta x \Delta y \Delta z = \frac{\partial D_x}{\partial x}\Delta x \cdot \Delta y \Delta z
$$

となります.このとき$\frac{\partial D_x}{\partial x}$は$\Delta x$だけ変化した$D_x$の増加分なので次のように書けます

$$
\frac{\partial D_x}{\partial x}\Delta x \cdot \Delta y \Delta z = { \Delta_x (x + \Delta x) - \Delta_x(x)} \Delta y \Delta z
$$

つまり,微小な面を通過する電束の差分です

この値を積分すると体積全体から出てくる電束を求めることができます.よって

$$
\int_V div \bm{D} dV = \int_S \bm{D} \cdot dS
$$

という書くことができます.$\Delta$を電束密度に限らず,任意のベクトルにすると$\bm{A}$と書け,

$$
\int_V div \bm{A} dV = \int_S \bm{A} \cdot \bm{n} dS
$$

と書くことができます.これは体積積分とその表面の面積積分の関係を示す公式で**ガウスの定理**と言います(電磁気の場合は**ガウスの法則**)

### $rot A$($\nabla \times A$)

これは回転のイメージです

ここでも$\Delta x$に関してだけ見ると計算結果は

$$
\left( \frac{\partial A_y}{\partial x} - \frac{\partial A_x}{\partial y} \right) \Delta x \Delta y
$$

となります.これは

$$
\text{回転の効果を足したもの} = (\Delta \times \bm{A}\text{大きさ} \times (\text{経路で囲まれる面積}))
$$

という意味を持ちます.つまりこの値に対して線積分をすれば

$$
\oint_C \bm{A} \cdot d\bm{s} = \int_s (\Delta \times \bm{A})_n \cdot dS
$$

これが**ストークスの定理**です

**ガウスの定理**は体積積分と面積分の関係ですが,ストークスの定理は線積分と面積積分の関係です

### ラプラシアン($\nabla \cdot (\nabla \psi )$)

gradの$div$です

### $\nabla \times (\nabla \psi) = 0$

$\nabla$を掛けた(grad)場合,$x$成分には$y$成分と$z$成分のみしかないので,それに$\nabla$をベクトル積したもの(rot)は当然$0$のベクトルとなります

### $\nabla \cdot (\nabla \times A) = 0$

これも上と変わりません

物理的なイメージを考えれば当然の式です
