# bob-survivor — Vampire Survivors オマージュ

ぼぶ（philosophy-chat の哲学キャラ）が「煩悩」と戦う Vampire Survivors オマージュ。**ビルド構築の快感** にフォーカスした (b) 路線で MVP 着手。

## Why

個人開発ブランド指針（`~/projects/CLAUDE.md`）に従い、アプリ固有キャラを置く原則。本作は philosophy-chat からのクロスアプリ出演を初実装した事例で、将来 character-gallery への統合や他キャラとの共演余地を残す設計。

## How to apply

- パス: `~/projects/bob-survivor/index.html`（単一 HTML、`open` で即起動、ビルドなし）
- 武器・パッシブ・進化は `WEAPONS` / `PASSIVES` / `EVOLUTIONS` のテーブルで完結。追加はテーブルだけ触ればよい構造（コード本体に手を入れない）
- 武器 3（問い・言葉・内省）/ パッシブ 3（沈黙・明晰さ・忍耐）/ 進化 3
  - 問い Lv8 + 沈黙 Lv3 → **ソクラテス的問答**（ホーミング閃光）
  - 言葉 Lv8 + 明晰さ Lv3 → **弁証法**（範囲 +40% / 威力 +2 / クールダウン 0.7s 固定 / 二重円描画）
  - 内省 Lv8 + 忍耐 Lv3 → **観想**（盾 +2 / 距離 +30% / 速度 1.5x / 当たり判定 +2 / クールダウン短縮）
- 進化情報は `WEAPON_EVOLUTIONS` テーブルに集約。HUD 表示・結果画面の参照は全部このテーブル経由
- ぼぶの描画は philosophy-chat の `app/components/Bob.tsx` の SVG 仕様（フード silhouette `#171717` + 内側影 `#0a0a0a` + 目 `#cfc7b4`、瞬き 3500–7000ms 間隔・閉じ 130ms）を Canvas に移植
- カラー: 背景 `#0f1114`、テキスト `#ece6d6`、アクセント `#b8a4d4`（内省の紫）、進化フラッシュ `#f4d77e`、煩悩 `#1a0f14` + 赤目 `#c44a4a`
- 音は Web Audio で手続き生成（ブランド指針通り mp3/ogg は置かない）

## 現状（2026-04-26）

- 進化 3 種実装完了。**未プレイテスト**
- buildChoiceList を整理（武器プール / パッシブプール / 進化を分離）。**ゲーム開始直後の最初のレベルアップは武器を必ず 1 つ含める**（武器 0 状態で詰まないように）
- 各武器の levelDesc を Lv 別に区別（Lv8 で「進化準備完了」表示）
- 次は実プレイ → バランス調整（特に新進化 2 種の強度） → Vercel デプロイ可否
- アプリツリー wiki に登録済み（commit `ce1087f`、初のクロスオーバー事例として L2 最大強度版に位置付け）

---
_2026-04-26 に `~/.claude/.../memory/bob_survivor_project.md` から移行_
