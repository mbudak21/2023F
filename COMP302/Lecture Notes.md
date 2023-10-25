# Larman CH1 - Object-Oriented Analysis and Design

**Analysis:** Investigation of the problem and requirements.
**Design:**  A conceptual solution (in software and hardware) that fulfills the requirements, rather than its implementation.
**Domain Concept:** Refers to the core ideas, entities, or elements that define a particular problem space or business area

## Steps Of Object-Oriented Analysis and Design
1 and 2 -> Analysis
3 and 4 -> Design
#### 1. Define Use Cases
Use cases help in understanding the functional requirements of the system by detailing how users interact with it.

#### 2. Define Domain Model
![[Pasted image 20231025230408.png]] Note that these `objects` are not software objects, there are just the visualizations of the concepts or the mental models of the real-world domain.

#### 3. Define Interaction Diagrams 
The following ***Sequence Diagram*** diagram shows the flow of messages between software objects, and thus the invocation of the methods.
![[Pasted image 20231025230659.png]]

#### 4. Define Design Class Diagram
Provides a static view of the class definitions. ![[Pasted image 20231025230907.png]]
Illustrates:
* Real Objects, not concepts
* Attributes
* Methods


# Larman CH2 - Iterative, Evolutionary, and Agile
Introduction to iterative development

**Timeboxing:** Fixed in length.
**Iterations:** Development cycles.

Development is organized into a series of short, fixed-length (for example, three-week) mini-projects called **iterations**.
 ![[Pasted image 20231025232536.png]]

### Agile Development
Scrum is an example.
Some principles:
	Less documentation, more code.
	Responding to change, over following a plan.
	The main purpose is to understand, not document in analyses.
	Good enough is the goal.
	Expect inaccuracies and imperfections.


### Unified Process (UP) Phases

#### 1. Inception
Approximate vision, scope, vague estimates.
#### 2. Elaboration
Refined vision, iterative implementation of the core architecture, resolution of high risks, identification of the most requirements and scope, more realistic estimates. 
#### 3. Construction
Iterative implementation of the remaining lower risk and easier elements, and prepreration for deployement.
#### 4. Transition
Beta tests, deployement.