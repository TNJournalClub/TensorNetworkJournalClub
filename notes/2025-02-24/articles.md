# 2025-02-24 ~ 2025-03-02

## Matrix Product States as Encoding Function Ansätze and Their Preparation (Yijia)

Link: [https://arxiv.org/pdf/2502.16464](https://arxiv.org/pdf/2502.16464)

Short summary: The number of gates required to prepare an n-qubit quantum state scales as 2^n, and even when the entanglement between qubits is restricted to χ, the gate count still scales as χ^2. This paper presents an MPS-based preparation scheme that scales linearly with n, and demonstrates through numerical experiments that this MPS-based state preparation enables the efficient encoding of functions up to low-degree piecewise polynomials with accuracy exceeding 99.99%. I find this paper interesting primarily for two aspects:
- The Matrix Product Disentangler algorithm used for MPS preparation appears conceptually similar to the principles behind diffusion models in nn?
![mpd_ran](/notes/2025-02-24/mpd_ran.png)
- As the virtual bond dimension of the function-representing MPS increases, the function curve recovers certain properties (such as its shape) beyond a specific bond dimension threshold. This potentially offers a novel perspective on measuring the information content of functions?
![gaussian](/notes/2025-02-24/gaussian.png)