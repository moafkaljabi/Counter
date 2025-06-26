----------------------------------------------------------------------------------
-- Company: Astraspecs  
-- Engineer: Moafk Aljabi
-- 
-- Create Date: 06/23/2025 07:46:15 PM
-- Design Name: 
-- Module Name: Counter - Behavioral
-- Project Name: Counter
-- Target Devices: Kria SoM
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity Counter is
    generic(
        MAX_COUNT   : integer := 9
    );
    Port (
        -- Inputs
        clk     : in std_logic;
        nRst    : in std_logic;
        enable  : in std_logic;
        
        -- Outputs
        done    : out std_logic;
        count   : out integer range 0 to MAX_COUNT
    );
end Counter;

architecture Behavioral of Counter is
    -- Signals
    signal counter_reg  : integer range 0 to MAX_COUNT := 0;
    signal done_int     : std_logic := '0';

begin

    -- Process
    process(clk)
    begin
        if rising_edge(clk) then
            if nRst = '0' then
                counter_reg     <= 0;
                done_int        <= '0';
            elsif enable = '1' then
                if counter_reg < MAX_COUNT then
                    counter_reg     <= counter_reg + 1;
                    done_int    <= '0';
                else 
                    done_int    <= '1';
                end if;
            end if;
        end if;
    end process;

    count <= counter_reg;
    done <= done_int;

end Behavioral;















