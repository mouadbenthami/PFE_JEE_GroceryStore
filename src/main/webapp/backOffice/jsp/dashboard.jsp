<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Dashboard</title>
    <link href="frontOffice/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="frontOffice/css/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a8ccccba04.js" crossorigin="anonymous"></script>
   </head>
<body id="page-top">

<script>

function filterFunction() {

	  var input, filter, ul, li, a, i;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  div = document.getElementById("myDropdown");
	  a = div.getElementsByTagName("a");
	  for (i=0; i<a.length; i++) {
	    txtValue = a[i].textContent || a[i].innerText;
	    if (txtValue.toUpperCase().indexOf(filter) > -1) {
	      a[i].style.display="";
	    } else {
	      a[i].style.display="none";
	    }
	  }
	}

</script>

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.do">
                <div class="sidebar-brand-icon"> 
                     <img src="backOffice/jsp/logo.png" alt="logo" >
                </div>
                <div class="sidebar-brand-text mx-3">Grocery Store</div>
            </a>

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fa fa-product-hunt" aria-hidden="true"></i>
                    <span>Produit</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">produit :</h6>
                        <a class="collapse-item" href="chercher.do?motCle=">Produits</a>
                        <a class="collapse-item" href="chercher.do?motCle=#myModaledit">Saisie produits</a>
                    </div>
                </div>
            </li>
            
              <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseone" aria-expanded="true" aria-controls="collapseone">
                   <i class="fa fa-car" aria-hidden="true"></i>
                    <span>Voiture</span>
                </a>
                <div id="collapseone" class="collapse" aria-labelledby="headingone" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">voiture :</h6>
                        <a class="collapse-item" href="chercherVoiture.do?motCle=">Voitures</a>
                        <a class="collapse-item" href="chercherVoiture.do?motCle=#myModaledit">Saisie voiture</a>
                    </div>
                </div>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsefour" aria-expanded="true" aria-controls="collapsefour">
                   <i class="fa fa-male" aria-hidden="true"></i>
                    <span>Livreur</span>
                </a>
                <div id="collapsefour" class="collapse" aria-labelledby="headingfour" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">livreur :</h6>
                        <a class="collapse-item" href="chercherLivreur.do?motCle=">Livreur</a>
                        <a class="collapse-item" href="chercherLivreur.do?motCle=#myModaledit">Saisie livreurs</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <span>les Commandes</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Commandes:</h6>
                        <a class="collapse-item" href="chercherCommande.do">Commandes</a>
                        <a class="collapse-item" href="chercherCommandeLivrer.do">Commandes Livrees</a>
                        <a class="collapse-item" href="chercherTache.do">les voyage</a>
                    </div>
                </div>
            </li>
            
                        <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <span>client</span>
                </a>
                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Clients:</h6>
                        <a class="collapse-item" href="chercherClient.do">clients</a>
                       
                    </div>
                </div>
            </li>



            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
 
                        <div class="input-group  navbar-search dropdown">
                            <input type="text" autocomplete="off" class="form-control bg-light border-primary border-1 small dropdown-toggle"  data-toggle="dropdown" placeholder="chercher..."   id="myInput" onkeyup="filterFunction()"> 
 
                           <div class=" dropdown-menu list-group-flush" id="myDropdown" >
                               <a href="chercher.do?motCle=" class="list-group-item list-group-item-action ">Produits</a>
                               <a href="chercher.do?motCle=#myModaledit" class="list-group-item list-group-item-action">Saisie Produit</a>
                               <a href="chercherVoiture.do?motCle=" class="list-group-item list-group-item-action">Voitures</a>
                               <a href="chercherVoiture.do?motCle=#myModaledit" class="list-group-item list-group-item-action">Saisie Voiture</a>
                               <a href="chercherLivreur.do?motCle=" class="list-group-item list-group-item-action">Livreurs</a>
                               <a href='chercherLivreur.do?motCle=#myModaledit'  class="list-group-item list-group-item-action">Saisie Livreur</a>
                               <a href="chercherCommande.do" class="list-group-item list-group-item-action ">Commandes</a>
                               <a href="chercherCommandeLivrer.do" class="list-group-item list-group-item-action ">Commandes Livrer</a>
                               <a href="chercherClient.do" class="list-group-item list-group-item-action ">Clients</a>
                               <a href="chercherTache.do" class="list-group-item list-group-item-action ">voyages</a>
                               
                          </div>
                           
                            <div class="input-group-append">
                                <button class="btn btn-primary" >
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>   
                        </div>
                               
                    
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

    
                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin</span>
                                <img class="img-profile rounded-circle" src="backOffice/jsp/profile.png">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                             
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#parametreModal">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    les param�tre
                                </a>
                               
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Se d�connecter
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-s font-weight-bold text-success  mb-1"> les gains de ce mois</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${tm } Dh</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x "></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings  -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-s font-weight-bold text-success  mb-1"> les gains totale</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${t} Dh</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x "></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                       <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-s font-weight-bold text-success  mb-1"> Nombre de clients</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${nbrcl}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-users fa-2x" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        


                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-s font-weight-bold text-success  mb-1">les commandes en attente</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${nc}</div>
                                        </div>
                                        <div class="col-auto">
                                          <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- livreur dispo-->
                         <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-s font-weight-bold text-success  mb-1">Livreurs disponible : <span class="text-secondary"> ${disp}/${livt}</span></div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"> ${livr}%</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-success" role="progressbar"
                                                            style="width: ${livr}%" aria-valuenow="${livr}" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x "></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- voiture dispo-->
                       <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-s font-weight-bold text-success  mb-1">Voitures disponible : <span class="text-secondary"> ${Vdisp}/${vlt}</span></div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"> ${vp}%</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-success" role="progressbar"
                                                            style="width: ${vp}%" aria-valuenow="${vp}" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-car fa-2x" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
 
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Pr�t � partir?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">�</span>
                    </button>
                </div>
                <div class="modal-body">S�lectionnez "D�connexion" ci-dessous si vous �tes pr�t � mettre fin � votre session en cours</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Annuler</button>
                    <a class="btn btn-primary" href="logout.do">D�connexion</a>
                </div>
            </div>
        </div>
    </div>
    
    <!-- parametre modal-->
    <div class="modal fade" id="parametreModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">changer les param�tre d'admin</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">�</span>
                    </button>
                </div>
                <div class="modal-body">
                <form action="change.do" method="post">
                <div  hidden class="form-group">
                     <label class="control-label">Nom Complet :</label>
                     <input type="text" name="nomComplet" class="form-control" value="${admin.nomComplet}"/>
                </div>
                
                <div class="form-group">
                     <label class="control-label">Email :</label>
                     <input type="text" name="email" class="form-control" value="${admin.email}"/>
                 </div>
                 
                <div class="form-group">
                      <label class="control-label">mot de pass  :</label>
                      <input type="text" name="passWord" class="form-control" value="${admin.password}"/>
                </div> 
                
                 <div class="form-group">
                      <label class="control-label">Numero de telephone :</label>
                      <input type="text" name="numTele" class="form-control" value="${admin.numeroTelephone}"/>
                </div> 
                
                 <div>
                      <button type="submit" class="btn btn-primary">Modifier</button>
                 </div>
          </form>
          </div>


                  </div>
                <div class="modal-footer">
                   <button type="button" class="btn btn-default" data-dismiss="modal">fermer</button>
                </div>
            </div>
        </div>
    </div>

    <script src="backOffice/js/jquery.min.js"></script>
    <script src="backOffice/js/bootstrap.bundle.min.js"></script>
    <script src="backOffice/js/sb-admin-2.min.js"></script>

</body>
</html>
