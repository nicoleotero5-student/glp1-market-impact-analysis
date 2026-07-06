# The GLP-1 Ripple Effect: A Market Impact Analysis

## 1. Overview

This project examines whether public equity markets correctly priced 
the downstream consequences of FDA-approved GLP-1 obesity drugs on 
adjacent industries. Using historical stock price data for 11 companies 
across six sectors — GLP-1 makers, diabetes devices, food and beverage, 
fast food, fitness, and surgical robotics — alongside the S&P 500 as a 
market benchmark, this analysis identifies where market reactions were 
proportionate, exaggerated, or absent relative to the fundamental 
business implications of each approval.

At a high level, the data reveals a clear divergence. Eli Lilly (LLY) 
and Intuitive Surgical (ISRG) were the standout beneficiaries, sustaining 
significant price appreciation well above the broader market and, in LLY's 
case, potentially pricing in a premium ahead of revenues that are only now 
catching up. Kraft Heinz (KHC) was the clearest casualty, entering a 
prolonged decline following Wegovy's approval that has not meaningfully 
reversed though fundamental revenue data suggests the market's reaction 
may have been disproportionate to the actual business impact. Perhaps most 
unexpectedly, McDonald's (MCD) and Yum Brands (YUM) showed resilience and 
even growth, raising questions about whether GLP-1 drugs are shifting eating 
behaviour in ways that benefit rather than threaten fast food. Most 
strikingly, DexCom (DXCM) recorded the largest market overreaction in the 
study with a stock decline of 28% against revenue growth of 15%, a divergence 
that suggests the market priced in a GLP-1 threat that has not yet 
materialised in actual sales.

## 2. Central Question

This analysis set out to determine whether public equity markets correctly 
priced the downstream consequences of FDA-approved GLP-1 obesity drugs — 
not only for the manufacturers of those drugs, but for the adjacent 
industries most likely to be affected collaterally. A secondary but equally 
important question was whether observed stock movements could be attributed 
specifically to GLP-1 approval events, or whether they were simply a 
reflection of broader market conditions. To isolate this effect, the S&P 500 
(SPY) was included as a benchmark throughout the analysis — any movement that 
mirrors the general market trajectory cannot credibly be claimed as a 
GLP-1 driven signal.

This question carries relevance beyond the specific case of GLP-1 drugs. 
As pharmaceutical breakthroughs become more frequent and their downstream 
consequences more complex, understanding how public markets process and 
price those consequences becomes a valuable analytical framework — one that 
can be applied to future drug approvals, medical device disruptions, and 
broader healthcare innovation cycles.

## 3. Data and Methodology

All data was sourced from Yahoo Finance via the yfinance Python library, 
covering the period from January 2019 to July 2026. This window was 
deliberately chosen to provide approximately two years of pre-event baseline 
data before the first FDA approval in June 2021. Three datasets were 
collected: historical daily closing prices for all tracked companies, 
quarterly revenue figures from public financial statements, and S&P 500 
index data (SPY) as a market benchmark.

Eleven companies were tracked across six sectors, selected to represent 
the industries most likely to experience downstream effects from widespread 
GLP-1 adoption:

- **GLP-1 Makers:** Eli Lilly (LLY), Novo Nordisk (NVO)
- **Diabetes Devices:** DexCom (DXCM), Insulet (PODD)
- **Food & Beverage:** Kraft Heinz (KHC), Nestlé (NSRGY), PepsiCo (PEP)
- **Fast Food:** McDonald's (MCD), Yum Brands (YUM)
- **Fitness:** Planet Fitness (PLNT)
- **Surgical Robotics:** Intuitive Surgical (ISRG)

Three FDA approval dates were used as analytical anchors — the moments 
from which market reactions were measured:

- **June 4, 2021** — Wegovy (semaglutide) approved for obesity
- **May 13, 2022** — Mounjaro (tirzepatide) approved for type 2 diabetes
- **November 8, 2023** — Zepbound (tirzepatide) approved for obesity

