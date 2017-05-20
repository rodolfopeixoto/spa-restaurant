'use strict';

import Excel from './components/Excel';
import Logo from './components/Logo';
import React from 'react';
import ReactDOM from 'react-dom';

var headers = localStorage.getItem('headers');
var data = localStorage.getItem('data');

if (!headers) {
  headers = ['Título', 'Ano', 'Qualificação', 'Comentário'];
  data = [['Test', '2015', '3', 'meh']];
}

ReactDOM.render(
  <div>
    <h1>
      <Logo/> Olá, seja bem-vindo ao rogpeWine
    </h1>
    <Excel headers={headers} initialData={data}/>
  </div>,
  document.getElementById('pad')
);
