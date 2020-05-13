import React, { useState, useEffect, useMemo, useCallback } from 'react';

function App(){

    const [tarefas, setTarefas] = useState([
        'Pagar conta de luz',
        'Estudar React'
    ]);

    const [count, setCount] = useState(0);
    const [soma, setSoma] = useState(5);

    const [inputText, setText] = useState([]);

    const handlerAdd = useCallback(() => {
        if(!inputText.length || inputText === ''){
            return
        }
        setTarefas([...tarefas, inputText]);
        setText([''])
    }, [inputText, tarefas]);

    useEffect(() =>{
        const sum = 5 * count;
      setSoma(sum);  
    }, [count]);

    useEffect(() => {
        if (count > 10) {
            setCount(0);
        }
    }, [count]);

    const contadorAdd = useCallback(() => {
        setCount(count + 1);
    }, [count]);

    const total = useMemo(() => 5 * count, [count]);

    return(
        <div>
            <ul>
                {tarefas.map(taf => (
                    <li key={taf}>{taf}</li>
                ))}
            </ul>

            <input type="text" value={inputText} onChange={e => setText(e.target.value)}/>

                <h1>{count} * 5 = {total}</h1>

            <button type="button" onClick={handlerAdd}>Adicionar</button>
            <button type="button" onClick={contadorAdd}>Mais</button>
        </div>
    );
}

export default App;