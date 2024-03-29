# Latex

$\LaTeX$とは$\TeX$を使って開発された組版処理システムです

主に数式を書くのに使われます.ここでも自分の用途が数式を書くことなのでそれに合わせて書いています

WebブラウザではMathJaxや$\href{https://katex.org/}{\KaTeX}$というJavascriptのライブラリを使って,$\LaTeX$記法を記述することが可能です(この文章は$\KaTeX$を使っています)

奥が深く自分もよく分かっていないので,大体こんな風に書けばいいということが伝われば幸いです

## 基本

### 数式の書き方

`\(`で囲うとインライン表示,`\[`で囲うとブロック表示です

前者はドルマーク1つ,後者はドルマーク2つで書くことも可能ですが,非推奨とされています

また,Mathjaxでは`\`を2つ書く必要が有ります.これはおそらくJavascriptの既存の機能と被らないようにされているからでしょう

### イコールあれこれ

|コマンド|出力|
|-|-|
|`\fallingdotseq`|$\fallingdotseq$|
|`\approx`|$\approx$|
|`simeq`|$\simeq$|
|`\equiv`|$\equiv$|

## 痒い所に手が届け

### 文字をいろんなところに配置

|コマンド|出力|
|-|-|
|`\underset{p_i}{max}`|$\underset{p_i}{max}$|
|`\underbrace{1+1}_{plus}`|$\underbrace{1+1}_{plus}$|
|`\overset{something}{=}`|$\overset{something}{=}$|
|`\overbrace{something}^{minus}`|$\overbrace{1-1}^{minus}$|
