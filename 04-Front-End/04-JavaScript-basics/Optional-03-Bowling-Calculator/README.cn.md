## 背景和目标

我们来打保龄球吧! 🎳

## 详细说明

写一个函数来计算十瓶保龄球的得分。
函数的输入值是一个玩家每轮击倒的球的列表。
函数要返回玩家得分。


## 保龄球规则

### 一般规则

- 每个游戏由10轮组成。在每一轮中，玩家滚动1或2个球，除了第10轮玩家会滚动2或3个球。
- 总分是10轮的总分。
- 如果你两次击倒少于10瓶，你的这轮分数就是击倒的瓶数。
- 如果你两次击倒全部10瓶('spare'), 你的分数是击倒的瓶数**加上奖励分** -**下一次**击倒的瓶数。
- 如果你一次击倒全部10瓶(‘全中’/‘strike'), 就不需要第二次。你的分数是击倒的瓶数 **加上更多奖励分** - **下两次**击倒的瓶数

### 第10轮规则

因为第10轮是最后一轮，因此它有_特殊规则_：

- 一次或两次击中全部的情况下都没有额外的奖励。
- 如果最后一轮是两次击中全部，玩家还有一次击球机会（共3次击球）
- 如果最后一轮是一次击中全部，玩家还有两次击球机会(共3次击球）
- 如果既没有一次击中也没有两次击中，玩家没有第三次击球机会。
