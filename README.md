# Advanced Staking Vault (ERC-4626) 🛡️

A professional-grade, yield-bearing staking vault implemented using the **ERC-4626 Tokenized Vault Standard**. This project demonstrates advanced Solidity patterns, high gas efficiency, and rigorous security practices.

---

### 🚀 Key Features

* **Standardized Architecture:** Built on top of OpenZeppelin's **ERC-4626** for seamless integration with the DeFi ecosystem.
* **Gas Optimized:** Utilizes `immutable` variables, `constant` values, and optimized storage layouts to minimize transaction costs.
* **Security Focused:** Implements the **Checks-Effects-Interactions (CEI)** pattern to prevent Reentrancy attacks.
* **Advanced Testing:** Features a robust test suite using **Foundry**, including **Fuzz Testing** to ensure edge-case reliability.

---

### 🛠 Tech Stack

- **Language:** Solidity ^0.8.20
- **Framework:** Foundry (Forge)
- **Libraries:** OpenZeppelin Contracts
- **Standard:** ERC-4626 (Tokenized Vaults)

---

### 🧪 Getting Started

#### Prerequisites
Ensure you have [Foundry](https://book.getfoundry.sh/getting-started/installation) installed.

#### Installation
```bash
# Install dependencies
forge install OpenZeppelin/openzeppelin-contracts