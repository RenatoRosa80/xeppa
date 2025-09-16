const express = require('express');
const app = express();
app.use(express.json());

let users = [{id:1,name:'Renato',email:'renato@example.com'}];
let businesses = [{id:1,name:'Bar do Zé',type:'bar',address:'Rua A'}];
let promotions = [{id:1,businessId:1,title:'Combo',price_cents:1200,qty:10,expiresAt:Date.now()+3*3600*1000}];

app.get('/health',(req,res)=>res.json({ok:true}));
app.get('/users',(req,res)=>res.json(users));
app.get('/businesses',(req,res)=>res.json(businesses));
app.get('/promotions',(req,res)=>res.json(promotions));

app.post('/promotions', (req,res)=>{
  const p = Object.assign({id: promotions.length+1}, req.body);
  promotions.push(p);
  res.json(p);
});

app.listen(process.env.PORT || 4000, ()=>console.log('Backend running on', process.env.PORT||4000));
