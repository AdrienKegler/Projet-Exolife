function n_max=max_histo(matrice)  
    
  for i = 1:256,
      if matrice(257-i)>0 then
          break
      end,
  end
  n_max = 256 - i;
  
endfunction
