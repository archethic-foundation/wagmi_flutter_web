import { JSWagmiCore } from "./src/wagmi_core"
import { JSWeb3Modal } from "./src/web3_modal"

export { PublicStateControllerState } from '@web3modal/base'
export { JSWagmiCore } from "./src/wagmi_core"
export { JSWeb3Modal } from "./src/web3_modal"
declare global {
  interface Window {
    web3modal: JSWeb3Modal
    wagmiCore: JSWagmiCore
  }
}

window.web3modal = new JSWeb3Modal()
window.wagmiCore = new JSWagmiCore()

document.dispatchEvent(new Event('wagmi_flutter_web_ready'))