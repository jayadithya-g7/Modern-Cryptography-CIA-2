document.addEventListener("DOMContentLoaded", function() {
    if (window.ethereum) {
        // Request account access if needed
        ethereum.request({ method: "eth_requestAccounts" })
            .then((accounts) => {
                console.log("Connected account:", accounts[0]);
                // Do something with the selected account (e.g., show account info)
            })
            .catch((error) => {
                console.error("Error requesting accounts:", error);
            });

        // Listen for account changes (e.g., when user switches accounts)
        ethereum.on("accountsChanged", (accounts) => {
            if (accounts.length > 0) {
                console.log("Account changed:", accounts[0]);
            } else {
                console.log("No account connected");
            }
        });
    } else {
        console.log("MetaMask is not installed. Please install it to use this Dapp.");
    }
});
