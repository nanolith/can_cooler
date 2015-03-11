Can Cooler
==========

The following OpenSCAD files can be used to replicate my can cooler.  Two cooler
halves are required.  Peltiers are mounted to these using thermal paste and
screwed down using high quality CPU coolers.  Holes for the mounting screws need
to be drilled and tapped.  Since this work is best done independently from the
metalwork, I have not included these holes in this design.  This also adds a
level of future-proofing to this design, since CPU standards change every couple
of years.

The theory of operation is pretty simple.  A can is placed between the two metal
plates.  These plates act as heat sinks to draw heat away from the can more
efficiently.  The Peltiers are placed so that heat is drawn from the metal
plates to the sinks on the CPU coolers.  Finally, the CPU coolers discharge this
heat into the ambient air by drawing air across the sinks.

The Peltiers and CPU coolers must be powered to operate.  There are two ways to
do this.  The easiest way is simply to build a switch that powers on and off the
entire device.  This requires no active circuitry, but some passive components
are required.  Peltiers that operate on 12 V DC can be obtained, which should
match the voltage of the CPU fans.  Most CPU fans require a separate control
input to turn on the fan, which is either open-collector or open-drain.
A voltage divider can be used to get the appropriate voltage for this
control pin.  

The second option is to use a microcontroller.  A termistor or thermocouple can
be used to read the temperature of the can.  This should be mounted so that it
comes in contact with the can when the cooler is assembled.  A PID algorithm can
be used to control a relay that powers the cooler.  This setup could allow for
unattended use and is likely safer.  The simpler switch method could freeze soda
within the can, leading to an overpressure event that could spill liquid all
over the unit, and likely ruin it.

Plenty of instructions exist online for completing this project.  I'm not the
first person to think of this idea, nor am I the first to demonstrate that it
works.  However, I have not been able to find reliable models for making my own.
This is a small contribution to that end.

These files are released under the [Creative Commons Attribution 4.0
International license](http://creativecommons.org/licenses/by/4.0/).  They may
be adapted or used commercially as long as attribution to the original author is
provided.  Feel free to fork and enhance.
