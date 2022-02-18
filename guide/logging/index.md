[{"bookPath":"guide","title":"How do I add tracing logs to my Reach program?","titleId":"guide-logging","hasOtp":true,"hasPageHeader":true},"<p>\n  <i id=\"p_0\" class=\"pid\"></i>Sometimes it is useful to add \"tracing logs\" to your program so you can see the values of variables and computations as the program is running.\n  For example, if we were writing purely in JavaScript, we might write<a href=\"#p_0\" class=\"pid\">0</a>\n</p>\n<pre class=\"snippet numbered\"><div class=\"codeHeader\">&nbsp;<a class=\"far fa-copy copyBtn\" data-clipboard-text=\"function fib(n) {\n  console.log(`Starting to compute Fibonacci`);\n  let i = 1;\n  let [a, b] = [0, 1];\n  while ( i++ < n ) {\n    console.log(i, a, b);\n    [a, b] = [b, a + b];\n  }\n  return a;\n}\nfib(9);\" href=\"#\"></a></div><ol class=\"snippet\"><li value=\"1\"><span style=\"color: var(--shiki-token-keyword)\">function</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-function)\">fib</span><span style=\"color: var(--shiki-color-text)\">(n) {</span></li><li value=\"2\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-constant)\">console</span><span style=\"color: var(--shiki-token-function)\">.log</span><span style=\"color: var(--shiki-color-text)\">(</span><span style=\"color: var(--shiki-token-string-expression)\">`Starting to compute Fibonacci`</span><span style=\"color: var(--shiki-color-text)\">);</span></li><li value=\"3\"><span style=\"color: var(--shiki-color-text)\">  </span><a href=\"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let\" title=\"js: let\"><span style=\"color: var(--shiki-token-keyword)\">let</span></a><span style=\"color: var(--shiki-color-text)\"> i </span><span style=\"color: var(--shiki-token-keyword)\">=</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">1</span><span style=\"color: var(--shiki-color-text)\">;</span></li><li value=\"4\"><span style=\"color: var(--shiki-color-text)\">  </span><a href=\"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let\" title=\"js: let\"><span style=\"color: var(--shiki-token-keyword)\">let</span></a><span style=\"color: var(--shiki-color-text)\"> [a</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> b] </span><span style=\"color: var(--shiki-token-keyword)\">=</span><span style=\"color: var(--shiki-color-text)\"> [</span><span style=\"color: var(--shiki-token-constant)\">0</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">1</span><span style=\"color: var(--shiki-color-text)\">];</span></li><li value=\"5\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-keyword)\">while</span><span style=\"color: var(--shiki-color-text)\"> ( i</span><span style=\"color: var(--shiki-token-keyword)\">++</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-keyword)\">&lt;</span><span style=\"color: var(--shiki-color-text)\"> n ) {</span></li><li value=\"6\"><span style=\"color: var(--shiki-color-text)\">    </span><span style=\"color: var(--shiki-token-constant)\">console</span><span style=\"color: var(--shiki-token-function)\">.log</span><span style=\"color: var(--shiki-color-text)\">(i</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> a</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> b);</span></li><li value=\"7\"><span style=\"color: var(--shiki-color-text)\">    [a</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> b] </span><span style=\"color: var(--shiki-token-keyword)\">=</span><span style=\"color: var(--shiki-color-text)\"> [b</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> a </span><span style=\"color: var(--shiki-token-keyword)\">+</span><span style=\"color: var(--shiki-color-text)\"> b];</span></li><li value=\"8\"><span style=\"color: var(--shiki-color-text)\">  }</span></li><li value=\"9\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-keyword)\">return</span><span style=\"color: var(--shiki-color-text)\"> a;</span></li><li value=\"10\"><span style=\"color: var(--shiki-color-text)\">}</span></li><li value=\"11\"><span style=\"color: var(--shiki-token-function)\">fib</span><span style=\"color: var(--shiki-color-text)\">(</span><span style=\"color: var(--shiki-token-constant)\">9</span><span style=\"color: var(--shiki-color-text)\">);</span></li></ol></pre>\n<p><i id=\"p_1\" class=\"pid\"></i>And we'd see the output<a href=\"#p_1\" class=\"pid\">1</a></p>\n<pre class=\"snippet numbered\"><div class=\"codeHeader\">&nbsp;<a class=\"far fa-copy copyBtn\" data-clipboard-text=\"Starting to compute Fibonacci\n2 0 1\n3 1 1\n4 1 2\n5 2 3\n6 3 5\n7 5 8\n8 8 13\n9 13 21\" href=\"#\"></a></div><ol class=\"snippet\"><li value=\"1\">Starting to compute Fibonacci</li><li value=\"2\">2 0 1</li><li value=\"3\">3 1 1</li><li value=\"4\">4 1 2</li><li value=\"5\">5 2 3</li><li value=\"6\">6 3 5</li><li value=\"7\">7 5 8</li><li value=\"8\">8 8 13</li><li value=\"9\">9 13 21</li></ol></pre>\n<p><i id=\"p_2\" class=\"pid\"></i>How can we do something like this in Reach?<a href=\"#p_2\" class=\"pid\">2</a></p>\n<p>\n  <i id=\"p_3\" class=\"pid\"></i>The key is to use participant interact interfaces to share arbitrary information with the frontend,\n  which has the ability to log to a console or any other tracing service.\n  For example:<a href=\"#p_3\" class=\"pid\">3</a>\n</p>\n<pre class=\"snippet numbered\"><div class=\"codeHeader\">&nbsp;<a class=\"far fa-copy copyBtn\" data-clipboard-text=\"export const main = Reach.App(() => {\n  const A = Participant('Alice', {\n    logBool: Fun([UBool], Null),\n    logNumber: Fun([UInt], Null),\n  });\n  init();\n  A.only(() => {\n    interact.logBool(true);\n    interact.logNumber(1); });\n  exit();\n});\" href=\"#\"></a></div><ol class=\"snippet\"><li value=\"1\"><a href=\"/rsh/module/#rsh_export\" title=\"rsh: export\"><span style=\"color: var(--shiki-token-keyword)\">export</span></a><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/compute/#rsh_const\" title=\"rsh: const\"><span style=\"color: var(--shiki-token-keyword)\">const</span></a><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">main</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-keyword)\">=</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/module/#rsh_Reach\" title=\"rsh: Reach\"><span style=\"color: var(--shiki-token-constant)\">Reach</span></a><span style=\"color: var(--shiki-token-function)\">.App</span><span style=\"color: var(--shiki-color-text)\">(() </span><a href=\"/rsh/compute/#rsh_=%3E\" title=\"rsh: =>\"><span style=\"color: var(--shiki-token-keyword)\">=&gt;</span></a><span style=\"color: var(--shiki-color-text)\"> {</span></li><li value=\"2\"><span style=\"color: var(--shiki-color-text)\">  </span><a href=\"/rsh/compute/#rsh_const\" title=\"rsh: const\"><span style=\"color: var(--shiki-token-keyword)\">const</span></a><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">A</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-keyword)\">=</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/appinit/#rsh_Participant\" title=\"rsh: Participant\"><span style=\"color: var(--shiki-token-function)\">Participant</span></a><span style=\"color: var(--shiki-color-text)\">(</span><span style=\"color: var(--shiki-token-string-expression)\">'Alice'</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> {</span></li><li value=\"3\"><span style=\"color: var(--shiki-color-text)\">    logBool</span><span style=\"color: var(--shiki-token-keyword)\">:</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/compute/#rsh_Fun\" title=\"rsh: Fun\"><span style=\"color: var(--shiki-token-function)\">Fun</span></a><span style=\"color: var(--shiki-color-text)\">([UBool]</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> Null)</span><span style=\"color: var(--shiki-token-punctuation)\">,</span></li><li value=\"4\"><span style=\"color: var(--shiki-color-text)\">    logNumber</span><span style=\"color: var(--shiki-token-keyword)\">:</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/compute/#rsh_Fun\" title=\"rsh: Fun\"><span style=\"color: var(--shiki-token-function)\">Fun</span></a><span style=\"color: var(--shiki-color-text)\">([UInt]</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> Null)</span><span style=\"color: var(--shiki-token-punctuation)\">,</span></li><li value=\"5\"><span style=\"color: var(--shiki-color-text)\">  });</span></li><li value=\"6\"><span style=\"color: var(--shiki-color-text)\">  </span><a href=\"/rsh/appinit/#rsh_init\" title=\"rsh: init\"><span style=\"color: var(--shiki-token-function)\">init</span></a><span style=\"color: var(--shiki-color-text)\">();</span></li><li value=\"7\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-constant)\">A</span><span style=\"color: var(--shiki-token-function)\">.only</span><span style=\"color: var(--shiki-color-text)\">(() </span><a href=\"/rsh/compute/#rsh_=%3E\" title=\"rsh: =>\"><span style=\"color: var(--shiki-token-keyword)\">=&gt;</span></a><span style=\"color: var(--shiki-color-text)\"> {</span></li><li value=\"8\"><span style=\"color: var(--shiki-color-text)\">    </span><a href=\"/rsh/local/#rsh_interact\" title=\"rsh: interact\"><span style=\"color: var(--shiki-token-constant)\">interact</span></a><span style=\"color: var(--shiki-token-function)\">.logBool</span><span style=\"color: var(--shiki-color-text)\">(</span><a href=\"/rsh/compute/#rsh_true\" title=\"rsh: true\"><span style=\"color: var(--shiki-token-constant)\">true</span></a><span style=\"color: var(--shiki-color-text)\">);</span></li><li value=\"9\"><span style=\"color: var(--shiki-color-text)\">    </span><a href=\"/rsh/local/#rsh_interact\" title=\"rsh: interact\"><span style=\"color: var(--shiki-token-constant)\">interact</span></a><span style=\"color: var(--shiki-token-function)\">.logNumber</span><span style=\"color: var(--shiki-color-text)\">(</span><span style=\"color: var(--shiki-token-constant)\">1</span><span style=\"color: var(--shiki-color-text)\">); });</span></li><li value=\"10\"><span style=\"color: var(--shiki-color-text)\">  </span><a href=\"/rsh/step/#rsh_exit\" title=\"rsh: exit\"><span style=\"color: var(--shiki-token-function)\">exit</span></a><span style=\"color: var(--shiki-color-text)\">();</span></li><li value=\"11\"><span style=\"color: var(--shiki-color-text)\">});</span></li></ol></pre>\n<p>\n  <i id=\"p_4\" class=\"pid\"></i>However, as this example shows, it can be inconvenient to use this pattern, because <span class=\"snip\"><a href=\"/rsh/compute/#rsh_Fun\" title=\"rsh: Fun\"><span style=\"color: var(--shiki-color-text)\">Fun</span></a></span> types constrain their domains to particular input data types, but we may need to log different kinds of data at different points in the program.\n  Similarly, it is inconvenient to use an entire <span class=\"snip\"><a href=\"/rsh/step/#rsh_only\" title=\"rsh: only\"><span style=\"color: var(--shiki-color-text)\">only</span></a></span> block for a simple log.<a href=\"#p_4\" class=\"pid\">4</a>\n</p>\n<p>\n  <i id=\"p_5\" class=\"pid\"></i>Reach provides two conveniences for this situation that taste great together: unconstrained domain function types and interact shorthand.\n  The first allows a function in a participant interact interface to have a completely unconstrained domain.\n  The second allows a call to a frontend from anywhere without an <span class=\"snip\"><a href=\"/rsh/step/#rsh_only\" title=\"rsh: only\"><span style=\"color: var(--shiki-color-text)\">only</span></a></span>, provided the function returns no value.\n  If we re-write the above example using both of these patterns, it looks like:<a href=\"#p_5\" class=\"pid\">5</a>\n</p>\n<pre class=\"snippet numbered\"><div class=\"codeHeader\">&nbsp;<a class=\"far fa-copy copyBtn\" data-clipboard-text=\"export const main = Reach.App(() => {\n  const A = Participant('Alice', {\n    log: Fun(true, Null),\n  });\n  init();\n  A.interact.log(true);\n  A.interact.log(1);\n  // We can easily add more complex log entries as well.\n  A.interact.log([1, true]);\n  A.interact.log({x: 1, y: true});\n  const x = 1;\n  const y = true;\n  A.interact.log({x, y});\n  A.interact.log(Maybe(UInt).Some(5));\n  exit();\n});\" href=\"#\"></a></div><ol class=\"snippet\"><li value=\"1\"><a href=\"/rsh/module/#rsh_export\" title=\"rsh: export\"><span style=\"color: var(--shiki-token-keyword)\">export</span></a><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/compute/#rsh_const\" title=\"rsh: const\"><span style=\"color: var(--shiki-token-keyword)\">const</span></a><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">main</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-keyword)\">=</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/module/#rsh_Reach\" title=\"rsh: Reach\"><span style=\"color: var(--shiki-token-constant)\">Reach</span></a><span style=\"color: var(--shiki-token-function)\">.App</span><span style=\"color: var(--shiki-color-text)\">(() </span><a href=\"/rsh/compute/#rsh_=%3E\" title=\"rsh: =>\"><span style=\"color: var(--shiki-token-keyword)\">=&gt;</span></a><span style=\"color: var(--shiki-color-text)\"> {</span></li><li value=\"2\"><span style=\"color: var(--shiki-color-text)\">  </span><a href=\"/rsh/compute/#rsh_const\" title=\"rsh: const\"><span style=\"color: var(--shiki-token-keyword)\">const</span></a><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">A</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-keyword)\">=</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/appinit/#rsh_Participant\" title=\"rsh: Participant\"><span style=\"color: var(--shiki-token-function)\">Participant</span></a><span style=\"color: var(--shiki-color-text)\">(</span><span style=\"color: var(--shiki-token-string-expression)\">'Alice'</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> {</span></li><li value=\"3\"><span style=\"color: var(--shiki-color-text)\">    log</span><span style=\"color: var(--shiki-token-keyword)\">:</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/compute/#rsh_Fun\" title=\"rsh: Fun\"><span style=\"color: var(--shiki-token-function)\">Fun</span></a><span style=\"color: var(--shiki-color-text)\">(</span><a href=\"/rsh/compute/#rsh_true\" title=\"rsh: true\"><span style=\"color: var(--shiki-token-constant)\">true</span></a><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> Null)</span><span style=\"color: var(--shiki-token-punctuation)\">,</span></li><li value=\"4\"><span style=\"color: var(--shiki-color-text)\">  });</span></li><li value=\"5\"><span style=\"color: var(--shiki-color-text)\">  </span><a href=\"/rsh/appinit/#rsh_init\" title=\"rsh: init\"><span style=\"color: var(--shiki-token-function)\">init</span></a><span style=\"color: var(--shiki-color-text)\">();</span></li><li value=\"6\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-constant)\">A</span><span style=\"color: var(--shiki-token-function)\">.</span><a href=\"/rsh/local/#rsh_interact\" title=\"rsh: interact\"><span style=\"color: var(--shiki-token-constant)\">interact</span></a><span style=\"color: var(--shiki-token-function)\">.log</span><span style=\"color: var(--shiki-color-text)\">(</span><a href=\"/rsh/compute/#rsh_true\" title=\"rsh: true\"><span style=\"color: var(--shiki-token-constant)\">true</span></a><span style=\"color: var(--shiki-color-text)\">);</span></li><li value=\"7\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-constant)\">A</span><span style=\"color: var(--shiki-token-function)\">.</span><a href=\"/rsh/local/#rsh_interact\" title=\"rsh: interact\"><span style=\"color: var(--shiki-token-constant)\">interact</span></a><span style=\"color: var(--shiki-token-function)\">.log</span><span style=\"color: var(--shiki-color-text)\">(</span><span style=\"color: var(--shiki-token-constant)\">1</span><span style=\"color: var(--shiki-color-text)\">);</span></li><li value=\"8\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-comment)\">// We can easily add more complex log entries as well.</span></li><li value=\"9\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-constant)\">A</span><span style=\"color: var(--shiki-token-function)\">.</span><a href=\"/rsh/local/#rsh_interact\" title=\"rsh: interact\"><span style=\"color: var(--shiki-token-constant)\">interact</span></a><span style=\"color: var(--shiki-token-function)\">.log</span><span style=\"color: var(--shiki-color-text)\">([</span><span style=\"color: var(--shiki-token-constant)\">1</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/compute/#rsh_true\" title=\"rsh: true\"><span style=\"color: var(--shiki-token-constant)\">true</span></a><span style=\"color: var(--shiki-color-text)\">]);</span></li><li value=\"10\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-constant)\">A</span><span style=\"color: var(--shiki-token-function)\">.</span><a href=\"/rsh/local/#rsh_interact\" title=\"rsh: interact\"><span style=\"color: var(--shiki-token-constant)\">interact</span></a><span style=\"color: var(--shiki-token-function)\">.log</span><span style=\"color: var(--shiki-color-text)\">({x</span><span style=\"color: var(--shiki-token-keyword)\">:</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">1</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> y</span><span style=\"color: var(--shiki-token-keyword)\">:</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/compute/#rsh_true\" title=\"rsh: true\"><span style=\"color: var(--shiki-token-constant)\">true</span></a><span style=\"color: var(--shiki-color-text)\">});</span></li><li value=\"11\"><span style=\"color: var(--shiki-color-text)\">  </span><a href=\"/rsh/compute/#rsh_const\" title=\"rsh: const\"><span style=\"color: var(--shiki-token-keyword)\">const</span></a><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">x</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-keyword)\">=</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">1</span><span style=\"color: var(--shiki-color-text)\">;</span></li><li value=\"12\"><span style=\"color: var(--shiki-color-text)\">  </span><a href=\"/rsh/compute/#rsh_const\" title=\"rsh: const\"><span style=\"color: var(--shiki-token-keyword)\">const</span></a><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">y</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-keyword)\">=</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/compute/#rsh_true\" title=\"rsh: true\"><span style=\"color: var(--shiki-token-constant)\">true</span></a><span style=\"color: var(--shiki-color-text)\">;</span></li><li value=\"13\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-constant)\">A</span><span style=\"color: var(--shiki-token-function)\">.</span><a href=\"/rsh/local/#rsh_interact\" title=\"rsh: interact\"><span style=\"color: var(--shiki-token-constant)\">interact</span></a><span style=\"color: var(--shiki-token-function)\">.log</span><span style=\"color: var(--shiki-color-text)\">({x</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> y});</span></li><li value=\"14\"><span style=\"color: var(--shiki-color-text)\">  </span><span style=\"color: var(--shiki-token-constant)\">A</span><span style=\"color: var(--shiki-token-function)\">.</span><a href=\"/rsh/local/#rsh_interact\" title=\"rsh: interact\"><span style=\"color: var(--shiki-token-constant)\">interact</span></a><span style=\"color: var(--shiki-token-function)\">.log</span><span style=\"color: var(--shiki-color-text)\">(</span><a href=\"/rsh/compute/#rsh_Maybe\" title=\"rsh: Maybe\"><span style=\"color: var(--shiki-token-function)\">Maybe</span></a><span style=\"color: var(--shiki-color-text)\">(UInt)</span><span style=\"color: var(--shiki-token-function)\">.Some</span><span style=\"color: var(--shiki-color-text)\">(</span><span style=\"color: var(--shiki-token-constant)\">5</span><span style=\"color: var(--shiki-color-text)\">));</span></li><li value=\"15\"><span style=\"color: var(--shiki-color-text)\">  </span><a href=\"/rsh/step/#rsh_exit\" title=\"rsh: exit\"><span style=\"color: var(--shiki-token-function)\">exit</span></a><span style=\"color: var(--shiki-color-text)\">();</span></li><li value=\"16\"><span style=\"color: var(--shiki-color-text)\">});</span></li></ol></pre>\n<p><i id=\"p_6\" class=\"pid\"></i>Then, a JavaScript frontend can simply use <span class=\"snip\"><span style=\"color: var(--shiki-token-constant)\">console</span><span style=\"color: var(--shiki-color-text)\">.log</span></span> as the value of the <code>log</code> function.<a href=\"#p_6\" class=\"pid\">6</a></p>\n<p>\n  <i id=\"p_7\" class=\"pid\"></i>Reach provides <span class=\"snip\"><a href=\"/rsh/compute/#rsh_hasConsoleLogger\" title=\"rsh: hasConsoleLogger\"><span style=\"color: var(--shiki-color-text)\">hasConsoleLogger</span></a></span> and hasConsoleLogger (Frontend) in the standard library\n  for default implementations of logging to stdout. It can be used in Reach with:<a href=\"#p_7\" class=\"pid\">7</a>\n</p>\n<pre class=\"snippet unnumbered\"><div class=\"codeHeader\">&nbsp;<a class=\"far fa-copy copyBtn\" data-clipboard-text=\"const A = Participant('Alice', { ...hasConsoleLogger })\" href=\"#\"></a></div><ol class=\"snippet\"><li value=\"1\"><a href=\"/rsh/compute/#rsh_const\" title=\"rsh: const\"><span style=\"color: var(--shiki-token-keyword)\">const</span></a><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-constant)\">A</span><span style=\"color: var(--shiki-color-text)\"> </span><span style=\"color: var(--shiki-token-keyword)\">=</span><span style=\"color: var(--shiki-color-text)\"> </span><a href=\"/rsh/appinit/#rsh_Participant\" title=\"rsh: Participant\"><span style=\"color: var(--shiki-token-function)\">Participant</span></a><span style=\"color: var(--shiki-color-text)\">(</span><span style=\"color: var(--shiki-token-string-expression)\">'Alice'</span><span style=\"color: var(--shiki-token-punctuation)\">,</span><span style=\"color: var(--shiki-color-text)\"> { </span><span style=\"color: var(--shiki-token-keyword)\">...</span><span style=\"color: var(--shiki-color-text)\">hasConsoleLogger })</span></li></ol></pre>\n<p><i id=\"p_8\" class=\"pid\"></i>and in the JavaScript frontend with:<a href=\"#p_8\" class=\"pid\">8</a></p>\n<pre class=\"snippet numbered\"><div class=\"codeHeader\">&nbsp;<a class=\"far fa-copy copyBtn\" data-clipboard-text=\"backend.Alice(\n   ctcAlice,\n   { ...stdlib.hasConsoleLogger },\n ),\" href=\"#\"></a></div><ol class=\"snippet\"><li value=\"1\"><a href=\"/cout/#js_backend\" title=\"js: backend\"><span style=\"color: var(--shiki-token-constant)\">backend</span></a><span style=\"color: var(--shiki-token-function)\">.Alice</span><span style=\"color: var(--shiki-color-text)\">(</span></li><li value=\"2\"><span style=\"color: var(--shiki-color-text)\">   ctcAlice</span><span style=\"color: var(--shiki-token-punctuation)\">,</span></li><li value=\"3\"><span style=\"color: var(--shiki-color-text)\">   { </span><span style=\"color: var(--shiki-token-keyword)\">...</span><a href=\"/frontend/#js_stdlib\" title=\"js: stdlib\"><span style=\"color: var(--shiki-token-constant)\">stdlib</span></a><span style=\"color: var(--shiki-color-text)\">.hasConsoleLogger }</span><span style=\"color: var(--shiki-token-punctuation)\">,</span></li><li value=\"4\"><span style=\"color: var(--shiki-color-text)\"> )</span><span style=\"color: var(--shiki-token-punctuation)\">,</span></li></ol></pre>\n<p><i id=\"p_9\" class=\"pid\"></i>The Reach development repository contains an example of this pattern: <a href=\"https://github.com/reach-sh/reach-lang/tree/master/examples/log/index.rsh\">log/index.rsh</a> and <a href=\"https://github.com/reach-sh/reach-lang/tree/master/examples/log/index.mjs\">log/index.mjs</a>.<a href=\"#p_9\" class=\"pid\">9</a></p>","<ul><li class=\"dynamic\"><a href=\"#guide-logging\">How do I add tracing logs to my Reach program?</a></li></ul>"]