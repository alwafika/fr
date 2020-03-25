<?php
ob_start("ob_gzhandler");
session_start();
require_once('cpanel/setup.php'); // FUNGSI SYSTEM PANJUL CODING
switch(TRUE){
	/* DEFAULT LINK===================================================================================================================== */
	default:
				require('cpanel/database.php'); 	// FUNGSI DATABASE
				require('cpanel/forms.php'); 		// FUNGSI FORM
				require('cpanel/library.php');		// LIBRARY FUNGSI
				$record			= new ngaceng;		// MERUBAH CLASS DATABASE KE BARU
				$record->kukentukamu($_user,$_name,$_pass,$host); // MEMBUAT KONEKSI DATABASE
				require('site/default.php');		// DEFAULT SITE
				$record->ngecrotsampailemas();		// SHUTDOWN KONEKSI DATABASE AGAR TIDAK BISA DIINJECT
	break;
	
	/* TABEL LINK===================================================================================================================== */
	case($url_page=='data'):
				require_once('cpanel/table.php');	// FUNGSI DATATABLES
				require_once('site/table.php');		// SITE HALAMAN TABEL DATA
	break;
	
	/* AKSI LINK===================================================================================================================== */
	case($url_page=='aksi'):
				require_once('cpanel/database.php');
				require_once('cpanel/func.php');	// FUNGSI AKSI DATA
				$record		= new ngaceng;
				$record->kukentukamu($_user,$_name,$_pass,$host);
				require_once('site/aksi.php');		// SITE HALAMAN AKSI DATA
				$record->ngecrotsampailemas();
				
	break;
	
	/* EDIT DELETE MODAL LINK========================================================================================================== */
	case($url_page==md5('modal')):
				require_once('cpanel/database.php');
				require_once('cpanel/forms.php');
				require_once('cpanel/library.php');
				$record		= new ngaceng;
				$record->kukentukamu($_user,$_name,$_pass,$host);
				require_once('site/modal.php');		// SITE HALAMAN MODAL DATA
				$record->ngecrotsampailemas();
	break;
};
ob_end_flush();
?>