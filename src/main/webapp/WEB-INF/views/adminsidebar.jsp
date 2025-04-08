
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">
		<li class="nav-item">
			<a class="nav-link" href="admindashboard">
				<i class="bi bi-grid"></i> <span>Admin</span>
			</a>
        </li>
        <!-- End Dashboard Nav -->
                                                   

        <li class="nav-item">
        	<a class="nav-link collapse     d" data-bs-target="#users-nav" data-bs-toggle="collapse" href="#">
            	<i class="bi bi-person"></i><span>Users</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            
            <ul id="users-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
            	<li><a href="listuser"><i class="bi bi-circle"></i><span>List User</span></a></li>
            </ul>
        </li>
        <!-- End Users Nav -->
        

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#states-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-flag"></i><span>States</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="states-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li><a href="newstate"><i class="bi bi-circle"></i><span>Add State</span></a></li>
                <li><a href="liststate"><i class="bi bi-circle"></i><span>List State</span></a></li>
            </ul>
        </li>
        <!-- End States Nav -->
        

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#cities-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-building"></i><span>Cities</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="cities-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li><a href="newcity"><i class="bi bi-circle"></i><span>Add City</span></a></li>
                
                <li><a href="listcity"><i class="bi bi-circle"></i><span>List City</span></a></li>
            </ul>
        </li>
        <!-- End Cities Nav -->
        
        
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#area-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-geo-alt"></i><span>Area</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="area-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li><a href="newarea"><i class="bi bi-circle"></i><span>Add Area</span></a></li>
                <li><a href="listarea"><i class="bi bi-circle"></i><span>List Area</span></a></li>
            </ul>
        </li>
        <!-- End Area Nav -->
        
        
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#hoarding-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-tv"></i><span>Hoarding</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="hoarding-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li><a href="hoarding"><i class="bi bi-circle"></i><span>Add Hoarding</span></a></li>
                <li><a href="listhoarding"><i class="bi bi-circle"></i><span>List Hoarding</span></a></li>
            </ul>
        </li>
        <!-- End Hoarding Nav -->
        
        
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#adbooking-nav" data-bs-toggle="collapse" href="#">
               <i class="bi bi-bookmark-check"></i><span>AdBooking</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="adbooking-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li><a href="listadbooking"><i class="bi bi-circle"></i><span>List AdBooking</span></a></li>
            </ul>
        </li>
        <!-- End Adbooking Nav -->
        
        
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#payment-nav" data-bs-toggle="collapse" href="#">
               <i class="bi bi-credit-card"></i><span>Payment</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="payment-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li><a href="listpayment"><i class="bi bi-circle"></i><span>List Payment</span></a></li>
            </ul>
        </li>
        <!-- End Payment Nav -->
        

    </ul>
</aside>
