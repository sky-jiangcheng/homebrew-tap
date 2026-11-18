# homebrew-tap

Warden 的 Homebrew cask。Warden 主仓只产二进制，不自带 tap——这是那条「单独的 tap 仓」。

## 安装

```bash
brew install sky-jiangcheng/tap/warden
```

dmg 来自 [sky-jiangcheng/warden](https://github.com/sky-jiangcheng/warden) 的 GitHub Release，
经 Developer ID 签名与公证，Gatekeeper 直接放行。

## 更新方式

Warden 主仓的 Release workflow 在 macOS 发布完成后自动 bump 本仓的
`Casks/warden.rb`（version + sha256），提交人为 `warden-release-bot`。
依赖主仓配置一个有本仓写权限的 `TAP_TOKEN` secret；未配置时发布照常，
只是 tap 不更新。

## 手动 bump（备用）

```bash
brew bump-cask --open-pr sky-jiangcheng/tap/warden
```
