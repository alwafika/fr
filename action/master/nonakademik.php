<?php if (!defined('AFISYNTAX')) die('Access Denied'); 
switch($url_afi){
	default:
			header('location: '.$base_url);
	break;
	case 'Save':
				$aksi		= $record->ngesex('nonakademik',
												array(		
															'namabidang'			=> strtoupper($input['namabidang']),
															'tugasfungsi'			=> strtoupper($input['tugasfungsi'])));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/nonakademik/sukses');
					break;
					default:
							header('location: '.$base_url.'/nonakademik/gagal');
					break;
				};
	break;
	case 'Update':
				$aksi		= $record->ngentot('nonakademik','kodebidang="'.$input['kode'].'"',
											array(	
															'namabidang'			=> strtoupper($input['namabidang']),
															'tugasfungsi'			=> strtoupper($input['tugasfungsi'])));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/nonakademik/sukses');
					break;
					default:
							header('location: '.$base_url.'/nonakademik/gagal');
					break;
				};
	break;
	case 'Delete':
					$aksi		= $record->ngecrot('nonakademik','kodebidang="'.$input['kode'].'"');
					switch(TRUE){
						case $aksi:
								header('location: '.$base_url.'/nonakademik/sukses');
						break;
						default:
								header('location: '.$base_url.'/nonakademik/gagal');
						break;
				};
					
	break;
};
?>