The analysis was structured in two layers. The first used SQL queries 
against a locally built SQLite database to interrogate the price data from 
four angles: establishing baseline price characteristics for each company 
across the full period; measuring average price before and after Wegovy 
approval to identify directional shifts; benchmarking each stock's movement 
against SPY to isolate GLP-1 specific signals from broader market trends; 
and measuring price volatility in 30 day windows around each approval event 
to capture the immediacy and magnitude of market reactions.

The second layer added fundamental analysis for five companies — LLY, NVO, 
KHC, DXCM and ISRG — comparing quarterly revenue growth against stock price 
growth to assess whether market reactions were proportionate to actual 
business performance. This layer was essential to answering the core research 
question: a stock price movement alone cannot confirm mispricing without 
knowing whether the underlying business actually changed.

## 4. Key Findings

**Finding 1: Market reactions were significant after the first two approvals 
but diminished by the third.**
The data confirmed a measurable market reaction across most tracked companies 
following the Wegovy and Mounjaro approvals. However, by the time Zepbound 
was approved in November 2023, market reactions were considerably more muted. 
This pattern suggests that by the third approval, the market had already 
priced in the long-term implications of GLP-1 drugs — both the winners and 
the losers — making further repricing unnecessary. Markets, in other words, 
learned progressively with each event.

**Finding 2: LLY's extraordinary rise was forward-looking — and largely 
justified.**
Eli Lilly recorded a stock price increase of over 518% since Wegovy's 
approval, significantly outperforming every other company in the study 
including its direct competitor Novo Nordisk. While quarterly revenue growth 
of 55% in the most recent year suggests the stock may carry a premium at 
current prices, the trajectory of revenue acceleration indicates the market's 
early conviction was directionally correct. The market anticipated LLY's 
growth before it materialised in the financials — a signal of forward-looking 
pricing rather than irrational exuberance.

**Finding 3: Novo Nordisk's underperformance relative to LLY is the study's 
most compelling puzzle.**
Despite manufacturing Ozempic — one of the most commercially successful 
drugs in recent history — NVO significantly underperformed LLY over the 
study period, gaining only 34% against LLY's 518%. More surprisingly, NVO's 
quarterly revenues are growing strongly and are considerably larger than 
LLY's in absolute terms. This divergence likely reflects market concern about 
competitive pressure from LLY's tirzepatide rather than any fundamental 
weakness in NVO's business — a case where sentiment appears to be driving 
valuation more than underlying performance.

**Finding 4: DexCom was the clearest case of market overreaction.**
DexCom (DXCM) recorded a stock price decline of 28% since Wegovy's approval 
while simultaneously growing quarterly revenue by 15%. This gap of over 43 
percentage points between price performance and fundamental performance 
represents the largest mispricing identified in the study. The data suggests 
the market aggressively priced in a future threat from GLP-1 drugs reducing 
the need for diabetes management devices — a threat that has not yet 
materialised in actual sales. Whether this represents a buying opportunity 
or a justified anticipation of future revenue decline remains an open 
question, but the current divergence is striking.

**Finding 5: Fast food showed unexpected resilience.**
McDonald's (MCD) and Yum Brands (YUM) proved surprisingly resistant to the 
GLP-1 approvals, with both stocks broadly holding their value relative to 
the market benchmark. This was not the expected outcome — conventional wisdom 
suggested that drugs reducing appetite would hurt fast food consumption. One 
possible explanation is that GLP-1 drugs are changing eating behaviour in 
ways that make occasional fast food more rather than less acceptable to 
consumers. Another is that fast food's value positioning makes it structurally 
resilient to health trends in a way that packaged food manufacturers like 
Kraft Heinz are not. The data cannot confirm either hypothesis, but the 
resilience itself is a finding worth noting.

## 5. Limitations and Alternative Explanations

**Revenue data constraints.**
The most significant methodological limitation of this analysis is the 
restricted revenue data available via yfinance, which returned only 
approximately four quarters of historical financials for most companies. 
This means revenue growth was measured over roughly one year while stock 
price growth was measured over five years — an inherently unequal comparison. 
More critically, it prevents us from establishing whether revenue trends 
existed before the FDA approvals, which matters enormously. A company whose 
revenue was already declining before Wegovy's approval cannot have that 
decline attributed to GLP-1 drugs. A more rigorous analysis would source 
full historical income statements from SEC EDGAR filings going back to 2019 
to establish pre-event revenue trajectories for each company.

