<?php if (!defined('AFISYNTAX')) die('Access Denied'); 
switch($url_afi){
	default:
			header('location: '.$base_url);
	break;
	case 'Save':
				$aksi	= $record->ngesex('makul',
												array(	
															'fakultas' 			=> $input['fakultas'],
															'progdi' 			=> $input['progdi'],
															'namamakul' 		=> strtoupper($input['namamakul']),
															'sks'				=> $input['sks'],
															'awal'				=> $input['awal'],
															'status'			=> 'AKTIF'));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/makul/sukses');
					break;
					default:
							header('location: '.$base_url.'/makul/gagal');
					break;
				};
	break;
	case 'Update':
				
				$aksi	= $record->ngentot('makul','kodemakul="'.$input['kode'].'"',
											array(	
															'namamakul' 		=> strtoupper($input['namamakul']),
															'sks'				=> $input['sks'],
															'awal'				=> $input['awal'],
															'status'			=> $input['status']));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/makul/sukses');
					break;
					default:
							header('location: '.$base_url.'/makul/gagal');
					break;
				};
	break;
	case 'Delete':
				$aksi	= $record->ngecrot('makul','kodemakul="'.$input['kode'].'"');
					switch(TRUE){
						case $aksi:
								header('location: '.$base_url.'/makul/sukses');
						break;
						default:
								header('location: '.$base_url.'/makul/gagal');
						break;
				};
					
	break;
};
?>