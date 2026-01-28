# Homebrew Tap for KPS

Official Homebrew tap for [KPS](https://github.com/zaehorang/KPSTool) - Algorithm problem-solving tracker for BOJ & Programmers.

## Installation

```bash
brew tap zaehorang/tap
brew install kps
```

## Usage

```bash
# Initialize project
kps init --author "Your Name" --source "Sources"

# Create problem file
kps new 1000 -b
kps new "https://school.programmers.co.kr/learn/courses/30/lessons/340207"

# Solve and commit
kps solve 1000 -b

# View configuration
kps config
```

## Update

```bash
brew upgrade kps
```

## Uninstall

```bash
brew uninstall kps
brew untap zaehorang/tap
```

## Support

For issues and questions, please visit the [main repository](https://github.com/zaehorang/KPSTool/issues).
