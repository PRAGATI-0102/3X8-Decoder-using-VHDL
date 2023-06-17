library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity DEC_3X8 is
	port(A      : in std_logic_vector(2 downto 0);
		  E      : in std_logic;
		  Y      : out std_logic_vector(7 downto 0));
		  
end DEC_3X8;

architecture behavioural of DEC_3X8 is
begin

process(A,E)
begin

	if E = '1' then
	
		case A is
		
		when "000" =>  Y <= "00000001";
		when "001" =>  Y <= "00000010";
		when "010" =>  Y <= "00000100";
		when "011" =>  Y <= "00001000";
		when "100" =>  Y <= "00010000";
		when "101" =>  Y <= "00100000";
		when "110" =>  Y <= "01000000";
		when "111" =>  Y <= "10000000";
		when others => Y <= "00000000";
			
		end case;
		
	else
		
		Y <= "00000000";
		
	end if;

end process;

end behavioural;