# 02 Complex plane

信号とシステムを実数ではなく複素数で表現すると扱いが容易になります.ここではその導入として複素数と複素平面についての基礎事項をおさらいします

## 複素数

### 定義

実数$x$と$y$が与えられた時に,虚数単位$j$を付けて

$$
z = x + jy
$$

とおいたものを**複素数**(complex number)といい,$x$を**実部**(real part),$y$を**虚部**(imaginary part)と言います.それぞれ

$$
\begin{aligned}
x &= Re z\\
y &= Im z
\end{aligned}
$$

と記します.実部がなく虚部だけの複素数を**純虚数**と言います

複素数$z$において,虚部の符号を変えたもの

$$
z^{\ast} = x - jy
$$

を$z$の**複素共役**(complex conjugate)もしくは**共役複素数**と言います.$z$と複素共役$z^{\ast}$の和と積はどちらも実数となります

## 複素平面

複素数を$x$を横座標,$y$を経て座標とする二次元平面上の1つの点として表示することができ,この平面のことを**複素平面**(complex plane)もしくは**ガウス平面**(Gaussian plane)と言います

原点から$z$の距離$r$はピタゴラスの定理より

$$
r = \sqrt{x^2 + y^2} = \sqrt{z z^{\ast}}
$$

となります.これを複素数$z$の**絶対値**と呼び,$|z|$と記します.また,$z$と原点を結ぶ直線が横軸の間となす角$\phi$は$z$の**偏角**と呼び$arg(z)$と書きます.$r$と$\phi$を用いると$z$の実部と虚部はそれぞれ

$$
\begin{aligned}
x &= r \cos \phi\\
y &= r \sin \phi
\end{aligned}
$$

と表せます.これと$z$の定義から

$$
\begin{aligned}
z &= r\cos \phi + jr \sin \phi\\
&= r(\cos \phi + j \sin \phi)
\end{aligned}
$$

を得ます.このような表現を**極形式**(polar form)と言います

### オイラーの公式

極形式を更に簡潔な表現とするため,**オイラーの公式**(Euler's formula)を用います

$$
e^{j \phi} = cos \phi + j sin \phi
$$

オイラーの公式を使うと極形式は次のように表せます

$$
z = r(\cos \phi + j \sin \phi) = re^{j \phi}
$$

## 複素正弦波信号

### 円運動と複素数の関連

円上にある絶対値$A$の点Pを考えます.その偏角$\phi$を時間に比例して$\phi = \omega t$で変化させます.このとき,点Pの実部と虚部の時間変化は

$$
\begin{aligned}
x(t) &= A \cos \omega t\\
y(t) &= A \sin \omega t
\end{aligned}
$$

となります.これはそれぞれ正弦波信号となっています

### 信号の定義

点Pに対応する複素数$z$そのものを複素数値の信号として新たに定義します

これを$z(t)$とすれば

$$
\begin{aligned}
z(t) &= x(t) + y(t)\\
&= A(\cos \omega t + j \sin \omega t)
\end{aligned}
$$

この右辺にオイラーの公式に$\phi = \omega t$を代入した$e^{j \omega t} = \cos \omega t + j \sin \omega t$を適用し,次のように複素正弦波信号が定義されます

$$
z(t) = A e^{j \omega t}
$$

ただし,振幅$A$,各周波数$\omega$です.$\omega$が正のときは複素平面上を半時計回りに円運動する信号です

各周波数は$-\infty < \omega < \infty$,つまり全ての実数の範囲で定義されます

### 一般の複素正弦波信号

振幅$A$,位相$\theta$を持つ一般の複素正弦波信号は

$$
x(t) = Ae^{j(\omega t + \theta)}
$$

で定義されます.これは指数関数の性質を使って

$$
x(t) = \dot{A}e^{j \omega t}
$$

とも表現できます.これは係数$Ae^{j\theta}$と時間信号$e^{j \omega t}$の積になります.係数は時間信号の振幅とみなすことができ,これを**複素振幅**と呼びます

複素振幅は複素数で,絶対値は元々の信号の振幅$A$,偏角が位相$\theta$です

### 実数の正弦波信号の複素正弦波信号による合成

$$
\begin{aligned}
e^{j\omega t} &= \cos \omega t + j \sin \omega t
e^{-j\omega t} &= \cos \omega t - j \sin \omega t
\end{aligned}
$$

であるから,和と差を取って$2$で割ると

$$
\begin{aligned}
\cos \omega t &= \frac{1}{2}(e^{j \omega t} + e^{-j \omega t})\\
\sin \omega t &= \frac{1}{2j}(e^{j \omega t} - e^{-j \omega t})
\end{aligned}
$$

となります.正弦波信号は2つの複素正弦波信号の合成で表すことができます.より一般的に次式が成り立ちます

$$
A \cos (\omega t + \theta) = \frac{A}{2}e^{j \theta} \cdot e^{j \omega t} + \frac{A}{2}e^{j \theta} \cdot e^{-j \omega t}
$$

## 複素伝達関数

線形システムで複素正弦波信号を入力した場合,出力も同じ形の信号と成ります.このようにシステムに対して入出力の形が同じ信号をシステムの**固有信号**と言い,複素正弦波信号は線形システムの固有信号です.よって入力,出力をそれぞれ$x(t)$, $y(t)$とおいて

$$
\begin{aligned}
x(t) &= A_1 e^{j \theta_1}e^{j \omega t}\\
y(t) &= A_2 e^{j \theta_2}e^{j \omega t}
\end{aligned}
$$

とおいて,両者の比を取ると

$$
\frac{\text{出力}}{\text{入力}} = \frac{A_2}{A_1}e^{j(\theta_2 - \theta_1)}
$$

これを$j\omega$の関数として

$$
H(j\omega) = |H(j\omega)|e^{j \angle H(j \omega)}
$$

と表し,線形システムの複素伝達関数もしくは**伝達関数**(transfer functoin)と呼びます.その振幅伝達特性$|H(j \omega)|n$,位相伝達特性$\angle H(j \omega)$はそれぞれ

$$
|H(j \omega)| = \frac{A_2}{A_1}
\angle H(j \omega) = \theta_2 - \theta_1
$$

となります
