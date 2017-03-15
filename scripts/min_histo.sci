function n_min=min_histo(matrice)  
    
  for i = 1:256,
      if matrice(i)>0 then
          break
      end,
  end
  n_min = i-1;
  
endfunction