**Revenue is only one dimension of fundamental value.**
This analysis compared stock prices against quarterly revenue — but revenue 
alone is an incomplete picture of a company's financial health. Profit 
margins, debt levels, cash flow, earnings per share, and forward guidance 
all influence how markets price stocks. Additionally, this analysis focused 
exclusively on GLP-1 drugs as a catalyst. In reality, companies like ISRG 
and DXCM are subject to multiple concurrent product cycles, regulatory 
decisions, and strategic pivots that may have contributed to their stock 
movements independently of any GLP-1 effect. Isolating a single catalyst 
in a complex business environment is inherently imperfect.

**Macroeconomic and geopolitical confounding factors.**
The study period of 2021 to 2026 was one of the most turbulent in recent 
economic history. The tail end of the COVID-19 pandemic, global supply chain 
disruptions, significant interest rate hikes, geopolitical conflicts, and 
shifting consumer purchasing power all had measurable effects on equity 
markets during this period. While the SPY benchmark was included to control 
for broad market movements, sector-specific macroeconomic effects — such as 
food inflation affecting packaged goods companies, or healthcare spending 
shifts post-pandemic — cannot be fully isolated by this method alone. Some 
of what this analysis attributes to GLP-1 sensitivity may partly reflect 
these broader forces.

## 6. Conclusions and Broader Implications

This analysis does not produce a set of investment recommendations — the 
data depth and timeframe constraints outlined in the limitations section 
preclude that level of conviction. What it does produce is a set of 
analytically grounded observations about how public markets behaved around 
one of the most significant pharmaceutical developments of the decade, and 
where that behaviour appears to have been proportionate, excessive, or 
surprisingly absent.

The most actionable insight from a market behaviour perspective is the 
case of DexCom (DXCM) — a company whose stock declined 28% while revenue 
grew 15%, suggesting the market priced in a GLP-1 threat that has not yet 
materialised in actual sales. Whether that threat eventually arrives, and 
on what timeline, is a question this analysis cannot answer. But the gap 
between sentiment and fundamentals is large enough to warrant further 
investigation by anyone with an active interest in the medical devices 
sector.

Perhaps the most transferable finding — applicable beyond GLP-1 drugs 
specifically — is the pattern of diminishing market reaction across 
successive FDA approvals. The first approval (Wegovy, 2021) triggered the 
broadest repricing. The second (Mounjaro, 2022) triggered the most volatile 
reactions, as the market had developed a clearer view of the implications. 
By the third (Zepbound, 2023), the market had largely absorbed the story 
and reacted minimally. This suggests a learning curve in how markets process 
iterative pharmaceutical breakthroughs — early approvals carry the most 
pricing power, while subsequent approvals in the same drug class produce 
diminishing market impact.

Closely related to this is the first-to-market advantage observed in the 
data. Eli Lilly's extraordinary outperformance of Novo Nordisk — despite 
NVO's larger absolute revenues — points to the market rewarding pipeline 
momentum and competitive positioning over current financial scale. In a 
drug class where multiple players are racing for market share, the market 
appears to price future competitive dynamics more aggressively than present 
revenues. This is a pattern likely to repeat in other high-growth 
pharmaceutical categories and represents a useful framework for analysing 
future drug approval cycles.

Finally, the unexpected resilience of McDonald's and Yum Brands invites 
a broader question about the relationship between health innovation and 
consumer behaviour. The assumption that GLP-1 drugs would uniformly 
depress food consumption — and therefore fast food revenues — has not 
been validated by the price data so far. Whether this reflects genuine 
behavioural shifts, the lag between drug adoption and consumption change, 
or simply the defensive nature of value food in an inflationary environment, 
remains an open question. It is, however, a finding that challenges a 
commonly held narrative and deserves further investigation.