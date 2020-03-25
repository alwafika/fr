<?php if (!defined('AFISYNTAX')) die('Access Denied'); 
switch($url_afi){
	default:
			header('location: '.$base_url);
	break;
	case 'Save':
				$aksi		= $record->ngesex('progdi',
												array(	
															'fakultas'				=> $input['fakultas'],
															'kodeprogdi'			=> $input['kodeprogdi'],
															'namaprogdi'			=> strtoupper($input['namaprogdi'])));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/progdi/sukses');
					break;
					default:
							header('location: '.$base_url.'/progdi/gagal');
					break;
				};
	break;
	case 'Update':
				
				$aksi		= $record->ngentot('progdi','kodeprogdi="'.$input['kode'].'"',
											array(	
															'fakultas'				=> $input['fakultas'],
															'kodeprogdi'			=> $input['kodeprogdi'],
															'namaprogdi'			=> strtoupper($input['namaprogdi'])));
				$aksi		= $record->ngentot('mahasiswa','progdi="'.$input['kode'].'"',
											array(	
															'progdi'				=> $input['kodeprogdi']));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/progdi/sukses');
					break;
					default:
							header('location: '.$base_url.'/progdi/gagal');
					break;
				};
	break;
	case 'Delete':
					$aksi		= $record->ngecrot('progdi','kodeprogdi="'.$input['kode'].'" AND kodeprogdi NOT IN(SELECT progdi FROM mahasiswa WHERE progdi="'.$input['kode'].'")');
					switch(TRUE){
						case $aksi:
								header('location: '.$base_url.'/progdi/sukses');
						break;
						default:
								header('location: '.$base_url.'/progdi/gagal');
						break;
				};
					
	break;
};
?>