!function(e,t){"object"==typeof exports&&"object"==typeof module?module.exports=t():"function"==typeof define&&define.amd?define([],t):"object"==typeof exports?exports.inView=t():e.inView=t()}(this,function(){return function(e){function t(r){if(n[r])return n[r].exports;var i=n[r]={exports:{},id:r,loaded:!1};return e[r].call(i.exports,i,i.exports,t),i.loaded=!0,i.exports}var n={};return t.m=e,t.c=n,t.p="",t(0)}([function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}var i=n(2),s=r(i);e.exports=s.default},function(e,t){function n(e){var t=typeof e;return null!=e&&("object"==t||"function"==t)}e.exports=n},function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0});var i=n(9),s=r(i),o=n(3),a=r(o),u=n(4),c=function(){if("undefined"!=typeof window){var e=100,t=["scroll","resize","load"],n={history:[]},r={offset:{},threshold:0,test:u.inViewport},i=(0,s.default)(function(){n.history.forEach(function(e){n[e].check()})},e);t.forEach(function(e){return addEventListener(e,i)}),window.MutationObserver&&addEventListener("DOMContentLoaded",function(){new MutationObserver(i).observe(document.body,{attributes:!0,childList:!0,subtree:!0})});var o=function(e){if("string"==typeof e){var t=[].slice.call(document.querySelectorAll(e));return n.history.indexOf(e)>-1?n[e].elements=t:(n[e]=(0,a.default)(t,r),n.history.push(e)),n[e]}};return o.offset=function(e){if(void 0===e)return r.offset;var t=function(e){return"number"==typeof e};return["top","right","bottom","left"].forEach(t(e)?function(t){return r.offset[t]=e}:function(n){return t(e[n])?r.offset[n]=e[n]:null}),r.offset},o.threshold=function(e){return"number"==typeof e&&e>=0&&e<=1?r.threshold=e:r.threshold},o.test=function(e){return"function"==typeof e?r.test=e:r.test},o.is=function(e){return r.test(e,r)},o.offset(0),o}};t.default=c()},function(e,t){"use strict";function n(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}Object.defineProperty(t,"__esModule",{value:!0});var r=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),i=function(){function e(t,r){n(this,e),this.options=r,this.elements=t,this.current=[],this.handlers={enter:[],exit:[]},this.singles={enter:[],exit:[]}}return r(e,[{key:"check",value:function(){var e=this;return this.elements.forEach(function(t){var n=e.options.test(t,e.options),r=e.current.indexOf(t),i=r>-1,s=n&&!i,o=!n&&i;s&&(e.current.push(t),e.emit("enter",t)),o&&(e.current.splice(r,1),e.emit("exit",t))}),this}},{key:"on",value:function(e,t){return this.handlers[e].push(t),this}},{key:"once",value:function(e,t){return this.singles[e].unshift(t),this}},{key:"emit",value:function(e,t){for(;this.singles[e].length;)this.singles[e].pop()(t);for(var n=this.handlers[e].length;--n>-1;)this.handlers[e][n](t);return this}}]),e}();t.default=function(e,t){return new i(e,t)}},function(e,t){"use strict";function n(e,t){var n=e.getBoundingClientRect(),r=n.top,i=n.right,s=n.bottom,o=n.left,a=n.width,u=n.height,c={t:s,r:window.innerWidth-o,b:window.innerHeight-r,l:i},l={x:t.threshold*a,y:t.threshold*u};return c.t>t.offset.top+l.y&&c.r>t.offset.right+l.x&&c.b>t.offset.bottom+l.y&&c.l>t.offset.left+l.x}Object.defineProperty(t,"__esModule",{value:!0}),t.inViewport=n},function(e,t){(function(t){var n="object"==typeof t&&t&&t.Object===Object&&t;e.exports=n}).call(t,function(){return this}())},function(e,t,n){var r=n(5),i="object"==typeof self&&self&&self.Object===Object&&self,s=r||i||Function("return this")();e.exports=s},function(e,t,n){function r(e,t,n){function r(t){var n=y,r=A;return y=A=void 0,E=t,w=e.apply(r,n)}function l(e){return E=e,z=setTimeout(m,t),C?r(e):w}function f(e){var n=e-x,r=e-E,i=t-n;return S?c(i,b-r):i}function d(e){var n=e-x,r=e-E;return void 0===x||n>=t||n<0||S&&r>=b}function m(){var e=s();return d(e)?p(e):void(z=setTimeout(m,f(e)))}function p(e){return z=void 0,M&&y?r(e):(y=A=void 0,w)}function h(){void 0!==z&&clearTimeout(z),E=0,y=x=A=z=void 0}function v(){return void 0===z?w:p(s())}function g(){var e=s(),n=d(e);if(y=arguments,A=this,x=e,n){if(void 0===z)return l(x);if(S)return z=setTimeout(m,t),r(x)}return void 0===z&&(z=setTimeout(m,t)),w}var y,A,b,w,z,x,E=0,C=!1,S=!1,M=!0;if("function"!=typeof e)throw new TypeError(a);return t=o(t)||0,i(n)&&(C=!!n.leading,S="maxWait"in n,b=S?u(o(n.maxWait)||0,t):b,M="trailing"in n?!!n.trailing:M),g.cancel=h,g.flush=v,g}var i=n(1),s=n(8),o=n(10),a="Expected a function",u=Math.max,c=Math.min;e.exports=r},function(e,t,n){var r=n(6),i=function(){return r.Date.now()};e.exports=i},function(e,t,n){function r(e,t,n){var r=!0,a=!0;if("function"!=typeof e)throw new TypeError(o);return s(n)&&(r="leading"in n?!!n.leading:r,a="trailing"in n?!!n.trailing:a),i(e,t,{leading:r,maxWait:t,trailing:a})}var i=n(7),s=n(1),o="Expected a function";e.exports=r},function(e,t){function n(e){return e}e.exports=n}])}),!function(e,t){var n=t(e,e.document);e.lazySizes=n,"object"==typeof module&&module.exports&&(module.exports=n)}(window,function(e,t){"use strict";if(t.getElementsByClassName){var n,r=t.documentElement,i=e.Date,s=e.HTMLPictureElement,o="addEventListener",a="getAttribute",u=e[o],c=e.setTimeout,l=e.requestAnimationFrame||c,f=e.requestIdleCallback,d=/^picture$/i,m=["load","error","lazyincluded","_lazyloaded"],p={},h=Array.prototype.forEach,v=function(e,t){return p[t]||(p[t]=new RegExp("(\\s|^)"+t+"(\\s|$)")),p[t].test(e[a]("class")||"")&&p[t]},g=function(e,t){v(e,t)||e.setAttribute("class",(e[a]("class")||"").trim()+" "+t)},y=function(e,t){var n;(n=v(e,t))&&e.setAttribute("class",(e[a]("class")||"").replace(n," "))},A=function(e,t,n){var r=n?o:"removeEventListener";n&&A(e,t),m.forEach(function(n){e[r](n,t)})},b=function(e,n,r,i,s){var o=t.createEvent("CustomEvent");return o.initCustomEvent(n,!i,!s,r||{}),e.dispatchEvent(o),o},w=function(t,r){var i;!s&&(i=e.picturefill||n.pf)?i({reevaluate:!0,elements:[t]}):r&&r.src&&(t.src=r.src)},z=function(e,t){return(getComputedStyle(e,null)||{})[t]},x=function(e,t,r){for(r=r||e.offsetWidth;r<n.minSize&&t&&!e._lazysizesWidth;)r=t.offsetWidth,t=t.parentNode;return r},E=function(){var e,n,r=[],i=function(){var t;for(e=!0,n=!1;r.length;)t=r.shift(),t[0].apply(t[1],t[2]);e=!1};return function(s){e?s.apply(this,arguments):(r.push([s,this,arguments]),n||(n=!0,(t.hidden?c:l)(i)))}}(),C=function(e,t){return t?function(){E(e)}:function(){var t=this,n=arguments;E(function(){e.apply(t,n)})}},S=function(e){var t,n=0,r=125,s=999,o=s,a=function(){t=!1,n=i.now(),e()},u=f?function(){f(a,{timeout:o}),o!==s&&(o=s)}:C(function(){c(a)},!0);return function(e){var s;(e=e===!0)&&(o=66),t||(t=!0,s=r-(i.now()-n),0>s&&(s=0),e||9>s&&f?u():c(u,s))}},M=function(e){var t,n,r=99,s=function(){t=null,e()},o=function(){var e=i.now()-n;r>e?c(o,r-e):(f||s)(s)};return function(){n=i.now(),t||(t=c(o,r))}},T=function(){var s,l,f,m,p,x,T,R,F,L,P,$,D,W,_,j=/^img$/i,q=/^iframe$/i,N="onscroll"in e&&!/glebot/.test(navigator.userAgent),O=0,B=0,I=0,U=-1,H=function(e){I--,e&&e.target&&A(e.target,H),(!e||0>I||!e.target)&&(I=0)},Q=function(e,n){var i,s=e,o="hidden"==z(t.body,"visibility")||"hidden"!=z(e,"visibility");for(F-=n,$+=n,L-=n,P+=n;o&&(s=s.offsetParent)&&s!=t.body&&s!=r;)o=(z(s,"opacity")||1)>0,o&&"visible"!=z(s,"overflow")&&(i=s.getBoundingClientRect(),o=P>i.left&&L<i.right&&$>i.top-1&&F<i.bottom+1);return o},V=function(){var e,i,o,u,c,d,m,h,v;if((p=n.loadMode)&&8>I&&(e=s.length)){i=0,U++,null==W&&("expand"in n||(n.expand=r.clientHeight>500?500:400),D=n.expand,W=D*n.expFactor),W>B&&1>I&&U>2&&p>2&&!t.hidden?(B=W,U=0):B=p>1&&U>1&&6>I?D:O;for(;e>i;i++)if(s[i]&&!s[i]._lazyRace)if(N)if((h=s[i][a]("data-expand"))&&(d=1*h)||(d=B),v!==d&&(T=innerWidth+d*_,R=innerHeight+d,m=-1*d,v=d),o=s[i].getBoundingClientRect(),($=o.bottom)>=m&&(F=o.top)<=R&&(P=o.right)>=m*_&&(L=o.left)<=T&&($||P||L||F)&&(f&&3>I&&!h&&(3>p||4>U)||Q(s[i],d))){if(te(s[i]),c=!0,I>9)break}else!c&&f&&!u&&4>I&&4>U&&p>2&&(l[0]||n.preloadAfterLoad)&&(l[0]||!h&&($||P||L||F||"auto"!=s[i][a](n.sizesAttr)))&&(u=l[0]||s[i]);else te(s[i]);u&&!c&&te(u)}},G=S(V),J=function(e){g(e.target,n.loadedClass),y(e.target,n.loadingClass),A(e.target,X)},K=C(J),X=function(e){K({target:e.target})},Y=function(e,t){try{e.contentWindow.location.replace(t)}catch(n){e.src=t}},Z=function(e){var t,r,i=e[a](n.srcsetAttr);(t=n.customMedia[e[a]("data-media")||e[a]("media")])&&e.setAttribute("media",t),i&&e.setAttribute("srcset",i),t&&(r=e.parentNode,r.insertBefore(e.cloneNode(),e),r.removeChild(e))},ee=C(function(e,t,r,i,s){var o,u,l,f,p,v;(p=b(e,"lazybeforeunveil",t)).defaultPrevented||(i&&(r?g(e,n.autosizesClass):e.setAttribute("sizes",i)),u=e[a](n.srcsetAttr),o=e[a](n.srcAttr),s&&(l=e.parentNode,f=l&&d.test(l.nodeName||"")),v=t.firesLoad||"src"in e&&(u||o||f),p={target:e},v&&(A(e,H,!0),clearTimeout(m),m=c(H,2500),g(e,n.loadingClass),A(e,X,!0)),f&&h.call(l.getElementsByTagName("source"),Z),u?e.setAttribute("srcset",u):o&&!f&&(q.test(e.nodeName)?Y(e,o):e.src=o),(u||f)&&w(e,{src:o})),E(function(){e._lazyRace&&delete e._lazyRace,y(e,n.lazyClass),(!v||e.complete)&&(v?H(p):I--,J(p))})}),te=function(e){var t,r=j.test(e.nodeName),i=r&&(e[a](n.sizesAttr)||e[a]("sizes")),s="auto"==i;(!s&&f||!r||!e.src&&!e.srcset||e.complete||v(e,n.errorClass))&&(t=b(e,"lazyunveilread").detail,s&&k.updateElem(e,!0,e.offsetWidth),e._lazyRace=!0,I++,ee(e,t,s,i,r))},ne=function(){if(!f){if(i.now()-x<999)return void c(ne,999);var e=M(function(){n.loadMode=3,G()});f=!0,n.loadMode=3,G(),u("scroll",function(){3==n.loadMode&&(n.loadMode=2),e()},!0)}};return{_:function(){x=i.now(),s=t.getElementsByClassName(n.lazyClass),l=t.getElementsByClassName(n.lazyClass+" "+n.preloadClass),_=n.hFac,u("scroll",G,!0),u("resize",G,!0),e.MutationObserver?new MutationObserver(G).observe(r,{childList:!0,subtree:!0,attributes:!0}):(r[o]("DOMNodeInserted",G,!0),r[o]("DOMAttrModified",G,!0),setInterval(G,999)),u("hashchange",G,!0),["focus","mouseover","click","load","transitionend","animationend","webkitAnimationEnd"].forEach(function(e){t[o](e,G,!0)}),/d$|^c/.test(t.readyState)?ne():(u("load",ne),t[o]("DOMContentLoaded",G),c(ne,2e4)),G(s.length>0)},checkElems:G,unveil:te}}(),k=function(){var e,r=C(function(e,t,n,r){var i,s,o;if(e._lazysizesWidth=r,r+="px",e.setAttribute("sizes",r),d.test(t.nodeName||""))for(i=t.getElementsByTagName("source"),s=0,o=i.length;o>s;s++)i[s].setAttribute("sizes",r);n.detail.dataAttr||w(e,n.detail)}),i=function(e,t,n){var i,s=e.parentNode;s&&(n=x(e,s,n),i=b(e,"lazybeforesizes",{width:n,dataAttr:!!t}),i.defaultPrevented||(n=i.detail.width,n&&n!==e._lazysizesWidth&&r(e,s,i,n)))},s=function(){var t,n=e.length;if(n)for(t=0;n>t;t++)i(e[t])},o=M(s);return{_:function(){e=t.getElementsByClassName(n.autosizesClass),u("resize",o)},checkElems:o,updateElem:i}}(),R=function(){R.i||(R.i=!0,k._(),T._())};return function(){var t,r={lazyClass:"lazyload",loadedClass:"lazyloaded",loadingClass:"lazyloading",preloadClass:"lazypreload",errorClass:"lazyerror",autosizesClass:"lazyautosizes",srcAttr:"data-src",srcsetAttr:"data-srcset",sizesAttr:"data-sizes",minSize:40,customMedia:{},init:!0,expFactor:1.5,hFac:.8,loadMode:2};n=e.lazySizesConfig||e.lazysizesConfig||{};for(t in r)t in n||(n[t]=r[t]);e.lazySizesConfig=n,c(function(){n.init&&R()})}(),{cfg:n,autoSizer:k,loader:T,init:R,uP:w,aC:g,rC:y,hC:v,fire:b,gW:x,rAF:E}}}),!function(e){var t=navigator.userAgent;e.HTMLPictureElement&&/ecko/.test(t)&&t.match(/rv\:(\d+)/)&&RegExp.$1<41&&addEventListener("resize",function(){var t,n=document.createElement("source"),r=function(e){var t,r,i=e.parentNode;"PICTURE"===i.nodeName.toUpperCase()?(t=n.cloneNode(),i.insertBefore(t,i.firstElementChild),setTimeout(function(){i.removeChild(t)})):(!e._pfLastSize||e.offsetWidth>e._pfLastSize)&&(e._pfLastSize=e.offsetWidth,r=e.sizes,e.sizes+=",100vw",setTimeout(function(){e.sizes=r}))},i=function(){var e,t=document.querySelectorAll("picture > img, img[srcset][sizes]");for(e=0;e<t.length;e++)r(t[e])},s=function(){clearTimeout(t),t=setTimeout(i,99)},o=e.matchMedia&&matchMedia("(orientation: landscape)"),a=function(){s(),o&&o.addListener&&o.addListener(s)};return n.srcset="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==",/^[c|i]|d$/.test(document.readyState||"")?a():document.addEventListener("DOMContentLoaded",a),s}())}(window),function(e,t,n){"use strict";function r(e){return" "===e||"\t"===e||"\n"===e||"\f"===e||"\r"===e}function i(t,n){var r=new e.Image;return r.onerror=function(){C[t]=!1,ee()},r.onload=function(){C[t]=1===r.width,ee()},r.src=n,"pending"}function s(){_=!1,N=e.devicePixelRatio,j={},q={},y.DPR=N||1,O.width=Math.max(e.innerWidth||0,E.clientWidth),O.height=Math.max(e.innerHeight||0,E.clientHeight),O.vw=O.width/100,O.vh=O.height/100,g=[O.height,O.width,N].join("-"),O.em=y.getEmValue(),O.rem=O.em}function o(e,t,n,r){var i,s,o,a;return"saveData"===S.algorithm?e>2.7?a=n+1:(s=t-n,i=Math.pow(e-.6,1.5),o=s*i,r&&(o+=.1*i),a=e+o):a=n>1?Math.sqrt(e*t):e,a>n}function a(e){var t,n=y.getSet(e),r=!1;"pending"!==n&&(r=g,n&&(t=y.setRes(n),y.applySetCandidate(t,e))),e[y.ns].evaled=r}function u(e,t){return e.res-t.res}function c(e,t,n){var r;return!n&&t&&(n=e[y.ns].sets,n=n&&n[n.length-1]),r=l(t,n),r&&(t=y.makeUrl(t),e[y.ns].curSrc=t,e[y.ns].curCan=r,r.res||Z(r,r.set.sizes)),r}function l(e,t){var n,r,i;if(e&&t)for(i=y.parseSet(t),e=y.makeUrl(e),n=0;n<i.length;n++)if(e===y.makeUrl(i[n].url)){r=i[n];break}return r}function f(e,t){var n,r,i,s,o=e.getElementsByTagName("source");for(n=0,r=o.length;r>n;n++)i=o[n],i[y.ns]=!0,s=i.getAttribute("srcset"),s&&t.push({srcset:s,media:i.getAttribute("media"),type:i.getAttribute("type"),sizes:i.getAttribute("sizes")})}function d(e,t){function n(t){var n,r=t.exec(e.substring(d));return r?(n=r[0],d+=n.length,n):void 0}function i(){var e,n,r,i,s,u,c,l,f,d=!1,p={};for(i=0;i<a.length;i++)s=a[i],u=s[s.length-1],c=s.substring(0,s.length-1),l=parseInt(c,10),f=parseFloat(c),G.test(c)&&"w"===u?((e||n)&&(d=!0),0===l?d=!0:e=l):J.test(c)&&"x"===u?((e||n||r)&&(d=!0),0>f?d=!0:n=f):G.test(c)&&"h"===u?((r||n)&&(d=!0),0===l?d=!0:r=l):d=!0;d||(p.url=o,e&&(p.w=e),n&&(p.d=n),r&&(p.h=r),r||n||e||(p.d=1),1===p.d&&(t.has1x=!0),p.set=t,m.push(p))}function s(){for(n(U),u="",c="in descriptor";;){if(l=e.charAt(d),"in descriptor"===c)if(r(l))u&&(a.push(u),u="",c="after descriptor");else{if(","===l)return d+=1,u&&a.push(u),void i();if("("===l)u+=l,c="in parens";else{if(""===l)return u&&a.push(u),void i();u+=l}}else if("in parens"===c)if(")"===l)u+=l,c="in descriptor";else{if(""===l)return a.push(u),void i();u+=l}else if("after descriptor"===c)if(r(l));else{if(""===l)return void i();c="in descriptor",d-=1}d+=1}}for(var o,a,u,c,l,f=e.length,d=0,m=[];;){if(n(H),d>=f)return m;o=n(Q),a=[],","===o.slice(-1)?(o=o.replace(V,""),i()):s()}}function m(e){function t(e){function t(){s&&(o.push(s),s="")}function n(){o[0]&&(a.push(o),o=[])}for(var i,s="",o=[],a=[],u=0,c=0,l=!1;;){if(i=e.charAt(c),""===i)return t(),n(),a;if(l){if("*"===i&&"/"===e[c+1]){l=!1,c+=2,t();continue}c+=1}else{if(r(i)){if(e.charAt(c-1)&&r(e.charAt(c-1))||!s){c+=1;continue}if(0===u){t(),c+=1;continue}i=" "}else if("("===i)u+=1;else if(")"===i)u-=1;else{if(","===i){t(),n(),c+=1;continue}if("/"===i&&"*"===e.charAt(c+1)){l=!0,c+=2;continue}}s+=i,c+=1}}}function n(e){return!!(l.test(e)&&parseFloat(e)>=0)||(!!f.test(e)||("0"===e||"-0"===e||"+0"===e))}var i,s,o,a,u,c,l=/^(?:[+-]?[0-9]+|[0-9]*\.[0-9]+)(?:[eE][+-]?[0-9]+)?(?:ch|cm|em|ex|in|mm|pc|pt|px|rem|vh|vmin|vmax|vw)$/i,f=/^calc\((?:[0-9a-z \.\+\-\*\/\(\)]+)\)$/i;for(s=t(e),o=s.length,i=0;o>i;i++)if(a=s[i],u=a[a.length-1],n(u)){if(c=u,a.pop(),0===a.length)return c;if(a=a.join(" "),y.matchesMedia(a))return c}return"100vw"}t.createElement("picture");var p,h,v,g,y={},A=function(){},b=t.createElement("img"),w=b.getAttribute,z=b.setAttribute,x=b.removeAttribute,E=t.documentElement,C={},S={algorithm:""},M="data-pfsrc",T=M+"set",k=navigator.userAgent,R=/rident/.test(k)||/ecko/.test(k)&&k.match(/rv\:(\d+)/)&&RegExp.$1>35,F="currentSrc",L=/\s+\+?\d+(e\d+)?w/,P=/(\([^)]+\))?\s*(.+)/,$=e.picturefillCFG,D="position:absolute;left:0;visibility:hidden;display:block;padding:0;border:none;font-size:1em;width:1em;overflow:hidden;clip:rect(0px, 0px, 0px, 0px)",W="font-size:100%!important;",_=!0,j={},q={},N=e.devicePixelRatio,O={px:1,in:96},B=t.createElement("a"),I=!1,U=/^[ \t\n\r\u000c]+/,H=/^[, \t\n\r\u000c]+/,Q=/^[^ \t\n\r\u000c]+/,V=/[,]+$/,G=/^\d+$/,J=/^-?(?:[0-9]+|[0-9]*\.[0-9]+)(?:[eE][+-]?[0-9]+)?$/,K=function(e,t,n,r){e.addEventListener?e.addEventListener(t,n,r||!1):e.attachEvent&&e.attachEvent("on"+t,n)},X=function(e){var t={};return function(n){return n in t||(t[n]=e(n)),t[n]}},Y=function(){var e=/^([\d\.]+)(em|vw|px)$/,t=function(){for(var e=arguments,t=0,n=e[0];++t in e;)n=n.replace(e[t],e[++t]);return n},n=X(function(e){return"return "+t((e||"").toLowerCase(),/\band\b/g,"&&",/,/g,"||",/min-([a-z-\s]+):/g,"e.$1>=",/max-([a-z-\s]+):/g,"e.$1<=",/calc([^)]+)/g,"($1)",/(\d+[\.]*[\d]*)([a-z]+)/g,"($1 * e.$2)",/^(?!(e.[a-z]|[0-9\.&=|><\+\-\*\(\)\/])).*/gi,"")+";"});return function(t,r){var i;if(!(t in j))if(j[t]=!1,r&&(i=t.match(e)))j[t]=i[1]*O[i[2]];else try{j[t]=new Function("e",n(t))(O)}catch(e){}return j[t]}}(),Z=function(e,t){return e.w?(e.cWidth=y.calcListLength(t||"100vw"),e.res=e.w/e.cWidth):e.res=e.d,e},ee=function(e){var n,r,i,s=e||{};if(s.elements&&1===s.elements.nodeType&&("IMG"===s.elements.nodeName.toUpperCase()?s.elements=[s.elements]:(s.context=s.elements,s.elements=null)),n=s.elements||y.qsa(s.context||t,s.reevaluate||s.reselect?y.sel:y.selShort),i=n.length){for(y.setupRun(s),I=!0,r=0;i>r;r++)y.fillImg(n[r],s);y.teardownRun(s)}};p=e.console&&console.warn?function(e){console.warn(e)}:A,F in b||(F="src"),C["image/jpeg"]=!0,C["image/gif"]=!0,C["image/png"]=!0,C["image/svg+xml"]=t.implementation.hasFeature("http://wwwindow.w3.org/TR/SVG11/feature#Image","1.1"),y.ns=("pf"+(new Date).getTime()).substr(0,9),y.supSrcset="srcset"in b,y.supSizes="sizes"in b,y.supPicture=!!e.HTMLPictureElement,y.supSrcset&&y.supPicture&&!y.supSizes&&!function(e){b.srcset="data:,a",e.src="data:,a",y.supSrcset=b.complete===e.complete,y.supPicture=y.supSrcset&&y.supPicture}(t.createElement("img")),y.selShort="picture>img,img[srcset]",y.sel=y.selShort,y.cfg=S,y.supSrcset&&(y.sel+=",img["+T+"]"),y.DPR=N||1,y.u=O,y.types=C,v=y.supSrcset&&!y.supSizes,y.setSize=A,y.makeUrl=X(function(e){return B.href=e,B.href}),y.qsa=function(e,t){return e.querySelectorAll(t)},y.matchesMedia=function(){return e.matchMedia&&(matchMedia("(min-width: 0.1em)")||{}).matches?y.matchesMedia=function(e){return!e||matchMedia(e).matches}:y.matchesMedia=y.mMQ,y.matchesMedia.apply(this,arguments)},y.mMQ=function(e){return!e||Y(e)},y.calcLength=function(e){var t=Y(e,!0)||!1;return 0>t&&(t=!1),t},y.supportsType=function(e){return!e||C[e]},y.parseSize=X(function(e){var t=(e||"").match(P);return{media:t&&t[1],length:t&&t[2]}}),y.parseSet=function(e){return e.cands||(e.cands=d(e.srcset,e)),e.cands},y.getEmValue=function(){var e;if(!h&&(e=t.body)){var n=t.createElement("div"),r=E.style.cssText,i=e.style.cssText;n.style.cssText=D,E.style.cssText=W,e.style.cssText=W,e.appendChild(n),h=n.offsetWidth,e.removeChild(n),h=parseFloat(h,10),E.style.cssText=r,e.style.cssText=i}return h||16},y.calcListLength=function(e){if(!(e in q)||S.uT){var t=y.calcLength(m(e));q[e]=t?t:O.width}return q[e]},y.setRes=function(e){var t;if(e){t=y.parseSet(e);for(var n=0,r=t.length;r>n;n++)Z(t[n],e.sizes)}return t},y.setRes.res=Z,y.applySetCandidate=function(e,t){if(e.length){var n,r,i,s,a,l,f,d,m,p=t[y.ns],h=y.DPR;if(l=p.curSrc||t[F],f=p.curCan||c(t,l,e[0].set),f&&f.set===e[0].set&&(m=R&&!t.complete&&f.res-.1>h,m||(f.cached=!0,f.res>=h&&(a=f))),!a)for(e.sort(u),s=e.length,a=e[s-1],r=0;s>r;r++)if(n=e[r],n.res>=h){i=r-1,a=e[i]&&(m||l!==y.makeUrl(n.url))&&o(e[i].res,n.res,h,e[i].cached)?e[i]:n;break}a&&(d=y.makeUrl(a.url),p.curSrc=d,p.curCan=a,d!==l&&y.setSrc(t,a),y.setSize(t))}},y.setSrc=function(e,t){var n;e.src=t.url,"image/svg+xml"===t.set.type&&(n=e.style.width,e.style.width=e.offsetWidth+1+"px",e.offsetWidth+1&&(e.style.width=n))},y.getSet=function(e){var t,n,r,i=!1,s=e[y.ns].sets;for(t=0;t<s.length&&!i;t++)if(n=s[t],n.srcset&&y.matchesMedia(n.media)&&(r=y.supportsType(n.type))){"pending"===r&&(n=r),i=n;break}return i},y.parseSets=function(e,t,r){var i,s,o,a,u=t&&"PICTURE"===t.nodeName.toUpperCase(),c=e[y.ns];(c.src===n||r.src)&&(c.src=w.call(e,"src"),c.src?z.call(e,M,c.src):x.call(e,M)),(c.srcset===n||r.srcset||!y.supSrcset||e.srcset)&&(i=w.call(e,"srcset"),c.srcset=i,a=!0),c.sets=[],u&&(c.pic=!0,f(t,c.sets)),c.srcset?(s={srcset:c.srcset,sizes:w.call(e,"sizes")},c.sets.push(s),o=(v||c.src)&&L.test(c.srcset||""),o||!c.src||l(c.src,s)||s.has1x||(s.srcset+=", "+c.src,s.cands.push({url:c.src,d:1,set:s}))):c.src&&c.sets.push({srcset:c.src,sizes:null}),c.curCan=null,c.curSrc=n,c.supported=!(u||s&&!y.supSrcset||o),a&&y.supSrcset&&!c.supported&&(i?(z.call(e,T,i),e.srcset=""):x.call(e,T)),c.supported&&!c.srcset&&(!c.src&&e.src||e.src!==y.makeUrl(c.src))&&(null===c.src?e.removeAttribute("src"):e.src=c.src),c.parsed=!0},y.fillImg=function(e,t){var n,r=t.reselect||t.reevaluate;e[y.ns]||(e[y.ns]={}),n=e[y.ns],(r||n.evaled!==g)&&((!n.parsed||t.reevaluate)&&y.parseSets(e,e.parentNode,t),n.supported?n.evaled=g:a(e))},y.setupRun=function(){(!I||_||N!==e.devicePixelRatio)&&s()},y.supPicture?(ee=A,y.fillImg=A):!function(){var n,r=e.attachEvent?/d$|^c/:/d$|^c|^i/,i=function(){var e=t.readyState||"";s=setTimeout(i,"loading"===e?200:999),t.body&&(y.fillImgs(),n=n||r.test(e),n&&clearTimeout(s))},s=setTimeout(i,t.body?9:99),o=function(e,t){var n,r,i=function(){var s=new Date-r;t>s?n=setTimeout(i,t-s):(n=null,e())};return function(){r=new Date,n||(n=setTimeout(i,t))}},a=E.clientHeight,u=function(){_=Math.max(e.innerWidth||0,E.clientWidth)!==O.width||E.clientHeight!==a,a=E.clientHeight,_&&y.fillImgs()};K(e,"resize",o(u,99)),K(t,"readystatechange",i)}(),y.picturefill=ee,y.fillImgs=ee,y.teardownRun=A,ee._=y,e.picturefillCFG={pf:y,push:function(e){var t=e.shift();"function"==typeof y[t]?y[t].apply(y,e):(S[t]=e[0],I&&y.fillImgs({reselect:!0}))}};for(;$&&$.length;)e.picturefillCFG.push($.shift());e.picturefill=ee,"object"==typeof module&&"object"==typeof module.exports?module.exports=ee:"function"==typeof define&&define.amd&&define("picturefill",function(){return ee}),y.supPicture||(C["image/webp"]=i("image/webp","data:image/webp;base64,UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAABBxAR/Q9ERP8DAABWUDggGAAAADABAJ0BKgEAAQADADQlpAADcAD++/1QAA=="))}(window,document),!function(e){function t(t){function n(){function t(e,t,n){return!(!e&&!t)&&(console.warn(n),!0)}function n(){return!!c&&t(r,i,u)}var r=e.webkitRequestAnimationFrame,i=e.requestAnimationFrame,s=screen.width<=768,o=!(r&&i),a=!e.performance,u="setTimeout is being used as a substitiue forrequestAnimationFrame due to a bug within iOS 6 builds",c=o&&s&&a;return n()}function r(e){clearTimeout(e)}function i(e){var t=Date.now(),n=Math.max(v+16,t);return setTimeout(function(){e(v=n)},n-t)}function s(){return Array.prototype.filter?(l=e["request"+p]||e[m.filter(function(t){return void 0!==e[t+h]?t:void 0})+h]||i,n()?i:l):i}function o(){function t(t,n){for(var r;n<t.length;n++)if(e[t[n]]){r=e[t[n]];break}return r}var i=[];return Array.prototype.map?(m.map(function(e){return["Cancel","CancelRequest"].map(function(t){i.push(e+t+p)})}),f=e["cancel"+p]||t(i,0)||r,n()?r:f):r}function a(){return A?i:s()}function u(){return o()}function c(){A?(e.requestAnimationFrame=i,e.cancelAnimationFrame=r):(e.requestAnimationFrame=s(),e.cancelAnimationFrame=o())}var l,f,d,m=["moz","webkit"],p="AnimationFrame",h="Request"+p,v=0,g=e.mozRequestAnimationFrame,y=e.mozCancelAnimationFrame,A=g&&!y;switch(Date.now||(Date.now=function(){return(new Date).getTime()}),t){case"request":case"":d=a();break;case"cancel":d=u();break;case"native":c();break;default:throw new Error("RequestFrame parameter is not a type.")}return d}"object"==typeof module&&"object"==typeof module.exports?module.exports=exports=t:"function"==typeof define&&define.amd?define(function(){return t}):"object"==typeof e&&(e.requestFrame=t)}(window);var $m=jQuery;"function"==typeof svg4everybody&&svg4everybody(),"function"==typeof requestFrame&&requestFrame("native"),"function"==typeof FastClick&&FastClick.attach(document.body),function(){"use strict";function e(){s=o.width(),s<600?(c="phone",i!==c&&(t=n=!1,r=!0)):s<1025?(c="tablet",i!==c&&(t=r=!1,n=!0)):(c="desktop",i!==c&&(t=!0,n=r=!1)),i=c,l=!1}var t,n,r,i,s,o=($m(document.body),$m(window)),a=$m(document.documentElement),u=($m(document),$m(".sticky-block")),c=(Modernizr.touch||document.documentElement.hasOwnProperty("ontouchstart"),""),l=!1;e(),"function"==typeof runforceFeed&&runforceFeed(),window.onresize=function(){l||(requestAnimationFrame(e),l=!0)},a.addClass("lastet"),console.log(inView.is(u[0]))}();