# Guidelines for conducting Code Review

## FAQ

### Question:

Developers are asking me if they can work on the review feedback after shipping the feature. They appear to be in a hurry.

### Answer:

There is a risk associated with shipping anything that hasn’t passed QA checks. It is not recommended to work on feedback after merging the PR. Once shipped, the chances of slippage and never coming back to fix these feedbacks are high.

If the team decides to ship without fixing the feedbacks,

1. Understand and be aware that there is a high chance no one works on the feedback later.
2. All stakeholders must be made aware of the risks.

There should be separate tracking created to fix the feedback ASAP.

---

### Question:

I’ve received an unusually high amount of code to review today. I wasn’t aware there would be so much to review. I have other priorities also, what should I do?

### Answer:

**Root Cause Analysis:** There are a few questions you should ask in a common forum with your team. Answers to these questions would help to find the root cause of such situations and lead to corrections that can avoid such situations in the future.

1. How did the amount of code to be reviewed increase?
2. Were there new members added to the team or did someone code more than they usually do?
3. Why wasn't the reviewer aware of the increased development?
4. How was the team communicating about these changes?
5. Are testers aware of the increased flow of code?

**Contingency Plan A**

Check if there is a scope to extend the deadline. If not, try to re-organize your priorities and review the additional code.

**Contingency Plan B**

If you can’t accommodate the unexpected flow yourself, you should ask for help from your backup reviewer.

**Contingency Plan C**

If your backup reviewer isn’t available, come together with the other developers in the team to review the code.

**Contingency Plan D**

If the deadline can’t be extended, then there is no other choice but to ship it.

If the team decides to ship without review, in that case, these are the measures to be taken before shipping.

1. All stakeholders (testers and clients especially) must be made aware of the risks.
2. If possible, plan for a future review post-release.

---

### Other questions

1. Often developers don’t do a self-review. They ship code without doing a self-review.
2. Developers often ask me to review something outside of my regular review schedule.
3. What should I do when my review feedback is not addressed?
4. I requested changes that were put in the icebox and scheduled for development later. Am I responsible for ensuring these changes are implemented? How do we ensure they get addressed and don’t remain in the icebox?
