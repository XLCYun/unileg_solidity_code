import Web3 from 'web3'

async function listen(): Promise<void> {
    try {
        const web3 = new Web3(web3Provider)
        // Note that the script needs the ABI which is generated from the compilation artifact.
        const metadata = JSON.parse(
            await remix.call(
                'fileManager',
                'getFile',
                'browser/artifacts/Event.json',
            ),
        )
        console.log("ABI: ", metadata.abi);
        const contract = new web3.eth.Contract(metadata.abi, "0x39857B73EcD9846C4aC31371AC42158FcC704023")
        contract.events.SomebodyCall({}, (error, event) =>
            error ? console.error(error) : console.log(event),
        )
    } catch (e) {
        console.log(e.message)
    }
}

listen()
