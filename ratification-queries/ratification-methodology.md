# Info Action Ratification

Due to the lack of Info action's on-chain effect, their ratification thresholds are set to 100%.
Whilst technically set at 100%, authors of Info actions are able to define what they consider to ratify their action, leading to some off-chain action.

Attached to this the references governance action is a a URI to a SQL query (<ipfs:// >),
this SQL query will be used by the authors of this action to calculate if this action has reached desired ratification threshold.

The SQL query should be ran on a fully synced PostGres instance populated by DB-Sync.
Using the default DB-Sync configurations.

## Definitions

Active DRep stake = all the voting power of DReps within the active state 

- (This does not include any in-active DReps OR retired DReps)

Total Active Stake = Active DRep stake + auto no confidence stake

- We do not include any abstain within this, as they are not part of ratification equation

## For governance action

### 💭 Abstain Total

Total voting power of DRep Abstain votes + auto-abstain stake

### ✅ Yes Total

- Total of voting power of DReps Yes votes + auto no confidence stake

### ✅ Yes Percentage

(Yes Total / Total Active Stake) x 100

### ❌ No Total

Total of voting power of DReps No votes + auto no confidence stake

### ❌ No Percentage

(No Total / Total Active Stake) x 100

### 🗳️ Not Voted Total (remainder of Total Active Stake)

Total Active Stake - Yes Total - No Total

### 🗳️  Not Voted Percentage (remainder of Total Active Stake Percentage)

100 - yes percentage - no percentage

- this should equal ((Total Active Stake - Yes Total - No Total) / Total Active Stake ) * 100