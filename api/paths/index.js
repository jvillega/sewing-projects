var express=require('express');
var projects=require('../models/projects');
var router=express.Router();

router.get('/projects', (req,res) => {
  console.log('testing');
  projects.get_projects((err,data) => {
    res.json(data);
  });
});

module.exports=router;
