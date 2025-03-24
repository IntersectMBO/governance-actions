# Info Action Ratification

Due to the lack of Info action's on-chain effect, their ratification thresholds are set to 100%.
Whilst technically set at 100%, authors of Info actions are able to define what they consider to ratify their action, leading to some off-chain action.

Attached to this the references governance action is a a URI to a SQL query (<ipfs:// >),
this SQL query will be used by the authors of this action to calculate if this action has reached desired ratification threshold.

The authors of this proposal have set the query to consider a DRep voting threshold of over 50%.

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

- IF governance action type != 'NoConfidence' 
  - Total of voting power of DReps Yes votes 

- IF governance action type == 'NoConfidence'
  - Total of voting power of DReps Yes votes + auto no confidence stake

### ✅ Yes Percentage

(Yes Total / Total Active Stake) x 100

### ❌ No Total

IF governance action type != 'NoConfidence'
- Total of voting power of DReps No votes + auto no confidence stake

IF governance action type == 'NoConfidence'
  - Total of voting power of DReps No vote

### ❌ No Percentage

(No Total / Total Active Stake) x 100

### 🗳️ Not Voted Total (remainder of Total Active Stake)

Total Active Stake - (Yes Total + No Total + auto no confidence stake)

### 🗳️  Not Voted Percentage (remainder of Total Active Stake Percentage)

100 - (yes percentage + no percentage)

- this should equal ((Total Active Stake - (Yes Total + No Total)) / Total Active Stake) * 100


## 📊 SQL Query Explanation

### Step-by-Step Breakdown:

1. **Epoch Info**
   - `current_epoch`: Retrieves the latest epoch number.
   - `drep_activity_config`: Gets the configured activity period for DReps from the latest epoch parameters.

2. **DRep Stake & State**
   - `latest_drep_distribution`: Gets the most recent DRep stake distribution per DRep.
   - `latest_drep_registration`: Filters only active and valid DRep registrations.
   - `latest_vote_epoch`: Determines each DRep's last epoch of voting activity.
   - `active_drep_stake`: Calculates total stake controlled by **active DReps** based on:
     - Current epoch distribution
     - Recent registration
     - Vote activity within the configured "active" period.

3. **Predefined DReps**
   - `predefined_drep_voting_power`: Sums the stake for special DReps:
     - `drep_always_no_confidence`
     - `drep_always_abstain`

4. **Total Active Stake**
   - `total_active_stake`: Sum of active DRep stake and auto no confidence stake.

5. **Votes**
   - `deduped_drep_votes`: Filters votes to one per DRep per proposal (latest only).
   - `governance_action_votes`: Aggregates `Yes`, `No`, and `Abstain` votes by amount of stake per proposal.

6. **Final Output**
   The main `SELECT` returns:
   - **Proposal metadata** (`id`, `tx_hash`, `type`, etc.)
   - **Vote totals**: Abstain, Yes, No, Not Voted (with rules applied based on action type)
   - **Vote percentages** (based on `total_active_stake`)
   - **Ratified?**: A boolean flag showing whether `Yes% > 50` (off-chain threshold assumption)
   - **Stake Breakdown**: Includes total active DRep stake, auto-abstain, and auto-no-confidence stakes

7. **Filters**
   - `WHERE gap.type = 'InfoAction'`: Only return Info Actions.
   - Other optional filters (commented out) are available for expiration, enactment, ratification, etc.

