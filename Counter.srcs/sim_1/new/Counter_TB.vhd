----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/24/2025 12:01:57 AM
-- Design Name: 
-- Module Name: Counter_TB - Behavioral
-- Project Name: 
-- Target Devices: 
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

entity Counter_TB is 
end Counter_TB;


architecture behavior of Countet_TB is

    -- Component Under Test
    component Counter
        generic (
            MAX_COUNT:  integer := 9
        );

        port (
            clk     : in std_logic;
            nRst    : in std_logic;
            enable  : in std_logic;

            done    : out std_logic;
            count   : out integer range 0 to MAX_COUNT;
        );
    end component;

    -- Signals to connect to the CUT
    signal clk_tb       : std_logic := '0';
    signal nRst_tb      : std_logic := '0';
    signal enable_tb    : std_logic := '0';

    signal done_tb      : std_logic;
    signal count_tb     : integer range 0 to 9;

    -- Clock period definition
    constant clk_period : time : 10 ns;

begin

    -- Instantiate the Counter  
    uut: Counter 
        generic map (
            MAX_COUNT => 9
        )
        

end behavior;