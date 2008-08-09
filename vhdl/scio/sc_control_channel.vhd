--
--
--  This file is a part of JOP, the Java Optimized Processor
--
--  Copyright (C) 2008, Jack Whitham
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <http://www.gnu.org/licenses/>.
--


--
--	sc_control_channel.vhd
--
--  32 bit parallel interface for the control channel;
--  mimics a serial port UART device. Data is sent in a packet
--  form (with a header word and zero or more payload words).
--


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned."+";
use ieee.numeric_std.all;

entity sc_control_channel is
generic (addr_bits : integer);
port (
	clk		: in std_logic;
	reset	: in std_logic;

-- SimpCon interface

	address		: in std_logic_vector(addr_bits-1 downto 0);
	wr_data		: in std_logic_vector(31 downto 0);
	rd, wr		: in std_logic;
	rd_data		: out std_logic_vector(31 downto 0);
	rdy_cnt		: out unsigned(1 downto 0);

    cc_out_data : out std_logic_vector(31 downto 0);
    cc_out_wr   : out std_logic;
    cc_out_rdy  : in std_logic;

    cc_in_data  : in std_logic_vector(31 downto 0);
    cc_in_wr    : in std_logic;
    cc_in_rdy   : out std_logic
);
end sc_control_channel;

architecture rtl of sc_control_channel is

	signal tdre		        : std_logic;
	signal rdrf		        : std_logic;
	signal cc_in_full       : std_logic;
	signal cc_in_reg        : std_logic_vector(31 downto 0);
	signal cc_out_wr_d      : std_logic;
	signal unlocked         : std_logic;


    constant TDRE_BIT       : Natural := 0;
    constant RDRF_BIT       : Natural := 1;
    constant LOCK_BIT       : Natural := 2;
    constant RELEASE_BIT    : Natural := 3;
    constant ADVANCE_BIT    : Natural := 4;


begin
	rdy_cnt <= "00";	-- no wait states

    process(clk, reset)
    begin
        if (reset='1') then
            rd_data <= ( others => '0' ) ;
            cc_in_full <= '0';
            cc_in_reg <= ( others => '0' ) ;
            cc_out_wr <= '0';
            cc_out_wr_d <= '0';
            unlocked <= '1';

        elsif rising_edge(clk) then

            if cc_in_wr = '1' then
                cc_in_reg <= cc_in_data;
                cc_in_full <= '1';
            end if;

            cc_out_wr <= cc_out_wr_d;
            cc_out_wr_d <= '0';
            if rd='1' then
                rd_data <= ( others => '0' ) ;
                -- UART-style address decoder:
                -- 0: control/status
                -- 1: data
                if address(0)='0' then
                    -- control/status (read)
                    rd_data ( LOCK_BIT ) <= unlocked;
                    rd_data ( TDRE_BIT ) <= tdre;
                    rd_data ( RDRF_BIT ) <= rdrf;
                    unlocked <= '0'; -- now it is locked.
                else
                    -- data (read data)
                    rd_data <= cc_in_reg;
                end if;
            elsif wr = '1' then
                if address(0)='0' then
                    -- control/status (write)
                    if ( wr_data ( RELEASE_BIT ) = '1' ) then
                        unlocked <= '1';
                    end if;
                    if ( wr_data ( ADVANCE_BIT ) = '1' ) then
                        cc_in_full <= '0';
                    end if;
                else
                    -- data (write data)
                    cc_out_data <= wr_data;
                    cc_out_wr_d <= '1';
                end if;
            end if;
        end if;
    end process;


    tdre <= cc_out_rdy;
    rdrf <= cc_in_full;
    cc_in_rdy <= not cc_in_full ;


end rtl;

