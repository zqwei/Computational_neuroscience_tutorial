# Table of lecture
* a common structure of a neuron
* ion channels and membrane potential (Nernst equation)
* Membrane capacitance and resistance
* Two basic models -- HH model and LIF model
* cable theory (optional)



# Structure of a neuron
![Neuron](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Neuron.svg/400px-Neuron.svg.png)

# Ion channels and membrane potential
<img src="https://image.slidesharecdn.com/actionpotentials-animalsystems-141110120811-conversion-gate02/95/action-potentials-animal-systems-2-638.jpg?cb=1415621630" width="300">

The Na+/K+-ATPase enzyme is a solute pump that pumps sodium out of cells while pumping potassium into cells, both **against** their concentration gradients. This pumping is active (i.e. it uses energy from ATP). For every ATP molecule that the pump uses, three sodium ions are exported and two potassium ions are imported; there is hence a net export of a single positive charge per pump cycle.

## Equilibrium and reversal potentials
<img src="http://www.physiologyweb.com/lecture_notes/resting_membrane_potential/figs/measuring_the_membrane_potential_basic_method_w.jpg" width="300">

* **Reversal potential** is the membrane potential at which a given neurotransmitter causes no net current flow of ions through that neurotransmitter receptor's ion channel
* **Equilibrium** refers to the fact that the net ion flux at a particular voltage is zero. In a single-ion system, reversal potential is synonymous with equilibrium potential; their numerical values are identical.

### Nernst equation of reversal potentials
The Nernst equation is derived from the standard changes in the Gibbs free energy associated with an electrochemical transformation. For any electrochemical reduction reaction of the form:
```latex
[ion]_{in} + ze^- -> [ion]_{out}
```
**Resting potential** can be determined from the Goldman equation, which is a solution of G-H-K influx equation under the constraints that total current density driven by electrochemical force is zero. (The Goldman–Hodgkin–Katz flux equation (or GHK flux equation or GHK current density equation) describes the ionic flux across a cell membrane as a function of the transmembrane potential and the concentrations of the ion inside and outside of the cell. Since both the voltage and the concentration gradients influence the movement of ions, this process is a simplified version of electrodiffusion.) The potential across the cell membrane that exactly opposes net diffusion of a particular ion through the membrane is called the Nernst potential for that ion.

![Nernst equation](http://digitalfirst.bfwpub.com/principles_of_life/asset/act_3401_nernst_equation/act3401l1.png)

## Membrane capacitance and resistance
![Circuit](https://www.researchgate.net/profile/Alessio_Franci/publication/300414100/figure/fig1/AS:364002174619658@1463796289737/Examples-of-neuronal-circuits-A-Electrical-circuit-of-the-Hodgkin-Huxley-model-taken.ppm)

### Membrane currents and Ohm's law
Driving force refers to the difference between the actual membrane potential and an ion's equilibrium potential. It is defined by the following equation:
![](https://latex.codecogs.com/gif.latex?i_m%20%3D%20%5Csum_j%20g_j%28V_m-E_j%29)
* g: conductance -- inverse of resistance
* E: reversal potential
* if Vm > E, current outfluxes; if Vm < E, current influxes; if Vm == E, net current is zero.

#### Example
A related equation (which is derived from the more general equation above) determines the magnitude of an end plate current (EPC), at a given membrane potential, in the neuromuscular junction:

![](https://latex.codecogs.com/gif.latex?EPC%20%3D%20gACh%28V_m-E%29)

where EPC is the end plate current, gACh is the ionic conductance activated by acetylcholine, Vm is the membrane potential, and Erev is the reversal potential. When the membrane potential is equal to the reversal potential, Vm − Eion is equal to 0 and there is no driving force on the ions involved.

### Total charge held by the membrane is a sum of influx currents and injected currents
![](https://latex.codecogs.com/gif.latex?%5Cfrac%7BdQ%7D%7Bdt%7D%3DC_m%5Cfrac%7BdV%7D%7Bdt%7D%3D-i_m%20&plus;%20i_%7Bext%7D)

# Hodgkin-Huxley Model
![HH model](https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Hodgkin-Huxley.svg/350px-Hodgkin-Huxley.svg.png)
![HH model eq](http://www.math.pitt.edu/~bard/bardware/tut/gif/hh.gif)

* leakage current
* a delayed-rectified K+ current
* a transient Na+ current
* total conductance is a multiplication between persistent one with gating variable (voltage-depedent)
* gating vriables n (activation), m (activation), h (inactivation) (power k means the number of channels to open)

![HH model channel](http://ecee.colorado.edu/~ecen4831/cnsweb/hhact.gif)
## Action potential
![AP](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnbGkwVX2WGVazPfW-Z2EuKS14FRTrqAkxe0EhoN-vlEzb3U7S)
![AP](http://psych.lf1.cuni.cz/bpen/images/image1.6.gif)

## Simulation of HH model
* model code : http://www.cns.nyu.edu/~rinzel/CMNSF07/codes/HH%20matlab.txt
* -5nA to 12nA
* equilibrium stage, single-spike stage, limit cycle stage
* center manifold visualization of limit cycle
* bifucation (Hopf bifurcation)
* count number of spikes in a period of time (1 - 2 seconds)
* plot firing rate vs input current function

# Integrate-and-Fire Model
![](https://latex.codecogs.com/gif.latex?C_m%5Cfrac%7BdV%7D%7Bdt%7D%20%3D%20-g_L%28V-E_L%29%20&plus;%20I_%7Bext%7D)

![](https://latex.codecogs.com/gif.latex?%5Ctau_m%5Cfrac%7BdV%7D%7Bdt%7D%20%3D%20-%28V-E_L%29%20&plus;%20I_%7Bext%7DR_m)

* Fire at threshold V_th
* Reset at threshold to V_reset
* A refractory period followed reset

## Simulation of LIF model
* measure the number of spikes at different constant input current
* relate spike rate with input current
* any function? how to explain theoretically? (try fourier transform)
* how about noisy input?

## Generalized LIF model
* Exponential integrate-and-fire (https://www.physiology.org/doi/10.1152/jn.01107.2007)
* GLIF (http://faculty.washington.edu/etsb/AMATH534/slides/Mihalas_GLIF_2018.pdf)
* Izhikevich neuron (https://www.izhikevich.org/publications/spikes.htm)

# Cable Theory (passive cable)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Cable_theory_Neuron_RC_circuit_v3.svg/600px-Cable_theory_Neuron_RC_circuit_v3.svg.png)

https://en.wikipedia.org/wiki/Cable_theory


# References
* http://www.scholarpedia.org/article/Electrical_properties_of_cell_membranes
* https://en.wikipedia.org/wiki/Biological_neuron_model
* https://en.wikipedia.org/wiki/Hodgkin%E2%80%93Huxley_model
* http://cecas.clemson.edu/~petersj/Courses/M390/Project/Project.pdf
* https://www.mathworks.com/matlabcentral/fileexchange/46740-hhrun-hodgkin-huxley-model-simulation-for-user-defined-input-current


## License
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
