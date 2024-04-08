<template>
  <div class="container">
 
<div class="row">
<div class="col-3 "></div>
<div class="col-6 ">
     
              
                <div class="card border border-success">
<div class="card-header text-center bg-success " >
<h5 class="card-title fw-bold text-white m-0">Php Developer Task</h5>
</div>
 <form @submit.prevent="insertUser3" enctype="multipart/form-data" > 
<div class="card-body">


                     

  <div class="container-fluid  fw-bold">
    
<div class="row">

<div class="col-8">File</div><div class="col-4"></div>
<div class="col-8"><input class="form-control form-control-sm border-dark" type="file" v-on:change="onFileChange" id="file"></div><div class="col-4"></div>



</div>

  </div>
 
</div>

<div class="card-footer text-end">
<button type="submit" class="btn btn-success btn-sm fw-bold m-0">Submit</button>
</div>
</form>
</div>
 


</div>
<div class="col-3"></div>

</div>

<div class="row mt-2 ">
<div class="col-2"></div>
<div class="col-8">
          
            
                <div class="card border border-success">


<div class="card-header text-center bg-success" >
<h5 class="card-title fw-bold text-white  m-0">Result</h5>
</div>
<div class="card-body">

  <div class="container-fluid ">
<p class="text-dark;">Order No: <span class="fw-bold">{{Orderno}}</span> </p>
<p class="text-dark;">Supplier Code: <span class="fw-bold">{{Suplierno}} </span></p>

<table class="table table-bordered table-sm border border-dark text-center">
  <thead>
    <tr>
    
      <th class="bg-info  text-white fw-bold">Size</th>
      <th class="bg-info text-white fw-bold">Quantity</th>
    
    </tr>
  </thead>
  <tbody>

  

   <tr v-for="(arraySizes, index) in arraySize" :key="index"> 
    <td class="fw-bold">{{arraySizes}}</td>
      <td class="fw-bold">{{arrayQuantity[index]}}</td>
    </tr>
 
  
   
    <tr >
    
      <td class="bg-dark text-white fw-bold" >Total Quantity</td>
      <td class="bg-dark text-white fw-bold">{{totalFileQuantity}}</td>
    </tr>
  </tbody>
</table>
  </div>
 
</div>
<div class="col-2"></div>
</div>
    



                   
</div>
</div>
 </div>
 

</template>

<script>
    export default {
         data() {
            return {
                
                arraySize:[], 
                arrayQuantity:[],
                 Suplierno:0, 
                 Orderno:0,
                 file:{},
            }
        },
          computed:{
     
            totalFileQuantity(){

            return this.arrayQuantity.reduce((total, arrayQuantity)=>{
                return total + parseInt(arrayQuantity);
                
            },0);
          }

        },
        methods: {
             onFileChange(e){
                //console.log(e.target.files[0]);
                this.file = e.target.files[0];
            },

           
            
          insertUser3(e) {
                e.preventDefault();
               
   
                const config = {
                    headers: { 'content-type': 'multipart/form-data' }
                }
    
                let formData = new FormData();
                formData.append('file', this.file);
    
                axios.post('/phpdDeveloperTasksubmitData', formData, config)
                .then((response)=>{
                    //console.log(response.data);
this.arraySize =response.data.arraySize;
this.arrayQuantity =response.data.arrayQuantity;
this.Suplierno =response.data.Suplierno;
this.Orderno =response.data.Orderno; 

                })
               
           }
            
        },
        created() {
          
        },
        
  
    }
</script>
