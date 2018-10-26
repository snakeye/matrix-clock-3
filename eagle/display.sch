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
<library name="max7219">
<packages>
<package name="SO24L">
<description>&lt;b&gt;Small Outline Package&lt;/b&gt;</description>
<wire x1="7.366" y1="3.7338" x2="-7.366" y2="3.7338" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-3.7338" x2="7.747" y2="-3.3528" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.747" y1="3.3528" x2="-7.366" y2="3.7338" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.366" y1="3.7338" x2="7.747" y2="3.3528" width="0.1524" layer="21" curve="-90"/>
<wire x1="-7.747" y1="-3.3528" x2="-7.366" y2="-3.7338" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.366" y1="-3.7338" x2="7.366" y2="-3.7338" width="0.1524" layer="21"/>
<wire x1="7.747" y1="-3.3528" x2="7.747" y2="3.3528" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="3.3528" x2="-7.747" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="1.27" x2="-7.747" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-1.27" x2="-7.747" y2="-3.3528" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-3.3782" x2="7.747" y2="-3.3782" width="0.0508" layer="21"/>
<wire x1="-7.747" y1="1.27" x2="-7.747" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<smd name="1" x="-6.985" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="-1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="-0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="17" x="1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="18" x="0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="19" x="-0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="20" x="-1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="21" x="-3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="22" x="-4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="23" x="-5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="24" x="-6.985" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="6.985" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="6.985" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<text x="-5.842" y="-0.762" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-8.128" y="-3.556" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-7.239" y1="-3.8608" x2="-6.731" y2="-3.7338" layer="21"/>
<rectangle x1="-7.239" y1="-5.334" x2="-6.731" y2="-3.8608" layer="51"/>
<rectangle x1="-5.969" y1="-3.8608" x2="-5.461" y2="-3.7338" layer="21"/>
<rectangle x1="-5.969" y1="-5.334" x2="-5.461" y2="-3.8608" layer="51"/>
<rectangle x1="-4.699" y1="-3.8608" x2="-4.191" y2="-3.7338" layer="21"/>
<rectangle x1="-4.699" y1="-5.334" x2="-4.191" y2="-3.8608" layer="51"/>
<rectangle x1="-3.429" y1="-3.8608" x2="-2.921" y2="-3.7338" layer="21"/>
<rectangle x1="-3.429" y1="-5.334" x2="-2.921" y2="-3.8608" layer="51"/>
<rectangle x1="-2.159" y1="-5.334" x2="-1.651" y2="-3.8608" layer="51"/>
<rectangle x1="-2.159" y1="-3.8608" x2="-1.651" y2="-3.7338" layer="21"/>
<rectangle x1="-0.889" y1="-3.8608" x2="-0.381" y2="-3.7338" layer="21"/>
<rectangle x1="-0.889" y1="-5.334" x2="-0.381" y2="-3.8608" layer="51"/>
<rectangle x1="0.381" y1="-3.8608" x2="0.889" y2="-3.7338" layer="21"/>
<rectangle x1="0.381" y1="-5.334" x2="0.889" y2="-3.8608" layer="51"/>
<rectangle x1="1.651" y1="-3.8608" x2="2.159" y2="-3.7338" layer="21"/>
<rectangle x1="1.651" y1="-5.334" x2="2.159" y2="-3.8608" layer="51"/>
<rectangle x1="-7.239" y1="3.8608" x2="-6.731" y2="5.334" layer="51"/>
<rectangle x1="-7.239" y1="3.7338" x2="-6.731" y2="3.8608" layer="21"/>
<rectangle x1="-5.969" y1="3.7338" x2="-5.461" y2="3.8608" layer="21"/>
<rectangle x1="-5.969" y1="3.8608" x2="-5.461" y2="5.334" layer="51"/>
<rectangle x1="-4.699" y1="3.7338" x2="-4.191" y2="3.8608" layer="21"/>
<rectangle x1="-4.699" y1="3.8608" x2="-4.191" y2="5.334" layer="51"/>
<rectangle x1="-3.429" y1="3.7338" x2="-2.921" y2="3.8608" layer="21"/>
<rectangle x1="-3.429" y1="3.8608" x2="-2.921" y2="5.334" layer="51"/>
<rectangle x1="-2.159" y1="3.7338" x2="-1.651" y2="3.8608" layer="21"/>
<rectangle x1="-2.159" y1="3.8608" x2="-1.651" y2="5.334" layer="51"/>
<rectangle x1="-0.889" y1="3.7338" x2="-0.381" y2="3.8608" layer="21"/>
<rectangle x1="-0.889" y1="3.8608" x2="-0.381" y2="5.334" layer="51"/>
<rectangle x1="0.381" y1="3.7338" x2="0.889" y2="3.8608" layer="21"/>
<rectangle x1="0.381" y1="3.8608" x2="0.889" y2="5.334" layer="51"/>
<rectangle x1="1.651" y1="3.7338" x2="2.159" y2="3.8608" layer="21"/>
<rectangle x1="1.651" y1="3.8608" x2="2.159" y2="5.334" layer="51"/>
<rectangle x1="2.921" y1="3.7338" x2="3.429" y2="3.8608" layer="21"/>
<rectangle x1="4.191" y1="3.7338" x2="4.699" y2="3.8608" layer="21"/>
<rectangle x1="5.461" y1="3.7338" x2="5.969" y2="3.8608" layer="21"/>
<rectangle x1="6.731" y1="3.7338" x2="7.239" y2="3.8608" layer="21"/>
<rectangle x1="2.921" y1="3.8608" x2="3.429" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="3.8608" x2="4.699" y2="5.334" layer="51"/>
<rectangle x1="5.461" y1="3.8608" x2="5.969" y2="5.334" layer="51"/>
<rectangle x1="6.731" y1="3.8608" x2="7.239" y2="5.334" layer="51"/>
<rectangle x1="2.921" y1="-3.8608" x2="3.429" y2="-3.7338" layer="21"/>
<rectangle x1="4.191" y1="-3.8608" x2="4.699" y2="-3.7338" layer="21"/>
<rectangle x1="5.461" y1="-3.8608" x2="5.969" y2="-3.7338" layer="21"/>
<rectangle x1="6.731" y1="-3.8608" x2="7.239" y2="-3.7338" layer="21"/>
<rectangle x1="2.921" y1="-5.334" x2="3.429" y2="-3.8608" layer="51"/>
<rectangle x1="4.191" y1="-5.334" x2="4.699" y2="-3.8608" layer="51"/>
<rectangle x1="5.461" y1="-5.334" x2="5.969" y2="-3.8608" layer="51"/>
<rectangle x1="6.731" y1="-5.334" x2="7.239" y2="-3.8608" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MAX7219">
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="7.62" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-22.86" x2="7.62" y2="20.32" width="0.4064" layer="94"/>
<wire x1="7.62" y1="20.32" x2="-10.16" y2="20.32" width="0.4064" layer="94"/>
<text x="-10.16" y="20.955" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<pin name="DIG2" x="12.7" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="DIG3" x="12.7" y="10.16" length="middle" direction="out" rot="R180"/>
<pin name="DIG4" x="12.7" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="DIG5" x="12.7" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="DIG6" x="12.7" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="DIG7" x="12.7" y="0" length="middle" direction="out" rot="R180"/>
<pin name="SEGA" x="12.7" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="SEGB" x="12.7" y="-5.08" length="middle" direction="out" rot="R180"/>
<pin name="SEGC" x="12.7" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="SEGD" x="12.7" y="-10.16" length="middle" direction="out" rot="R180"/>
<pin name="SEGE" x="12.7" y="-12.7" length="middle" direction="out" rot="R180"/>
<pin name="SEGF" x="12.7" y="-15.24" length="middle" direction="out" rot="R180"/>
<pin name="SEGG" x="12.7" y="-17.78" length="middle" direction="out" rot="R180"/>
<pin name="SEGDP" x="12.7" y="-20.32" length="middle" direction="out" rot="R180"/>
<pin name="DIG1" x="12.7" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="DIG0" x="12.7" y="17.78" length="middle" direction="out" rot="R180"/>
<pin name="DIN" x="-15.24" y="7.62" length="middle" direction="in"/>
<pin name="DOUT" x="-15.24" y="5.08" length="middle" direction="out"/>
<pin name="LOAD" x="-15.24" y="12.7" length="middle" direction="in"/>
<pin name="CLK" x="-15.24" y="17.78" length="middle" direction="in" function="clk"/>
<pin name="ISET" x="-15.24" y="0" length="middle" direction="in"/>
<pin name="GND@2" x="-15.24" y="-20.32" length="middle" direction="pwr"/>
<pin name="GND@1" x="-15.24" y="-17.78" length="middle" direction="pwr"/>
<pin name="VCC" x="-15.24" y="-15.24" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX7219CWG">
<gates>
<gate name="G$1" symbol="MAX7219" x="10.16" y="-20.32"/>
</gates>
<devices>
<device name="" package="SO24L">
<connects>
<connect gate="G$1" pin="CLK" pad="13"/>
<connect gate="G$1" pin="DIG0" pad="2"/>
<connect gate="G$1" pin="DIG1" pad="11"/>
<connect gate="G$1" pin="DIG2" pad="6"/>
<connect gate="G$1" pin="DIG3" pad="7"/>
<connect gate="G$1" pin="DIG4" pad="3"/>
<connect gate="G$1" pin="DIG5" pad="10"/>
<connect gate="G$1" pin="DIG6" pad="5"/>
<connect gate="G$1" pin="DIG7" pad="8"/>
<connect gate="G$1" pin="DIN" pad="1"/>
<connect gate="G$1" pin="DOUT" pad="24"/>
<connect gate="G$1" pin="GND@1" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="9"/>
<connect gate="G$1" pin="ISET" pad="18"/>
<connect gate="G$1" pin="LOAD" pad="12"/>
<connect gate="G$1" pin="SEGA" pad="14"/>
<connect gate="G$1" pin="SEGB" pad="16"/>
<connect gate="G$1" pin="SEGC" pad="20"/>
<connect gate="G$1" pin="SEGD" pad="23"/>
<connect gate="G$1" pin="SEGDP" pad="22"/>
<connect gate="G$1" pin="SEGE" pad="21"/>
<connect gate="G$1" pin="SEGF" pad="15"/>
<connect gate="G$1" pin="SEGG" pad="17"/>
<connect gate="G$1" pin="VCC" pad="19"/>
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
<part name="U$1" library="max7219" deviceset="MAX7219CWG" device=""/>
</parts>
<sheets>
<sheet>
<plain>
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
<instance part="U$1" gate="G$1" x="58.42" y="25.4">
<attribute name="NAME" x="48.26" y="46.355" size="1.778" layer="95"/>
<attribute name="VALUE" x="48.26" y="0" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
<bus name="ANODE1,ANODE2,ANODE3,ANODE4,ANODE5,ANODE6,ANODE7,ANODE8,CATHODE1,CATHODE2,CATHODE3,CATHODE4,CATHODE5,CATHODE6,CATHODE7,CATHODE8">
<segment>
<wire x1="38.1" y1="88.9" x2="38.1" y2="66.04" width="0.762" layer="92"/>
<wire x1="38.1" y1="66.04" x2="76.2" y2="66.04" width="0.762" layer="92"/>
<wire x1="76.2" y1="66.04" x2="76.2" y2="88.9" width="0.762" layer="92"/>
<wire x1="76.2" y1="66.04" x2="76.2" y2="5.08" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="ANODE1" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="ROW1"/>
<wire x1="43.18" y1="88.9" x2="38.1" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SEGA"/>
<wire x1="71.12" y1="22.86" x2="76.2" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ANODE2" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="ROW2"/>
<wire x1="43.18" y1="86.36" x2="38.1" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SEGB"/>
<wire x1="71.12" y1="20.32" x2="76.2" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ANODE3" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="ROW3"/>
<wire x1="43.18" y1="83.82" x2="38.1" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SEGC"/>
<wire x1="71.12" y1="17.78" x2="76.2" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ANODE4" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="ROW4"/>
<wire x1="43.18" y1="81.28" x2="38.1" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SEGD"/>
<wire x1="71.12" y1="15.24" x2="76.2" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ANODE5" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="ROW5"/>
<wire x1="43.18" y1="78.74" x2="38.1" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SEGE"/>
<wire x1="71.12" y1="12.7" x2="76.2" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ANODE6" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="ROW6"/>
<wire x1="43.18" y1="76.2" x2="38.1" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SEGF"/>
<wire x1="71.12" y1="10.16" x2="76.2" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ANODE7" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="ROW7"/>
<wire x1="43.18" y1="73.66" x2="38.1" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SEGG"/>
<wire x1="71.12" y1="7.62" x2="76.2" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ANODE8" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="ROW8"/>
<wire x1="43.18" y1="71.12" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SEGDP"/>
<wire x1="71.12" y1="5.08" x2="76.2" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CATHODE1" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="COL1"/>
<wire x1="71.12" y1="88.9" x2="76.2" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="DIG0"/>
<wire x1="71.12" y1="43.18" x2="76.2" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CATHODE2" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="COL2"/>
<wire x1="71.12" y1="86.36" x2="76.2" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="DIG1"/>
<wire x1="71.12" y1="40.64" x2="76.2" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CATHODE3" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="COL3"/>
<wire x1="71.12" y1="83.82" x2="76.2" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="DIG2"/>
<wire x1="71.12" y1="38.1" x2="76.2" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CATHODE4" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="COL4"/>
<wire x1="71.12" y1="81.28" x2="76.2" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="DIG3"/>
<wire x1="71.12" y1="35.56" x2="76.2" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CATHODE5" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="COL5"/>
<wire x1="71.12" y1="78.74" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="DIG4"/>
<wire x1="71.12" y1="33.02" x2="76.2" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CATHODE6" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="COL6"/>
<wire x1="71.12" y1="76.2" x2="76.2" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="DIG5"/>
<wire x1="71.12" y1="30.48" x2="76.2" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CATHODE7" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="COL7"/>
<wire x1="71.12" y1="73.66" x2="76.2" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="DIG6"/>
<wire x1="71.12" y1="27.94" x2="76.2" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CATHODE8" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="COL8"/>
<wire x1="71.12" y1="71.12" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="DIG7"/>
<wire x1="71.12" y1="25.4" x2="76.2" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
