## Expectations and Plan

My initial expectations for this lab are fairly hopeful. I think that the descriptive nature of the comments within the code make it easy to understand what it should be doing by the end of this lab and will also make it easy to get ChatGPT to generate proper, working code.

I plan on first asking ChatGPT to attempt completing the missing functions based on the TODOs left in the comments in the code. Once I have done this and obtained some kind of basic code to work off of, I will try running it. If the code either does not work or does not compile properly, I will resend the code in a new prompt with the given error message or erroneous behavior, describe the issue to ChatGPT and ask it to try and correct the error. I will attempt to repeat this process until the code works as intended.

After I have both scheduling algorithms functioning, I will move on to the thread synchronization portion of the lab. I will attempt to get ChatGPT to generate this addition to the code by asking it to add on to the previous generated code. I believe this could be done simply by supplying it with the description of what to do from the lab handout as that is quite descriptive. As with implementing the synchronization algorithms, if any problems arise I will supply ChatGPT with the problem and ask it to find a solution.

Lastly I will have ChatGPT generate some code for performance metrics. This could be done just by asking it to add to the code by making it track and display the relevant performance metrics specified within the lab handout. Again, any issues that may arise I will ask ChatGPT to fix by supplying it with the problem.

Overall I expect this experience to be fairly simple to get working.

## Post-Implementation

Overall my experience using ChatGPT for this lab went pretty good. I was able to get it to generate working code according to the specifications with only a few prompts and minimal errors which were just basic things like variable initialization errors and miscalculated performance metrics of which ChatGPT was able to fix quickly. 

I would say that as far as struggles go for this lab there really weren't any. ChatGPT was able to get this program working perfectly within only a few minutes with minimal errors along the way. Likewise I would say it helped a great deal with getting the code working considering it was able to do just about everything by itself with little in the way of problems.

ChatGPT was also quite helpful with refreshing my memory on context switching and time quantums. There are things I had learned about some time ago, however my memory was a bit foggy on the concepts. ChatGPT was able to explain them to me easily and also explain how they related to these two algorithms which helped quite a bit with working on the algorithm comparison portion of the review document.

## Code Review

The overall quality of the code generated by ChatGPT for this lab seems to be decent by my standards. Both algorithms work well according to the specifications so it was able to grasp that aspect. It also was ablke to generate a lot of descriptive comments throughout the code making it easy to understand what each part is doing. the formatting and organization of the code is also quite good as in my opinion the way it has everything organized makes it easy to read through. The only thing which seems to be not so good from my testing is that the performance metric calculating function seems to be slowing down the run time of the program by quite a bit as there was a noticeable slow down after that part was implemented. Other than that however I think the generated code is decent albeit basic.

## Self-Reflection

I was able to implement all of the different parts of this lab according to the specifications. Both of the scheduling algorithms appear to be working as intended, along with the shared resource simulation. And the performance metrics display according to the running program. Currently it is able to compile without any warnings or errors, although throughout completing this lab I did run into two errors, one where ChatGPT did not properly initialize some variables causing a lot of warnings, and another where the calculations for the performance metrics was not done properly resulting in values of 0 and infinity being displayed.

## Compare Algorithms

Looking at the performance metric calculations given by the program, it appears that the FCFS version of the algorithm has a noticeably lower average turnaround time and average waiting time. The bigger difference is found in the average waiting time as the average turnaround time with FCFS is about 4 seconds lower than RR and the average waiting time with FCFS is about 9 seconds lower than RR. 

Looking at the impact that context switching has with these two algorithms, FCFS will have very minimal context switching as it only swaps processes after one has finished running. This means it only has to switch the context as many times as there are processes (in the case of my tests, 4 times for 4 processes). This will likely result in better run times as it only has to switch a minimal number of times. RR however will have to do a lot more context switching as it has to do this every X while there are still processes to run, where X is the given time quantum for the algorithm. This will result in a lot of context switching which has the potential to slow down the processes.

Time quantums will only apply to the RR algorithm, as the FCFS version does not use this concept at all. The impact of a time quantum for this algorithm has benefits and drawbacks depending on what it is set to. A smaller value for the time quantum will increase the "fairness" of the algorithm, resulting in a lower chance of an extremely slow process holding up faster processes, however it also has the potential to reduce efficiency by not allowing something potentially important to keep running past the time quantum. A large time quantum value has the benefit of reducine the overhead of the algorithm, but may lower responsiveness due to it taking longer for a new process to be able to start running. Overall the impact of the time quantum depends a lot on what the algorithm is being used for, research and testing would likely need to be done to figure out what the best value is for the time quantum if the RR algorithm is used.

Overall, the positive and negative impacts of context switching and time quantums depend a lot on what task you are attempting to complete using these algorithms. Both have their strengths and weaknesses which are beneficial and detrimental for different tasks like FCFS being effective for situations when all processes to be completed are of a similar size and complexity, whereas RR being best for any kind of interactive system where responsiveness is the most important aspect.

## Technical Concepts

Analogy for the FCFS and RR algorithms and the difference between them:

Imagine a 4-way intersection on a busy roadway. The first come first serve algorithm can be thought of like a 4-way stop sign. The first car to show up to the stop signs is the first car to be able to continue driving, the second car to show up waits until the first car has gone before they continue driving and so on. This is similar to the FCFS scheduling algorithm where processes (different roadways at the intersection) are ran (have the cars on that roadway keep driving) in the order they arrive without any preemption.

Now imagine that same intersection, but instead of a 4-way stop sign it has traffic lights. The lights turn green for a set amount of time allowing cars on one roadway to continue driving until the light turns red and the cars need to stop, allowing card from a different roadway to drive through the intersection. This is similar to how the RR scheduling algorithm works where processes (different roadways at the intersection) are ran (have the cars on that roadway keep driving) for the given time quantum set in the scheduling program (for the duration that the light is green).