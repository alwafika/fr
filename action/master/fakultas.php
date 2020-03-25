<?php if (!defined('AFISYNTAX')) die('Access Denied'); 
switch($url_afi){
	default:
			header('location: '.$base_url);
	break;
	case 'Save':
				$aksi		= $record->ngesex('fakultas',
												array(	
															'kodefakultas'			=> $input['kodefakultas'],
															'namafakultas'			=> strtoupper($input['namafakultas'])));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/fakultas/sukses');
					break;
					default:
							header('location: '.$base_url.'/fakultas/gagal');
					break;
				};
	break;
	case 'Update':
				$aksi		= $record->ngentot('mahasiswa','fakultas="'.$input['kode'].'"',
											array(	
															'fakultas'				=> $input['kodefakultas']));
				$aksi		= $record->ngentot('progdi','fakultas="'.$input['kode'].'"',
											array(	
															'fakultas'				=> $input['kodefakultas']));
				$aksi		= $record->ngentot('fakultas','kodefakultas="'.$input['kode'].'"',
											array(	
															'kodefakultas'			=> $input['kodefakultas'],
															'namafakultas'			=> strtoupper($input['namafakultas'])));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/fakultas/sukses');
					break;
					default:
							header('location: '.$base_url.'/fakultas/gagal');
					break;
				};
	break;
	case 'Delete':
					$aksi		= $record->ngecrot('fakultas','kodefakultas="'.$input['kode'].'" AND kodefakultas NOT IN(SELECT fakultas FROM mahasiswa WHERE fakultas="'.$input['kode'].'")');
					switch(TRUE){
						case $aksi:
								header('location: '.$base_url.'/fakultas/sukses');
						break;
						default:
								header('location: '.$base_url.'/fakultas/gagal');
						break;
				};
					
	break;
};
?>
