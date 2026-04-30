# bob-survivor

ぼぶ（philosophy-chat の哲学キャラ）が「煩悩」と戦う、Vampire Survivors オマージュ。
character-universe 初の **キャラクター横断出演** 事例。

## 起動

```sh
open index.html
```

ビルド不要、サーバー不要。単一 HTML + Canvas 2D で完結。

## 仕組み

- 1 分耐久。武器・パッシブを拾って育てる Vampire Survivors 系
- **武器 4**: 問い / 言葉 / 内省 / 観察
- **パッシブ 7**: 沈黙 / 明晰さ / 忍耐 / 歩み / 気づき / 呼吸 / 澄明
- **進化 3**:
  - 問い + 沈黙 → ソクラテス的問答
  - 言葉 + 明晰さ → 弁証法
  - 内省 + 忍耐 → 観想
- 武器・パッシブ・進化は `WEAPONS` / `PASSIVES` / `EVOLUTIONS` テーブルで完結。追加はテーブルだけ触ればよい設計

## キャラ

ぼぶ（philosophy-chat と同 SVG シルエット、Canvas に移植）。
武器を 1 つ以上持つと「集中状態」として目が冴える（thinking 演出を流用）。

## ライセンス

MIT — see `LICENSE`.
