// ProposalForm.js
import React, { useState } from 'react';

const ProposalForm = ({ userId }) => {
  const [title, setTitle] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch(`/api/v1/users/${userId}/proposals`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ title })
      });
      const data = await response.json();
      console.log("Proposition créée :", data);
    } catch (error) {
      console.error("Erreur lors de la création :", error);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <input type="text" value={title} onChange={(e) => setTitle(e.target.value)} placeholder="Titre de la proposition" required />
      <button type="submit">Créer</button>
    </form>
  );
};

export default ProposalForm;
