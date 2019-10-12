# 01 Basic math

これ以降に用いる基本事項についてこのページではまとめます

## 1. 逆写像定理

領域$D \subset \mathbb{R}^l$で定義された写像

$$
\bm{f}: D \longrightarrow \mathbb{R}^{n} : \bm{x} = {}^t\!(x_1,...,x_l) \longmapsto {}^t\!(f_1(\bm{x}),...,f_n(\bm{x}))
$$

が$\bm{x}=\bm{a}$で微分可能(全微分可能)とはある$n \times l$行列$A$が存在して

$$
\bm{f}(\bm{a}+\bm{h}) = \bm{f}(\bm{a})+ A \bm{h}+o(\|\bm{h}\|)
$$

と書くことができます.このとき$A$は$\bm{f}$のJacobi行列

$$
\frac{\partial \bm{f}}{\partial \bm{x}} =
\left[
\begin{array}{ccc}
\frac{\partial f_1}{\partial x_1} & \ldots & \frac{\partial f_1}{\partial x_l}\\
\vdots & & \vdots\\
\frac{\partial f_n}{\partial x_1} & \ldots & \frac{\partial f_n}{\partial x_l}
\end{array}
\right]
$$

の$\bm{x} = \bm{a}$での値に一致します

### 陰関数定理

以下は**陰関数定理**というある条件を満たす時に陰関数が存在するということを示す定理です

写像$\bm{F}$: $D(\subset \mathbb{R}^k \times \mathbb{R}^n)\longrightarrow \mathbb{R}^n$が$C^1$級で

$$
\bm{F}(\bm{a}, \bm{b}) = \bm{0}
$$

を満たし,かつその点におけるJacobi行列

$$
\frac{\partial \bm{F}}{\partial \bm{y}}(\bm{a}, \bm{y})
$$

が正則であるとします.このとき$\bm{x} = \bm{a}$のある近傍$U(\subset \mathbb{R}^k)$とある$C^1$級関数$f:U\longrightarrow R^n$が存在して全ての$\bm{x} \in U$で

$$
\bm{F}(\bm{x}, \bm{f}(\bm{x})) = \bm{0}
$$

が成り立ちます

### 逆写像定理

以下は**逆写像定理**という与えられた写像の逆写像の存在条件を明らかにする定理です

点$\bm{a}=(a_1,...,a_n)$を含む領域$D\subset \mathbb{R}^n$から$\mathbb{R}^n$への$C^1$級写像

$$
\bm{f}: D \longrightarrow \mathbb{R}^n : \bm{x} = (x_1,...,x_n) \longmapsto \bm{y} = (f_1(\bm{x}),...,f_n(\bm{x}))
$$

が点$f(\bm{a})\in \mathbb{R}^n$の近傍で$C^1$級の逆写像を持つための必要十分条件は$\bm{f}$のJacobi行列$\frac{\partial \bm{f}}{\partial \bm{x}}$が点$\bm{x}=\bm{a}$で正則であること,すなわち

$$
\det\left( \frac{\partial \bm{f}}{\partial \bm{x}} \right)
$$

が点$\bm{x} = \bm{a}$で$0$ではないということです

## 2. 双対空間

## 3. テンソル
