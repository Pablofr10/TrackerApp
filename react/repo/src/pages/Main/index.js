import React, { useState, useCallback } from "react";
import { FaGithub, FaPlus } from "react-icons/fa";

import api from '../../services/api';

import { Component, Form, SubmitButton } from "./style";

export default function Main() {

  const [newRepo, setNewRepo] = useState("");
  const [repositorios, setRepositorios] = useState();
  const [loading, setLoading] = useState(false);

  const handleSubmit = useCallback((e) => {
    e.preventDefault();
    
    async function submit(){
      setLoading(true);

      try {
      const response = await api.get(`repos/${newRepo}`);

      const data = {
        name: response.data.full_name
      }

      setRepositorios([...repositorios, data]);
      setNewRepo('');
      } catch (error) {
        console.log(error);
      } finally {
        setLoading(false);
      }     
    }
    
    submit();   
  }, [newRepo, repositorios]);

  function handleInputChange(e){
    setNewRepo(e.target.value);
  }

  return (
    <div>
      <Component>
        <h1>
          <FaGithub size={25} />
          Meus Repositótios
        </h1>

        <Form onSubmit={handleSubmit}>
            <input type="text" value={newRepo} onChange={handleInputChange} placeholder="Adicionar Repositórios"/>

            <SubmitButton Loading={loading ? 1 : 0}>
                <FaPlus color="#fff" size={25}/>
            </SubmitButton>
        </Form>
      </Component>
    </div>
  );
}
