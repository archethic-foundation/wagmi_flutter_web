// Fixes https://github.com/archethic-foundation/wagmi_flutter_web/issues/68
export function waitForFocus() {
    return new Promise<void>((resolve) => {
        if (document.hasFocus()) {
            resolve()
            return
        }

        const intervalId = setInterval(() => {
            if (document.hasFocus()) {
                clearInterval(intervalId)
                resolve()
                console.debug('[WagmiFlutterWeb] Document has regained focus 👍')
                return
            }
            console.debug('[WagmiFlutterWeb] Waiting for document focus...')
        }, 100);
    });
};
