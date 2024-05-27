# Smart-Contract-Management

import { useState } from "react";

export default function MicoMod2() {
    const [micoValue, setMicoValue] = useState(undefined);
    const [micoStatus, setMicoStatus] = useState(undefined);
    const [micoInput, setMicoInput] = useState("");

    const updateMicoValue = () => {
        if (micoInput == 100) {
            setMicoValue(micoInput);
            setMicoStatus("Fullcharge");
        } else if (micoInput >= 21) {
            setMicoValue(micoInput);
            setMicoStatus("Stable");
        } else if (micoInput <= 20) {
            setMicoValue(micoInput);
            setMicoStatus("Please charge");
        }

        if (micoInput == 0) {
            setMicoValue(micoInput);
            setMicoStatus("Power off");
        }
    };

    return (
        <div className="micoContainer">
            <h1>Battery Percentage Checker</h1>
            <label>Battery Percentage: <span>{micoValue}</span></label><br /><br />
            <input type="text" value={micoInput} onChange={(e) => setMicoInput(e.target.value)} placeholder="New Value" />
            <button onClick={updateMicoValue}>Check</button><br /> <br /><br />
            <label>Message: <span>{micoStatus}</span></label>

            <style jsx>{`
                .micoContainer{
                    text-align: center;
                    margin-top: 150pt;
                }
                input{
                    text-align: center;
                    border:0;
                    border-bottom: 2pt solid gray;
                    margin-right: 10pt;
                    width: 50pt;
                }

                span{
                    font-weight: bold;
                    text-decoration: underline;
                }
            `}</style>
        </div>
    );
}
