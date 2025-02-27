# 2025-02-17 ~ 2025-02-23

\toc

## Identifying hard native instances for the maximum independent set problem on neutral atoms quantum processors (Xuanzhao)

Link: [https://arxiv.org/abs/2502.04291](https://arxiv.org/abs/2502.04291)

Short summary: This work discuss the difficulty of solve the maximum independent set problem on unit desk graphs via classical branching method and quantum computing. The results on classical problem are more detailed, as shown by the following figure.

![](/notes/2025-02-17/mis_hard_instance.png)

## Tensor Networks and their use for Lattice Gauge Theories (Xuanzhao)

Link: [https://pos.sissa.it/334/022/pdf](https://pos.sissa.it/334/022/pdf)

Short summary: Just surprised by the fact that currently tensor network is also used by the high energy physics community. The MPS tools are used to study the lattice gauge theories, no sign problem is found for the MPS tools compared with the Monte Carlo method.

Related material: [Introduction to lattice gauge theories](https://www.damtp.cam.ac.uk/user/tong/gaugetheory/4lattice.pdf)

## A General Framework for Mapping Combinatorial Problems to Tensor Networks (Yijia)

Link: [https://arxiv.org/abs/2502.05981](https://arxiv.org/abs/2502.05981)

Short summary: The combinatorial problem can always be reduced to (1) having a large number of potential configurations, (2) filtering them based on constraints, and (3) determining the optimal configurations based on a given score function. From the perspective of quantum computing, this can be achieved by first preparing a product state that encompasses all possible configurations as the initial state, and then applying gates that impose the constraints and evaluate the score (which can be realized through imaginary-time evolution $e^{-t*\text{score}}$). This paper decomposes this entire process into logical circuits and generalizes it using the language of tensor networks. Of course, its main point is merely to propose a unified language and a different perspective on the problem, without resulting in any significant improvements to existing algorithms.

Related work:
- The above work is actually a generalization of [this work](https://arxiv.org/abs/2311.14344), where the authors transformed the Traveling Salesman Problem into tensor networks and demonstrated their effectiveness in a real industrial application.
![Tensor Networks Derived from the Traveling Salesman Problem](/notes/2025-02-17/tsp_circuit.png)
![Comparative computational complexities of the Job Reassignment Problem](/notes/2025-02-17/jrp_result.png)
- After establishing the tensor network framework, the above work employs techniques to decompose basic gates into smaller units (corresponding to the decomposition of multi-order tensors into tensor trains). This reminds me of [a previous work](https://arxiv.org/abs/2004.06455) that rewrote tensor networks corresponding to various combinatorial optimization problems into smaller fundamental units using ZH-calculus equations. This approach helped explain why 2SAT and #XORSAT are in P while 3SAT is NP-complete.

Discussion:
- Xuanzhao: With a score function, the factor they added seems to be a non-unitary operator given by~$e^{- \tau \text{score}}$. How to achieve that in real quantum hardware?

- Yijia: You are right! In quantum computing implementations for TSP, gate operations are not performed using the tensor network formalism in this work - rather, this tensor network structure should be more precisely characterized as just adopting the circuit paradigm!

    I recently came across [a paper on solving TSP using quantum computing](https://arxiv.org/abs/2502.08853). Their approach involves generating the uniform superposition state of all N-length Hamiltonian cycles as an initial state within polynomial gate complexity based on pure quantum dynamic programming, then implementing quantum Fourier transforms to assign weights to each Hamiltonian cycle state through phase encoding, and finally obtaining the solution using Grover's search algorithm.
    
    Therefore, the score is encoded in the phase rather than the amplitude, taking the form $ e^{i*\text{function}} $ , which can be implemented through the QFT.

- Xuanzhao: Thanks for the reference! I think the phase encoding is a good idea. It is interesting that they porposed a new way to generate the superposition state of all possible solutions, which is better than the 'selecting tensors' in [Alejandro Mata Ali](https://arxiv.org/abs/2502.05981)'s work. However, there seems to be a gap between the quantum circuit and classical tensor network method.

- Yijia: Here's [an update on the state-of-the-art approaches for solving TSP on quantum computers](https://arxiv.org/pdf/2502.17725). Remarkably, the most efficient algorithm implemented on Ising machines has achieved a time complexity of O(log n)!