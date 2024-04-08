<template>
  <div class="container">
 
 <div class="card  border border-success">
<div class="card-header bg-success text-white fw-bold text-center">
 Vue JS CRUD Operation in Laravel
</div>
<div class="card-body ">
<div class="row mb-2">
 <div class="col "><button type="button" class="btn btn-outline-success btn-sm m-0" data-bs-toggle="modal" data-bs-target="#insertModal2"> <span class="">+Insert</span></button></div>
</div>

<table class="table table-bordered table-sm border border-success text-center">
<thead>
 <tr>
   <th class="bg-primary text-white border border-white" >Name</th>
   <th class="bg-primary text-white border border-white">Address</th>
   <th class="bg-primary text-white border border-white" >Phone</th>
   <th class="bg-primary text-white border border-white" >Quantity</th>
   <th class="bg-primary text-white border border-white">Product</th>
   <th class="bg-primary text-white border border-white">Amount</th>
   <th class="bg-primary text-white border border-white">Action</th>
 </tr>
</thead>
<tbody>
 
 <tr v-for="user in users1" :key="user.id">
   <td class="fw-bold"> {{user.name}}</td>
   <td class="fw-bold">{{user.address}}</td>
   <td class="fw-bold">{{user.phone}}</td>
   <td class="fw-bold">{{user.quantity}}</td>
   <td class="fw-bold">{{user.product}}</td>
   <td class="fw-bold">{{user.amount}}</td>
   <td ><button type="button" class="btn btn-outline-primary btn-sm m-0" @click="viewData2(user.id)"><i class="bi bi-eye-fill"></i></button>
<button type="button" class="btn btn-outline-dark btn-sm m-0" @click="editUser2(user.id)" ><i class="bi bi-pencil-square"></i></button>
<button type="button" class="btn btn-outline-danger btn-sm  m-0"  @click="deleteUser2(user.id)"><i class="bi bi-trash-fill"></i></button></td>
 </tr>

</tbody>
</table>
</div>
</div>



<!-- Modal value Insert -->
<div class="modal fade" id="insertModal2" tabindex="-1" aria-labelledby="insertModal2" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content  border border-success">
      <div class="modal-header">
        <h5 class="modal-title text-success fw-bold  p-1" id="insertModal2">Insert Form</h5>
        <button type="button" @click="closeButton2()" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
       <form @submit.prevent="insertUser2" >
      <div class="modal-body">

     <div class="row">

         <div class="col-6">
             <div class="mb-1">
            <label for="name" class="col-form-label text-dark fw-bold">Name :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.name" id="name">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="address" class="col-form-label text-dark fw-bold">Address :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.address" id="address">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="Phone" class="col-form-label text-dark fw-bold">Phone :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.phone" id="phone">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="quantity" class="col-form-label text-dark fw-bold">Quantity :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.quantity" id="quantity">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="product" class="col-form-label text-dark fw-bold">Product :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.product" id="product">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="amount" class="col-form-label text-dark fw-bold">Amount :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.amount" id="amount">
          </div>
         </div>
     </div>

        
      
       
      </div>
      <div class="modal-footer">
       
        <button type="submit" class="btn btn-success btn-sm">Save</button>
        
      </div>
       </form>
    </div>
  </div>
</div>

<!-- Modal value Update -->
<div class="modal fade" id="updateModal2" tabindex="-1" aria-labelledby="updateModal2" aria-hidden="true">
  <div class="modal-dialog">
   <div class="modal-content  border border-primary">
      <div class="modal-header">
       
        <h5 class="modal-title text-primary fw-bold  p-1" id="updateModal2">Update Form</h5>
        <button type="button" class="btn-close" @click="closeButton2()" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <form @submit.prevent="updateUser2" >
      <div class="modal-body">
     
     
     <div class="row">

       
         <div class="col-6">
             <div class="mb-1">
            <label for="name" class="col-form-label text-dark fw-bold">Name :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.name" id="name">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="address" class="col-form-label text-dark fw-bold">Address :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.address" id="address">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="Phone" class="col-form-label text-dark fw-bold">Phone :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.phone" id="phone">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="quantity" class="col-form-label text-dark fw-bold">Quantity :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.quantity" id="quantity">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="product" class="col-form-label text-dark fw-bold">Product :</label>
            <input type="text" class="form-control form-control-sm border border-dark"  v-model="userData2.product" id="product">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="amount" class="col-form-label text-dark fw-bold">Amount :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData2.amount" id="amount">
          </div>
         </div>
     </div>

        
        
       
      </div>
      <div class="modal-footer">
       
        <button type="submit" class="btn btn-primary btn-sm">Update</button>
        
      </div>
       </form>
    </div>
  </div>
</div>

<!-- Modal value View -->
<div class="modal fade" id="viewModal2" tabindex="-1" aria-labelledby="viewModal2" aria-hidden="true">
  <div class="modal-dialog">
   <div class="modal-content  border border-primary">
      <div class="modal-header">
       
        <h5 class="modal-title text-primary fw-bold  p-1" id="viewModal2">Data View</h5>
        <button type="button" class="btn-close" @click="closeButton2()" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
       
      <div class="modal-body">
     
     
     <div class="row">

       
         <div class="col-6">
             <div class="mb-1">
            <label for="name" class="col-form-label text-dark fw-bold">Name : {{userData2.name}}</label>
          
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="address" class="col-form-label text-dark fw-bold">Address : {{userData2.address}}</label>
        
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="Phone" class="col-form-label text-dark fw-bold">Phone : {{userData2.phone}}</label>
          
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="quantity" class="col-form-label text-dark fw-bold">Quantity : {{userData2.quantity}}</label>
          
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="product" class="col-form-label text-dark fw-bold">Product : {{userData2.product}}</label>
           
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="amount" class="col-form-label text-dark fw-bold">Amount : {{userData2.amount}}</label>
           
          </div>
         </div>
     </div>

        
        
       
      </div>
      
    </div>
  </div>
</div>

<!-- Chain-->


<!-- end-->
 </div>
 

</template>

<script>
    export default {
         data() {
            return {
              users1:[],
              userData2:{}
            }
        },
        methods: {
          closeButton2(){
          this.userData2={};
          },
          viewData2(id){
                  axios.get('/editData/'+id)
                     .then((response)=>{
                         console.log(response);
                         this.userData2 = response.data;
                      
                      $('#viewModal2').modal('show');
                     })
          },
            getUser2(){
                axios.get('/totalData')
                     .then((response)=>{
                         console.log(response);
                       this.users1 = response.data
                     })
            
            },
             editUser2(id){
                        console.log(id);
                         axios.get('/editData/'+id)
                     .then((response)=>{
                         console.log(response);
                         this.userData2 = response.data;
                       $('#updateModal2').modal('show');
                     })
                       
                        },
            updateUser2() {

               axios.post('/updateData',this.userData2)
                     .then((response)=>{
                         console.log(response);
                         this.getUser2();
                         this.userData2={};
                      $('#updateModal2').modal('hide');
                     
                     })
 
        },

         insertUser2() {
               axios.post('/insertData',this.userData2)
                     .then((response)=>{
                         console.log(response);
                         this.getUser2();
                      $('#insertModal2').modal('hide');
                       this.userData2={};
                     })  
            
        },
            deleteUser2(id) {
           axios.delete('/deleteData/'+id)
                     .then((response)=>{
                        this.getUser2()
                       
                     })
            
        }
        },
        created() {
            this.getUser2()
        },
        
  
    }
</script>
