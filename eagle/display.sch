<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="LED">
<packages>
<package name="MATRIX_8X8_38MM">
<description>CPD-15088 LED Matrix 8x8 38mm Green</description>
<wire x1="0" y1="0" x2="3" y2="0" width="0.127" layer="21"/>
<wire x1="3" y1="0" x2="35" y2="0" width="0.127" layer="21"/>
<wire x1="35" y1="0" x2="38" y2="0" width="0.127" layer="21"/>
<wire x1="38" y1="0" x2="38" y2="-3" width="0.127" layer="21"/>
<wire x1="38" y1="-3" x2="38" y2="-35" width="0.127" layer="21"/>
<wire x1="38" y1="-35" x2="38" y2="-38" width="0.127" layer="21"/>
<wire x1="38" y1="-38" x2="35" y2="-38" width="0.127" layer="21"/>
<wire x1="35" y1="-38" x2="20" y2="-38" width="0.127" layer="21"/>
<wire x1="20" y1="-38" x2="18" y2="-38" width="0.127" layer="21"/>
<wire x1="18" y1="-38" x2="3" y2="-38" width="0.127" layer="21"/>
<wire x1="3" y1="-38" x2="0" y2="-38" width="0.127" layer="21"/>
<wire x1="0" y1="-38" x2="0" y2="-35" width="0.127" layer="21"/>
<wire x1="0" y1="-35" x2="0" y2="-3" width="0.127" layer="21"/>
<wire x1="0" y1="-3" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="18" y1="-38" x2="20" y2="-38" width="0.127" layer="21" curve="-180"/>
<pad name="1" x="10.16" y="-33.02" drill="0.5" diameter="1.8" shape="square" first="yes"/>
<pad name="2" x="12.7" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="3" x="15.24" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="4" x="17.78" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="5" x="20.32" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="6" x="22.86" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="7" x="25.4" y="-33.02" drill="0.5" diameter="1.8"/>
<pad name="8" x="27.94" y="-33.02" drill="0.5" diameter="1.8"/>
<wire x1="0" y1="-3" x2="0.5" y2="-3" width="0.127" layer="21"/>
<wire x1="0.5" y1="-3" x2="0.5" y2="-0.5" width="0.127" layer="21"/>
<wire x1="0.5" y1="-0.5" x2="3" y2="-0.5" width="0.127" layer="21"/>
<wire x1="3" y1="-0.5" x2="3" y2="0" width="0.127" layer="21"/>
<wire x1="35" y1="0" x2="35" y2="-0.5" width="0.127" layer="21"/>
<wire x1="35" y1="-0.5" x2="37.5" y2="-0.5" width="0.127" layer="21"/>
<wire x1="37.5" y1="-0.5" x2="37.5" y2="-3" width="0.127" layer="21"/>
<wire x1="37.5" y1="-3" x2="38" y2="-3" width="0.127" layer="21"/>
<wire x1="35" y1="-38" x2="35" y2="-37.5" width="0.127" layer="21"/>
<wire x1="35" y1="-37.5" x2="37.5" y2="-37.5" width="0.127" layer="21"/>
<wire x1="37.5" y1="-37.5" x2="37.5" y2="-35" width="0.127" layer="21"/>
<wire x1="37.5" y1="-35" x2="38" y2="-35" width="0.127" layer="21"/>
<wire x1="0" y1="-35" x2="0.5" y2="-35" width="0.127" layer="21"/>
<wire x1="0.5" y1="-35" x2="0.5" y2="-37" width="0.127" layer="21"/>
<wire x1="0.5" y1="-37" x2="0.5" y2="-37.5" width="0.127" layer="21"/>
<wire x1="0.5" y1="-37.5" x2="3" y2="-37.5" width="0.127" layer="21"/>
<wire x1="3" y1="-37.5" x2="3" y2="-38" width="0.127" layer="21"/>
<text x="1.27" y="-2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="1.27" y="-36.83" size="1.27" layer="27">CPD-15088</text>
<pad name="9" x="27.94" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="10" x="25.4" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="11" x="22.86" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="12" x="20.32" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="13" x="17.78" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="14" x="15.24" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="15" x="12.7" y="-5.08" drill="0.5" diameter="1.8"/>
<pad name="16" x="10.16" y="-5.08" drill="0.5" diameter="1.8"/>
</package>
<package name="MATRIX_8X8_20MM">
<description>LED Matrix 8x8 20mm RED 07088BH</description>
<wire x1="0" y1="0" x2="1" y2="0" width="0.127" layer="21"/>
<wire x1="1" y1="0" x2="20" y2="0" width="0.127" layer="21"/>
<wire x1="20" y1="0" x2="20" y2="20" width="0.127" layer="21"/>
<wire x1="20" y1="20" x2="0" y2="20" width="0.127" layer="21"/>
<wire x1="0" y1="20" x2="0" y2="1" width="0.127" layer="21"/>
<pad name="P$1" x="1.25" y="2.5" drill="0.8" shape="square" first="yes"/>
<pad name="P$2" x="3.75" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$3" x="6.25" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$4" x="8.75" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$5" x="11.25" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$6" x="13.75" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$7" x="16.25" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$8" x="18.75" y="2.5" drill="0.8" shape="octagon"/>
<pad name="P$9" x="18.8" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$10" x="16.3" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$11" x="13.8" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$12" x="11.3" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$13" x="8.8" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$14" x="6.3" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$15" x="3.8" y="17.5" drill="0.8" shape="octagon"/>
<pad name="P$16" x="1.3" y="17.5" drill="0.8" shape="octagon"/>
<wire x1="0" y1="1" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="1" x2="1" y2="0" width="0.127" layer="21"/>
<text x="0" y="20.32" size="1.27" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="LED_8X8_MATRIX">
<description>8x8 LED matrix</description>
<wire x1="0" y1="0" x2="22.86" y2="0" width="0.254" layer="94"/>
<wire x1="22.86" y1="0" x2="22.86" y2="-22.86" width="0.254" layer="94"/>
<wire x1="22.86" y1="-22.86" x2="0" y2="-22.86" width="0.254" layer="94"/>
<wire x1="0" y1="-22.86" x2="0" y2="0" width="0.254" layer="94"/>
<text x="1.27" y="0.508" size="1.27" layer="94">&gt;NAME</text>
<pin name="ROW1" x="-2.54" y="-2.54" length="short"/>
<pin name="ROW2" x="-2.54" y="-5.08" length="short"/>
<pin name="ROW3" x="-2.54" y="-7.62" length="short"/>
<pin name="ROW4" x="-2.54" y="-10.16" length="short"/>
<pin name="ROW5" x="-2.54" y="-12.7" length="short"/>
<pin name="ROW6" x="-2.54" y="-15.24" length="short"/>
<pin name="ROW7" x="-2.54" y="-17.78" length="short"/>
<pin name="ROW8" x="-2.54" y="-20.32" length="short"/>
<pin name="COL1" x="25.4" y="-2.54" length="short" rot="R180"/>
<pin name="COL2" x="25.4" y="-5.08" length="short" rot="R180"/>
<pin name="COL3" x="25.4" y="-7.62" length="short" rot="R180"/>
<pin name="COL4" x="25.4" y="-10.16" length="short" rot="R180"/>
<pin name="COL5" x="25.4" y="-12.7" length="short" rot="R180"/>
<pin name="COL6" x="25.4" y="-15.24" length="short" rot="R180"/>
<pin name="COL7" x="25.4" y="-17.78" length="short" rot="R180"/>
<pin name="COL8" x="25.4" y="-20.32" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED_8X8_MATRIX">
<description>CPD-15088A YGD2/A Green 8x8 LED matrix</description>
<gates>
<gate name="G$1" symbol="LED_8X8_MATRIX" x="25.4" y="-20.32"/>
</gates>
<devices>
<device name="YGD2/A" package="MATRIX_8X8_38MM">
<connects>
<connect gate="G$1" pin="COL1" pad="13"/>
<connect gate="G$1" pin="COL2" pad="3"/>
<connect gate="G$1" pin="COL3" pad="4"/>
<connect gate="G$1" pin="COL4" pad="10"/>
<connect gate="G$1" pin="COL5" pad="6"/>
<connect gate="G$1" pin="COL6" pad="11"/>
<connect gate="G$1" pin="COL7" pad="15"/>
<connect gate="G$1" pin="COL8" pad="16"/>
<connect gate="G$1" pin="ROW1" pad="9"/>
<connect gate="G$1" pin="ROW2" pad="14"/>
<connect gate="G$1" pin="ROW3" pad="8"/>
<connect gate="G$1" pin="ROW4" pad="12"/>
<connect gate="G$1" pin="ROW5" pad="1"/>
<connect gate="G$1" pin="ROW6" pad="7"/>
<connect gate="G$1" pin="ROW7" pad="2"/>
<connect gate="G$1" pin="ROW8" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="07088BH" package="MATRIX_8X8_20MM">
<connects>
<connect gate="G$1" pin="COL1" pad="P$13"/>
<connect gate="G$1" pin="COL2" pad="P$3"/>
<connect gate="G$1" pin="COL3" pad="P$4"/>
<connect gate="G$1" pin="COL4" pad="P$10"/>
<connect gate="G$1" pin="COL5" pad="P$6"/>
<connect gate="G$1" pin="COL6" pad="P$11"/>
<connect gate="G$1" pin="COL7" pad="P$15"/>
<connect gate="G$1" pin="COL8" pad="P$16"/>
<connect gate="G$1" pin="ROW1" pad="P$5"/>
<connect gate="G$1" pin="ROW2" pad="P$2"/>
<connect gate="G$1" pin="ROW3" pad="P$7"/>
<connect gate="G$1" pin="ROW4" pad="P$1"/>
<connect gate="G$1" pin="ROW5" pad="P$12"/>
<connect gate="G$1" pin="ROW6" pad="P$8"/>
<connect gate="G$1" pin="ROW7" pad="P$14"/>
<connect gate="G$1" pin="ROW8" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead-1.27">
<packages>
<package name="FEMALE-2X40">
<pad name="P$1" x="1" y="0.873" drill="0.6" diameter="1.016" shape="square"/>
<pad name="P$2" x="1" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$3" x="2.27" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$4" x="2.27" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$5" x="3.54" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$6" x="3.54" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$7" x="4.81" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$8" x="4.81" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$9" x="6.08" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$10" x="6.08" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$11" x="7.35" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$12" x="7.35" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$13" x="8.62" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$14" x="8.62" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$15" x="9.89" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$16" x="9.89" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$17" x="11.16" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$18" x="11.16" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$19" x="12.43" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$20" x="12.43" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$21" x="13.7" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$22" x="13.7" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$23" x="14.97" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$24" x="14.97" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$25" x="16.24" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$26" x="16.24" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$27" x="17.51" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$28" x="17.51" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$29" x="18.78" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$30" x="18.78" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$31" x="20.05" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$32" x="20.05" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$33" x="21.32" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$34" x="21.32" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$35" x="22.59" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$36" x="22.59" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$37" x="23.86" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$38" x="23.86" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$39" x="25.13" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$40" x="25.13" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$41" x="26.4" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$42" x="26.4" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$43" x="27.67" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$44" x="27.67" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$45" x="28.94" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$46" x="28.94" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$47" x="30.21" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$48" x="30.21" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$49" x="31.48" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$50" x="31.48" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$51" x="32.75" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$52" x="32.75" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$53" x="34.02" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$54" x="34.02" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$55" x="35.29" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$56" x="35.29" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$57" x="36.56" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$58" x="36.56" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$59" x="37.83" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$60" x="37.83" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$61" x="39.1" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$62" x="39.1" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$63" x="40.37" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$64" x="40.37" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$65" x="41.64" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$66" x="41.64" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$67" x="42.91" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$68" x="42.91" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$69" x="44.18" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$70" x="44.18" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$71" x="45.45" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$72" x="45.45" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$73" x="46.72" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$74" x="46.72" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$75" x="47.99" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$76" x="47.99" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$77" x="49.26" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$78" x="49.26" y="2.143" drill="0.6" diameter="1.016"/>
<pad name="P$79" x="50.53" y="0.873" drill="0.6" diameter="1.016"/>
<pad name="P$80" x="50.53" y="2.143" drill="0.6" diameter="1.016"/>
<wire x1="0" y1="0" x2="0" y2="3" width="0.127" layer="21"/>
<wire x1="0" y1="3" x2="51.6" y2="3" width="0.127" layer="21"/>
<wire x1="0" y1="0" x2="51.6" y2="0" width="0.127" layer="21"/>
<wire x1="51.6" y1="0" x2="51.6" y2="3" width="0.127" layer="21"/>
</package>
<package name="MALE-2X40">
<pad name="P$1" x="1" y="0.873" drill="0.7" diameter="1.016" shape="square"/>
<pad name="P$2" x="1" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$3" x="2.27" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$4" x="2.27" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$5" x="3.54" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$6" x="3.54" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$7" x="4.81" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$8" x="4.81" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$9" x="6.08" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$10" x="6.08" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$11" x="7.35" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$12" x="7.35" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$13" x="8.62" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$14" x="8.62" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$15" x="9.89" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$16" x="9.89" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$17" x="11.16" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$18" x="11.16" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$19" x="12.43" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$20" x="12.43" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$21" x="13.7" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$22" x="13.7" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$23" x="14.97" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$24" x="14.97" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$25" x="16.24" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$26" x="16.24" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$27" x="17.51" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$28" x="17.51" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$29" x="18.78" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$30" x="18.78" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$31" x="20.05" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$32" x="20.05" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$33" x="21.32" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$34" x="21.32" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$35" x="22.59" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$36" x="22.59" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$37" x="23.86" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$38" x="23.86" y="2.143" drill="0.7" diameter="1.016"/>
<pad name="P$39" x="25.13" y="0.873" drill="0.7" diameter="1.016"/>
<pad name="P$40" x="25.13" y="2.143" drill="0.7" diameter="1.016"/>
<wire x1="0" y1="0" x2="0" y2="5" width="0.127" layer="21"/>
<wire x1="0" y1="5" x2="26" y2="5" width="0.127" layer="21"/>
<wire x1="26" y1="5" x2="26" y2="0" width="0.127" layer="21"/>
<wire x1="26" y1="0" x2="0" y2="0" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD-2X40">
<pin name="P$1" x="-5.08" y="-2.54" length="middle"/>
<pin name="P$2" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="P$3" x="-5.08" y="-5.08" length="middle"/>
<pin name="P$4" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="P$5" x="-5.08" y="-7.62" length="middle"/>
<pin name="P$6" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="P$7" x="-5.08" y="-10.16" length="middle"/>
<pin name="P$8" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="P$9" x="-5.08" y="-12.7" length="middle"/>
<pin name="P$10" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="P$11" x="-5.08" y="-15.24" length="middle"/>
<pin name="P$12" x="20.32" y="-15.24" length="middle" rot="R180"/>
<pin name="P$13" x="-5.08" y="-17.78" length="middle"/>
<pin name="P$14" x="20.32" y="-17.78" length="middle" rot="R180"/>
<pin name="P$15" x="-5.08" y="-20.32" length="middle"/>
<pin name="P$16" x="20.32" y="-20.32" length="middle" rot="R180"/>
<pin name="P$17" x="-5.08" y="-22.86" length="middle"/>
<pin name="P$18" x="20.32" y="-22.86" length="middle" rot="R180"/>
<pin name="P$19" x="-5.08" y="-25.4" length="middle"/>
<pin name="P$20" x="20.32" y="-25.4" length="middle" rot="R180"/>
<pin name="P$21" x="-5.08" y="-27.94" length="middle"/>
<pin name="P$22" x="20.32" y="-27.94" length="middle" rot="R180"/>
<pin name="P$23" x="-5.08" y="-30.48" length="middle"/>
<pin name="P$24" x="20.32" y="-30.48" length="middle" rot="R180"/>
<pin name="P$25" x="-5.08" y="-33.02" length="middle"/>
<pin name="P$26" x="20.32" y="-33.02" length="middle" rot="R180"/>
<pin name="P$27" x="-5.08" y="-35.56" length="middle"/>
<pin name="P$28" x="20.32" y="-35.56" length="middle" rot="R180"/>
<pin name="P$29" x="-5.08" y="-38.1" length="middle"/>
<pin name="P$30" x="20.32" y="-38.1" length="middle" rot="R180"/>
<pin name="P$31" x="-5.08" y="-40.64" length="middle"/>
<pin name="P$32" x="20.32" y="-40.64" length="middle" rot="R180"/>
<pin name="P$33" x="-5.08" y="-43.18" length="middle"/>
<pin name="P$34" x="20.32" y="-43.18" length="middle" rot="R180"/>
<pin name="P$35" x="-5.08" y="-45.72" length="middle"/>
<pin name="P$36" x="20.32" y="-45.72" length="middle" rot="R180"/>
<pin name="P$37" x="-5.08" y="-48.26" length="middle"/>
<pin name="P$38" x="20.32" y="-48.26" length="middle" rot="R180"/>
<pin name="P$39" x="-5.08" y="-50.8" length="middle"/>
<pin name="P$40" x="20.32" y="-50.8" length="middle" rot="R180"/>
<pin name="P$41" x="-5.08" y="-53.34" length="middle"/>
<pin name="P$42" x="20.32" y="-53.34" length="middle" rot="R180"/>
<pin name="P$43" x="-5.08" y="-55.88" length="middle"/>
<pin name="P$44" x="20.32" y="-55.88" length="middle" rot="R180"/>
<pin name="P$45" x="-5.08" y="-58.42" length="middle"/>
<pin name="P$46" x="20.32" y="-58.42" length="middle" rot="R180"/>
<pin name="P$47" x="-5.08" y="-60.96" length="middle"/>
<pin name="P$48" x="20.32" y="-60.96" length="middle" rot="R180"/>
<pin name="P$49" x="-5.08" y="-63.5" length="middle"/>
<pin name="P$50" x="20.32" y="-63.5" length="middle" rot="R180"/>
<pin name="P$51" x="-5.08" y="-66.04" length="middle"/>
<pin name="P$52" x="20.32" y="-66.04" length="middle" rot="R180"/>
<pin name="P$53" x="-5.08" y="-68.58" length="middle"/>
<pin name="P$54" x="20.32" y="-68.58" length="middle" rot="R180"/>
<pin name="P$55" x="-5.08" y="-71.12" length="middle"/>
<pin name="P$56" x="20.32" y="-71.12" length="middle" rot="R180"/>
<pin name="P$57" x="-5.08" y="-73.66" length="middle"/>
<pin name="P$58" x="20.32" y="-73.66" length="middle" rot="R180"/>
<pin name="P$59" x="-5.08" y="-76.2" length="middle"/>
<pin name="P$60" x="20.32" y="-76.2" length="middle" rot="R180"/>
<pin name="P$61" x="-5.08" y="-78.74" length="middle"/>
<pin name="P$62" x="20.32" y="-78.74" length="middle" rot="R180"/>
<pin name="P$63" x="-5.08" y="-81.28" length="middle"/>
<pin name="P$64" x="20.32" y="-81.28" length="middle" rot="R180"/>
<pin name="P$65" x="-5.08" y="-83.82" length="middle"/>
<pin name="P$66" x="20.32" y="-83.82" length="middle" rot="R180"/>
<pin name="P$67" x="-5.08" y="-86.36" length="middle"/>
<pin name="P$68" x="20.32" y="-86.36" length="middle" rot="R180"/>
<pin name="P$69" x="-5.08" y="-88.9" length="middle"/>
<pin name="P$70" x="20.32" y="-88.9" length="middle" rot="R180"/>
<pin name="P$71" x="-5.08" y="-91.44" length="middle"/>
<pin name="P$72" x="20.32" y="-91.44" length="middle" rot="R180"/>
<pin name="P$73" x="-5.08" y="-93.98" length="middle"/>
<pin name="P$74" x="20.32" y="-93.98" length="middle" rot="R180"/>
<pin name="P$75" x="-5.08" y="-96.52" length="middle"/>
<pin name="P$76" x="20.32" y="-96.52" length="middle" rot="R180"/>
<pin name="P$77" x="-5.08" y="-99.06" length="middle"/>
<pin name="P$78" x="20.32" y="-99.06" length="middle" rot="R180"/>
<pin name="P$79" x="-5.08" y="-101.6" length="middle"/>
<pin name="P$80" x="20.32" y="-101.6" length="middle" rot="R180"/>
<wire x1="0" y1="0" x2="15.24" y2="0" width="0.254" layer="94"/>
<wire x1="15.24" y1="0" x2="15.24" y2="-104.14" width="0.254" layer="94"/>
<wire x1="15.24" y1="-104.14" x2="0" y2="-104.14" width="0.254" layer="94"/>
<wire x1="0" y1="-104.14" x2="0" y2="0" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-2X40">
<gates>
<gate name="G$1" symbol="PINHD-2X40" x="0" y="-2.54"/>
</gates>
<devices>
<device name="FEMALE" package="FEMALE-2X40">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$10" pad="P$10"/>
<connect gate="G$1" pin="P$11" pad="P$11"/>
<connect gate="G$1" pin="P$12" pad="P$12"/>
<connect gate="G$1" pin="P$13" pad="P$13"/>
<connect gate="G$1" pin="P$14" pad="P$14"/>
<connect gate="G$1" pin="P$15" pad="P$15"/>
<connect gate="G$1" pin="P$16" pad="P$16"/>
<connect gate="G$1" pin="P$17" pad="P$17"/>
<connect gate="G$1" pin="P$18" pad="P$18"/>
<connect gate="G$1" pin="P$19" pad="P$19"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$20" pad="P$20"/>
<connect gate="G$1" pin="P$21" pad="P$21"/>
<connect gate="G$1" pin="P$22" pad="P$22"/>
<connect gate="G$1" pin="P$23" pad="P$23"/>
<connect gate="G$1" pin="P$24" pad="P$24"/>
<connect gate="G$1" pin="P$25" pad="P$25"/>
<connect gate="G$1" pin="P$26" pad="P$26"/>
<connect gate="G$1" pin="P$27" pad="P$27"/>
<connect gate="G$1" pin="P$28" pad="P$28"/>
<connect gate="G$1" pin="P$29" pad="P$29"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$30" pad="P$30"/>
<connect gate="G$1" pin="P$31" pad="P$31"/>
<connect gate="G$1" pin="P$32" pad="P$32"/>
<connect gate="G$1" pin="P$33" pad="P$33"/>
<connect gate="G$1" pin="P$34" pad="P$34"/>
<connect gate="G$1" pin="P$35" pad="P$35"/>
<connect gate="G$1" pin="P$36" pad="P$36"/>
<connect gate="G$1" pin="P$37" pad="P$37"/>
<connect gate="G$1" pin="P$38" pad="P$38"/>
<connect gate="G$1" pin="P$39" pad="P$39"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
<connect gate="G$1" pin="P$40" pad="P$40"/>
<connect gate="G$1" pin="P$41" pad="P$41"/>
<connect gate="G$1" pin="P$42" pad="P$42"/>
<connect gate="G$1" pin="P$43" pad="P$43"/>
<connect gate="G$1" pin="P$44" pad="P$44"/>
<connect gate="G$1" pin="P$45" pad="P$45"/>
<connect gate="G$1" pin="P$46" pad="P$46"/>
<connect gate="G$1" pin="P$47" pad="P$47"/>
<connect gate="G$1" pin="P$48" pad="P$48"/>
<connect gate="G$1" pin="P$49" pad="P$49"/>
<connect gate="G$1" pin="P$5" pad="P$5"/>
<connect gate="G$1" pin="P$50" pad="P$50"/>
<connect gate="G$1" pin="P$51" pad="P$51"/>
<connect gate="G$1" pin="P$52" pad="P$52"/>
<connect gate="G$1" pin="P$53" pad="P$53"/>
<connect gate="G$1" pin="P$54" pad="P$54"/>
<connect gate="G$1" pin="P$55" pad="P$55"/>
<connect gate="G$1" pin="P$56" pad="P$56"/>
<connect gate="G$1" pin="P$57" pad="P$57"/>
<connect gate="G$1" pin="P$58" pad="P$58"/>
<connect gate="G$1" pin="P$59" pad="P$59"/>
<connect gate="G$1" pin="P$6" pad="P$6"/>
<connect gate="G$1" pin="P$60" pad="P$60"/>
<connect gate="G$1" pin="P$61" pad="P$61"/>
<connect gate="G$1" pin="P$62" pad="P$62"/>
<connect gate="G$1" pin="P$63" pad="P$63"/>
<connect gate="G$1" pin="P$64" pad="P$64"/>
<connect gate="G$1" pin="P$65" pad="P$65"/>
<connect gate="G$1" pin="P$66" pad="P$66"/>
<connect gate="G$1" pin="P$67" pad="P$67"/>
<connect gate="G$1" pin="P$68" pad="P$68"/>
<connect gate="G$1" pin="P$69" pad="P$69"/>
<connect gate="G$1" pin="P$7" pad="P$7"/>
<connect gate="G$1" pin="P$70" pad="P$70"/>
<connect gate="G$1" pin="P$71" pad="P$71"/>
<connect gate="G$1" pin="P$72" pad="P$72"/>
<connect gate="G$1" pin="P$73" pad="P$73"/>
<connect gate="G$1" pin="P$74" pad="P$74"/>
<connect gate="G$1" pin="P$75" pad="P$75"/>
<connect gate="G$1" pin="P$76" pad="P$76"/>
<connect gate="G$1" pin="P$77" pad="P$77"/>
<connect gate="G$1" pin="P$78" pad="P$78"/>
<connect gate="G$1" pin="P$79" pad="P$79"/>
<connect gate="G$1" pin="P$8" pad="P$8"/>
<connect gate="G$1" pin="P$80" pad="P$80"/>
<connect gate="G$1" pin="P$9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MALE" package="MALE-2X40">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$10" pad="P$10"/>
<connect gate="G$1" pin="P$11" pad="P$11"/>
<connect gate="G$1" pin="P$12" pad="P$12"/>
<connect gate="G$1" pin="P$13" pad="P$13"/>
<connect gate="G$1" pin="P$14" pad="P$14"/>
<connect gate="G$1" pin="P$15" pad="P$15"/>
<connect gate="G$1" pin="P$16" pad="P$16"/>
<connect gate="G$1" pin="P$17" pad="P$17"/>
<connect gate="G$1" pin="P$18" pad="P$18"/>
<connect gate="G$1" pin="P$19" pad="P$19"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$20" pad="P$20"/>
<connect gate="G$1" pin="P$21" pad="P$21"/>
<connect gate="G$1" pin="P$22" pad="P$22"/>
<connect gate="G$1" pin="P$23" pad="P$23"/>
<connect gate="G$1" pin="P$24" pad="P$24"/>
<connect gate="G$1" pin="P$25" pad="P$25"/>
<connect gate="G$1" pin="P$26" pad="P$26"/>
<connect gate="G$1" pin="P$27" pad="P$27"/>
<connect gate="G$1" pin="P$28" pad="P$28"/>
<connect gate="G$1" pin="P$29" pad="P$29"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$30" pad="P$30"/>
<connect gate="G$1" pin="P$31" pad="P$31"/>
<connect gate="G$1" pin="P$32" pad="P$32"/>
<connect gate="G$1" pin="P$33" pad="P$33"/>
<connect gate="G$1" pin="P$34" pad="P$34"/>
<connect gate="G$1" pin="P$35" pad="P$35"/>
<connect gate="G$1" pin="P$36" pad="P$36"/>
<connect gate="G$1" pin="P$37" pad="P$37"/>
<connect gate="G$1" pin="P$38" pad="P$38"/>
<connect gate="G$1" pin="P$39" pad="P$39"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
<connect gate="G$1" pin="P$40" pad="P$40"/>
<connect gate="G$1" pin="P$5" pad="P$5"/>
<connect gate="G$1" pin="P$6" pad="P$6"/>
<connect gate="G$1" pin="P$7" pad="P$7"/>
<connect gate="G$1" pin="P$8" pad="P$8"/>
<connect gate="G$1" pin="P$9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="LED1" library="LED" deviceset="LED_8X8_MATRIX" device="07088BH"/>
<part name="LED2" library="LED" deviceset="LED_8X8_MATRIX" device="07088BH"/>
<part name="LED3" library="LED" deviceset="LED_8X8_MATRIX" device="07088BH"/>
<part name="LED4" library="LED" deviceset="LED_8X8_MATRIX" device="07088BH"/>
<part name="LED5" library="LED" deviceset="LED_8X8_MATRIX" device="07088BH"/>
<part name="U$6" library="pinhead-1.27" deviceset="PINHD-2X40" device="FEMALE"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="205.74" y="55.88" size="1.778" layer="91">Cathodes</text>
<text x="205.74" y="35.56" size="1.778" layer="91">Anodes</text>
</plain>
<instances>
<instance part="LED1" gate="G$1" x="45.72" y="91.44">
<attribute name="NAME" x="46.99" y="91.948" size="1.27" layer="94"/>
</instance>
<instance part="LED2" gate="G$1" x="86.36" y="91.44">
<attribute name="NAME" x="87.63" y="91.948" size="1.27" layer="94"/>
</instance>
<instance part="LED3" gate="G$1" x="127" y="91.44">
<attribute name="NAME" x="128.27" y="91.948" size="1.27" layer="94"/>
</instance>
<instance part="LED4" gate="G$1" x="167.64" y="91.44">
<attribute name="NAME" x="168.91" y="91.948" size="1.27" layer="94"/>
</instance>
<instance part="LED5" gate="G$1" x="208.28" y="91.44">
<attribute name="NAME" x="209.55" y="91.948" size="1.27" layer="94"/>
</instance>
<instance part="U$6" gate="G$1" x="101.6" y="38.1" rot="R90"/>
</instances>
<busses>
<bus name="MX1_ANODE1,MX1_ANODE2,MX1_ANODE3,MX1_ANODE4,MX1_ANODE5,MX1_ANODE6,MX1_ANODE7,MX1_ANODE8,MX1_CATHODE1,MX1_CATHODE2,MX1_CATHODE3,MX1_CATHODE4,MX1_CATHODE5,MX1_CATHODE6,MX1_CATHODE7,MX1_CATHODE8,MX2_ANODE1,MX2_ANODE2,MX2_ANODE3,MX2_ANODE4,MX2_ANODE5,MX2_ANODE6,MX2_ANODE7,MX2_ANODE8,MX2_CATHODE1,MX2_CATHODE2,MX2_CATHODE3,MX2_CATHODE4,MX2_CATHODE5,MX2_CATHODE6,MX2_CATHODE7,MX2_CATHODE8,MX3_ANODE1,MX3_ANODE2,MX3_ANODE3,MX3_ANODE4,MX3_ANODE5,MX3_ANODE6,MX3_ANODE7,MX3_ANODE8,MX3_CATHODE1,MX3_CATHODE2,MX3_CATHODE3,MX3_CATHODE4,MX3_CATHODE5,MX3_CATHODE6,MX3_CATHODE7,MX3_CATHODE8,MX4_ANODE1,MX4_ANODE2,MX4_ANODE3,MX4_ANODE4,MX4_ANODE5,MX4_ANODE6,MX4_ANODE7,MX4_ANODE8,MX4_CATHODE1,MX4_CATHODE2,MX4_CATHODE3,MX4_CATHODE4,MX4_CATHODE5,MX4_CATHODE6,MX4_CATHODE7,MX4_CATHODE8,MX5_ANODE1,MX5_ANODE2,MX5_ANODE3,MX5_ANODE4,MX5_ANODE5,MX5_ANODE6,MX5_ANODE7,MX5_ANODE8,MX5_CATHODE1,MX5_CATHODE2,MX5_CATHODE3,MX5_CATHODE4,MX5_CATHODE5,MX5_CATHODE6,MX5_CATHODE7,MX5_CATHODE8">
<segment>
<wire x1="38.1" y1="66.04" x2="76.2" y2="66.04" width="0.762" layer="92"/>
<wire x1="76.2" y1="66.04" x2="78.74" y2="66.04" width="0.762" layer="92"/>
<wire x1="78.74" y1="66.04" x2="96.52" y2="66.04" width="0.762" layer="92"/>
<wire x1="96.52" y1="66.04" x2="116.84" y2="66.04" width="0.762" layer="92"/>
<wire x1="116.84" y1="66.04" x2="119.38" y2="66.04" width="0.762" layer="92"/>
<wire x1="119.38" y1="66.04" x2="157.48" y2="66.04" width="0.762" layer="92"/>
<wire x1="157.48" y1="66.04" x2="160.02" y2="66.04" width="0.762" layer="92"/>
<wire x1="160.02" y1="66.04" x2="198.12" y2="66.04" width="0.762" layer="92"/>
<wire x1="198.12" y1="66.04" x2="200.66" y2="66.04" width="0.762" layer="92"/>
<wire x1="200.66" y1="66.04" x2="238.76" y2="66.04" width="0.762" layer="92"/>
<wire x1="96.52" y1="66.04" x2="96.52" y2="27.94" width="0.762" layer="92"/>
<wire x1="96.52" y1="27.94" x2="203.2" y2="27.94" width="0.762" layer="92"/>
<wire x1="38.1" y1="66.04" x2="38.1" y2="88.9" width="0.762" layer="92"/>
<wire x1="76.2" y1="66.04" x2="76.2" y2="88.9" width="0.762" layer="92"/>
<wire x1="78.74" y1="66.04" x2="78.74" y2="88.9" width="0.762" layer="92"/>
<wire x1="116.84" y1="66.04" x2="116.84" y2="88.9" width="0.762" layer="92"/>
<wire x1="119.38" y1="66.04" x2="119.38" y2="88.9" width="0.762" layer="92"/>
<wire x1="157.48" y1="66.04" x2="157.48" y2="88.9" width="0.762" layer="92"/>
<wire x1="160.02" y1="66.04" x2="160.02" y2="88.9" width="0.762" layer="92"/>
<wire x1="198.12" y1="66.04" x2="198.12" y2="88.9" width="0.762" layer="92"/>
<wire x1="200.66" y1="66.04" x2="200.66" y2="88.9" width="0.762" layer="92"/>
<wire x1="238.76" y1="66.04" x2="238.76" y2="88.9" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="MX1_CATHODE1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$2"/>
<wire x1="104.14" y1="58.42" x2="104.14" y2="66.04" width="0.1524" layer="91"/>
<label x="101.6" y="53.34" size="1.016" layer="95" rot="R90"/>
</segment>
</net>
<net name="MX1_CATHODE2" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$4"/>
<wire x1="106.68" y1="58.42" x2="106.68" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_CATHODE3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$6"/>
<wire x1="109.22" y1="58.42" x2="109.22" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_CATHODE4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$8"/>
<wire x1="111.76" y1="58.42" x2="111.76" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_CATHODE5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$10"/>
<wire x1="114.3" y1="58.42" x2="114.3" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_CATHODE6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$12"/>
<wire x1="116.84" y1="58.42" x2="116.84" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_CATHODE7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$14"/>
<wire x1="119.38" y1="58.42" x2="119.38" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_CATHODE8" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$16"/>
<wire x1="121.92" y1="58.42" x2="121.92" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_CATHODE1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$18"/>
<wire x1="124.46" y1="58.42" x2="124.46" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_CATHODE2" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$20"/>
<wire x1="127" y1="58.42" x2="127" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_CATHODE3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$22"/>
<wire x1="129.54" y1="58.42" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_CATHODE4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$24"/>
<wire x1="132.08" y1="58.42" x2="132.08" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_CATHODE5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$26"/>
<wire x1="134.62" y1="58.42" x2="134.62" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_CATHODE6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$28"/>
<wire x1="137.16" y1="58.42" x2="137.16" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_CATHODE7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$30"/>
<wire x1="139.7" y1="58.42" x2="139.7" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_CATHODE8" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$32"/>
<wire x1="142.24" y1="58.42" x2="142.24" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_CATHODE1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$34"/>
<wire x1="144.78" y1="58.42" x2="144.78" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_CATHODE2" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$36"/>
<wire x1="147.32" y1="58.42" x2="147.32" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_CATHODE3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$38"/>
<wire x1="149.86" y1="58.42" x2="149.86" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_CATHODE4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$40"/>
<wire x1="152.4" y1="58.42" x2="152.4" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_CATHODE5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$42"/>
<wire x1="154.94" y1="58.42" x2="154.94" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_CATHODE6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$44"/>
<wire x1="157.48" y1="58.42" x2="157.48" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_CATHODE7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$46"/>
<wire x1="160.02" y1="58.42" x2="160.02" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_CATHODE8" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$48"/>
<wire x1="162.56" y1="58.42" x2="162.56" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_CATHODE1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$50"/>
<wire x1="165.1" y1="58.42" x2="165.1" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_CATHODE2" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$52"/>
<wire x1="167.64" y1="58.42" x2="167.64" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_CATHODE3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$54"/>
<wire x1="170.18" y1="58.42" x2="170.18" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_CATHODE4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$56"/>
<wire x1="172.72" y1="58.42" x2="172.72" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_CATHODE5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$58"/>
<wire x1="175.26" y1="58.42" x2="175.26" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_CATHODE6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$60"/>
<wire x1="177.8" y1="58.42" x2="177.8" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_CATHODE7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$62"/>
<wire x1="180.34" y1="58.42" x2="180.34" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_CATHODE8" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$64"/>
<wire x1="182.88" y1="58.42" x2="182.88" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_CATHODE1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$66"/>
<wire x1="185.42" y1="58.42" x2="185.42" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_CATHODE2" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$68"/>
<wire x1="187.96" y1="58.42" x2="187.96" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_CATHODE3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$70"/>
<wire x1="190.5" y1="58.42" x2="190.5" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_CATHODE4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$72"/>
<wire x1="193.04" y1="58.42" x2="193.04" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_CATHODE5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$74"/>
<wire x1="195.58" y1="58.42" x2="195.58" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_CATHODE6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$76"/>
<wire x1="198.12" y1="58.42" x2="198.12" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_CATHODE7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$78"/>
<wire x1="200.66" y1="58.42" x2="200.66" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_CATHODE8" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$80"/>
<wire x1="203.2" y1="58.42" x2="203.2" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_ANODE1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$1"/>
<wire x1="104.14" y1="33.02" x2="104.14" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_ANODE2" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$3"/>
<wire x1="106.68" y1="33.02" x2="106.68" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_ANODE3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$5"/>
<wire x1="109.22" y1="33.02" x2="109.22" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_ANODE4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$7"/>
<wire x1="111.76" y1="33.02" x2="111.76" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_ANODE5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$9"/>
<wire x1="114.3" y1="33.02" x2="114.3" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_ANODE6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$11"/>
<wire x1="116.84" y1="33.02" x2="116.84" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_ANODE7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$13"/>
<wire x1="119.38" y1="33.02" x2="119.38" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX1_ANODE8" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$15"/>
<wire x1="121.92" y1="33.02" x2="121.92" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_ANODE1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$17"/>
<wire x1="124.46" y1="33.02" x2="124.46" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_ANODE2" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$19"/>
<wire x1="127" y1="33.02" x2="127" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_ANODE4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$23"/>
<wire x1="132.08" y1="33.02" x2="132.08" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_ANODE5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$25"/>
<wire x1="134.62" y1="33.02" x2="134.62" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_ANODE6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$27"/>
<wire x1="137.16" y1="33.02" x2="137.16" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_ANODE7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$29"/>
<wire x1="139.7" y1="33.02" x2="139.7" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_ANODE8" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$31"/>
<wire x1="142.24" y1="33.02" x2="142.24" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_ANODE1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$33"/>
<wire x1="144.78" y1="33.02" x2="144.78" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_ANODE2" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$35"/>
<wire x1="147.32" y1="33.02" x2="147.32" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_ANODE3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$37"/>
<wire x1="149.86" y1="33.02" x2="149.86" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_ANODE4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$39"/>
<wire x1="152.4" y1="33.02" x2="152.4" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_ANODE5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$41"/>
<wire x1="154.94" y1="33.02" x2="154.94" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_ANODE6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$43"/>
<wire x1="157.48" y1="33.02" x2="157.48" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_ANODE7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$45"/>
<wire x1="160.02" y1="33.02" x2="160.02" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX3_ANODE8" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$47"/>
<wire x1="162.56" y1="33.02" x2="162.56" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_ANODE1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$49"/>
<wire x1="165.1" y1="33.02" x2="165.1" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_ANODE2" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$51"/>
<wire x1="167.64" y1="33.02" x2="167.64" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_ANODE3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$53"/>
<wire x1="170.18" y1="33.02" x2="170.18" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_ANODE4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$55"/>
<wire x1="172.72" y1="33.02" x2="172.72" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_ANODE5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$57"/>
<wire x1="175.26" y1="33.02" x2="175.26" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_ANODE6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$59"/>
<wire x1="177.8" y1="33.02" x2="177.8" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_ANODE7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$61"/>
<wire x1="180.34" y1="33.02" x2="180.34" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX4_ANODE8" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$63"/>
<wire x1="182.88" y1="33.02" x2="182.88" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_ANODE1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$65"/>
<wire x1="185.42" y1="33.02" x2="185.42" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_ANODE2" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$67"/>
<wire x1="187.96" y1="33.02" x2="187.96" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_ANODE3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$69"/>
<wire x1="190.5" y1="33.02" x2="190.5" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_ANODE4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$71"/>
<wire x1="193.04" y1="33.02" x2="193.04" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_ANODE5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$73"/>
<wire x1="195.58" y1="33.02" x2="195.58" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_ANODE6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$75"/>
<wire x1="198.12" y1="33.02" x2="198.12" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_ANODE7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$77"/>
<wire x1="200.66" y1="33.02" x2="200.66" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX5_ANODE8" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$79"/>
<wire x1="203.2" y1="33.02" x2="203.2" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MX2_ANODE3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="P$21"/>
<wire x1="129.54" y1="33.02" x2="129.54" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
