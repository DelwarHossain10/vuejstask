<template>
  <div class="container">
 <div class="card  border border-success">
<div class="card-header bg-success text-white fw-bold text-center">
 Vue data table with eloquent model
</div>
<div class="card-body ">
<div class="row mb-2">
 <div class="col "><button type="button" class="btn btn-outline-success btn-sm m-0" data-bs-toggle="modal" data-bs-target="#insertModal"> <span class="">+Insert</span></button></div>
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
 <tr v-for="(user, index) in users" :key="index"> 
   <td class="fw-bold"> {{user.name}}</td>
   <td class="fw-bold">{{user.address}}</td>
   <td class="fw-bold">{{user.phone}}</td>
   <td class="fw-bold">{{user.quantity}}</td>
   <td class="fw-bold">{{user.product}}</td>
   <td class="fw-bold">{{user.amount}}</td>
   <td ><button type="button" class="btn btn-outline-primary btn-sm m-0" @click="viewData(index)"><i class="bi bi-eye-fill"></i></button>
<button type="button" class="btn btn-outline-dark btn-sm m-0" @click="editUser(index)" ><i class="bi bi-pencil-square"></i></button>
<button type="button" class="btn btn-outline-danger btn-sm  m-0"  @click="deleteUser(index)"><i class="bi bi-trash-fill"></i></button></td>
 </tr>

<tr >
   <td class="fw-bold"> </td>
   <td class="fw-bold"></td>
   <td class="fw-bold"></td>
   <td class="fw-bold">{{totalQuantity}}</td>
   <td class="fw-bold"></td>
   <td class="fw-bold">{{totalAmount}}</td>
   <td ></td>
 </tr>


</tbody>
</table>
</div>

<div class="card-footer">
  <div class="col text-end"><button type="button" class="btn btn-outline-success btn-sm m-0" @click="insertUser()"> <span class="">Submit</span></button></div>
</div>
</div>



<!-- Modal value Insert -->
<div class="modal fade" id="insertModal" tabindex="-1" aria-labelledby="insertModal" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content  border border-success">
      <div class="modal-header">
        <h5 class="modal-title text-success fw-bold  p-1" id="insertModal">Insert Form</h5>
        <button type="button" @click="closeButton()" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
       <form @submit.prevent="addUser" >
      <div class="modal-body">

     <div class="row">

         <div class="col-6">
             <div class="mb-1">
            <label for="name" class="col-form-label text-dark fw-bold">Name :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData.name" id="name">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="address" class="col-form-label text-dark fw-bold">Address :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData.address" id="address">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="Phone" class="col-form-label text-dark fw-bold">Phone :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData.phone" id="phone">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="quantity" class="col-form-label text-dark fw-bold">Quantity :</label>
            <input type="number" class="form-control form-control-sm border border-dark" v-model="userData.quantity" id="quantity">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="product" class="col-form-label text-dark fw-bold">Product :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData.product" id="product">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="amount" class="col-form-label text-dark fw-bold">Amount :</label>
            <input type="number" class="form-control form-control-sm border border-dark" v-model="userData.amount" id="amount">
          </div>
         </div>

          <div class="col-6">
             <div class="mb-1">
            <label for="amount" class="col-form-label text-dark fw-bold">Payment :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData.status" id="amount">
          </div>
         </div>
          <div class="col-6">
            
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
<div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModal" aria-hidden="true">
  <div class="modal-dialog">
   <div class="modal-content  border border-primary">
      <div class="modal-header">
       
        <h5 class="modal-title text-primary fw-bold  p-1" id="updateModal">Update Form</h5>
        <button type="button" class="btn-close" @click="closeButton()" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <form @submit.prevent="updateUser" >
      <div class="modal-body">
     
     
     <div class="row">

       
         <div class="col-6">
             <div class="mb-1">
            <label for="name" class="col-form-label text-dark fw-bold">Name :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData.name" id="name">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="address" class="col-form-label text-dark fw-bold">Address :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData.address" id="address">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="Phone" class="col-form-label text-dark fw-bold">Phone :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData.phone" id="phone">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="quantity" class="col-form-label text-dark fw-bold">Quantity :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData.quantity" id="quantity">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="product" class="col-form-label text-dark fw-bold">Product :</label>
            <input type="text" class="form-control form-control-sm border border-dark"  v-model="userData.product" id="product">
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="amount" class="col-form-label text-dark fw-bold">Amount :</label>
            <input type="text" class="form-control form-control-sm border border-dark" v-model="userData.amount" id="amount">
          </div>
         </div>

   <div class="col-6">
             <div class="mb-1">
            <label for="product" class="col-form-label text-danger fw-bold">Payment :</label>
            <input type="text" class="form-control form-control-sm border border-dark text-success"  v-model="userData.status" id="status">
          </div>
         </div>

         <div class="col-6">
            
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
<div class="modal fade" id="viewModal" tabindex="-1" aria-labelledby="viewModal" aria-hidden="true">
  <div class="modal-dialog">
   <div class="modal-content  border border-primary">
      <div class="modal-header">
       
        <h5 class="modal-title text-primary fw-bold  p-1" id="viewModal">Data View</h5>
        <button type="button" class="btn-close" @click="closeButton()" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
       
      <div class="modal-body">
     
     
     <div class="row">

       
         <div class="col-6">
             <div class="mb-1">
            <label for="name" class="col-form-label text-dark fw-bold">Name : {{userData.name}}</label>
          
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="address" class="col-form-label text-dark fw-bold">Address : {{userData.address}}</label>
        
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="Phone" class="col-form-label text-dark fw-bold">Phone : {{userData.phone}}</label>
          
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="quantity" class="col-form-label text-dark fw-bold">Quantity : {{userData.quantity}}</label>
          
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="product" class="col-form-label text-dark fw-bold">Product : {{userData.product}}</label>
           
          </div>
         </div>
         <div class="col-6">
             <div class="mb-1">
            <label for="amount" class="col-form-label text-dark fw-bold">Amount : {{userData.amount}}</label>
           
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
              users:[],
              userData:{},
               indexUpdate:0
            }
        },
        computed:{
          totalAmount(){

            return this.users.reduce((total, users)=>{
                return total + parseInt(users.amount);
                
            },0);
          },

            totalQuantity(){

            return this.users.reduce((total, users)=>{
                return total + parseInt(users.quantity);
                
            },0);
          }

        },
        methods: {
          closeButton(){
          this.userData={};
          },
          viewData(id){
             this.userData = this.users[id];
             $('#viewModal').modal('show');
              //alert(id);  
          },
            getUser(){
                axios.get('/customer')
                     .then((response)=>{
                        console.log(response);
                    this.users = response.data
                     })
            
            },
             editUser(id){
                    this.userData = this.users[id];
                    this.indexUpdate=id;
                       $('#updateModal').modal('show');
                    
                       
                        },
            updateUser() {

              console.log(this.userData);

          this.users[this.indexUpdate]= this.userData;
            
                 

              this.userData={};
                      $('#updateModal').modal('hide');
 
        },

         insertUser() {
           
                    axios.post('/submitData/'+this.users.length,this.users)
                     .then((response)=>{
                         console.log(response);
            
                     })  
            
        },
		 addUser() {
           
                    console.log(this.userData);
                    this.users.push(this.userData);
                      $('#insertModal').modal('hide');
                       this.userData={};  
            
        },
            deleteUser(id) {
       this.users.splice(id,1);
      //this.actionEvent="hi";
           
        }
        },
        created() {
           
            this.getUser();
        
          
        },
        
  
    }
</script>
