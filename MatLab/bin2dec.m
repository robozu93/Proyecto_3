function [dec] = bin2dec(binary)
q = quantizer([25 14]);
dec = bin2num(q,binary);