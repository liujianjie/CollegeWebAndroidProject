(function(){function e(e){function t(t,n,r,i,s,o){for(;s>=0&&o>s;s+=e){var u=i?i[s]:s;r=n(r,t[u],u,t)}return r}return function(n,r,i,s){r=b(r,s,4);var o=!C(n)&&y.keys(n),u=(o||n).length,a=e>0?0:u-1;return arguments.length<3&&(i=n[o?o[a]:a],a+=e),t(n,r,i,o,a,u)}}function t(e){return function(t,n,r){n=w(n,r);for(var i=N(t),s=e>0?0:i-1;s>=0&&i>s;s+=e)if(n(t[s],s,t))return s;return-1}}function n(e,t,n){return function(r,i,s){var o=0,u=N(r);if("number"==typeof s)e>0?o=s>=0?s:Math.max(s+u,o):u=s>=0?Math.min(s+1,u):s+u+1;else if(n&&s&&u)return s=n(r,i),r[s]===i?s:-1;if(i!==i)return s=t(l.call(r,o,u),y.isNaN),s>=0?s+o:-1;for(s=e>0?o:u-1;s>=0&&u>s;s+=e)if(r[s]===i)return s;return-1}}function r(e,t){var n=M.length,r=e.constructor,i=y.isFunction(r)&&r.prototype||u,s="constructor";for(y.has(e,s)&&!y.contains(t,s)&&t.push(s);n--;)s=M[n],s in e&&e[s]!==i[s]&&!y.contains(t,s)&&t.push(s)}var i=this,s=i._,o=Array.prototype,u=Object.prototype,a=Function.prototype,f=o.push,l=o.slice,c=u.toString,h=u.hasOwnProperty,p=Array.isArray,d=Object.keys,v=a.bind,m=Object.create,g=function(){},y=function(e){return e instanceof y?e:this instanceof y?void (this._wrapped=e):new y(e)};"undefined"!=typeof exports?("undefined"!=typeof module&&module.exports&&(exports=module.exports=y),exports._=y):i._=y,y.VERSION="1.8.3";var b=function(e,t,n){if(t===void 0)return e;switch(null==n?3:n){case 1:return function(n){return e.call(t,n)};case 2:return function(n,r){return e.call(t,n,r)};case 3:return function(n,r,i){return e.call(t,n,r,i)};case 4:return function(n,r,i,s){return e.call(t,n,r,i,s)}}return function(){return e.apply(t,arguments)}},w=function(e,t,n){return null==e?y.identity:y.isFunction(e)?b(e,t,n):y.isObject(e)?y.matcher(e):y.property(e)};y.iteratee=function(e,t){return w(e,t,1/0)};var E=function(e,t){return function(n){var r=arguments.length;if(2>r||null==n)return n;for(var i=1;r>i;i++)for(var s=arguments[i],o=e(s),u=o.length,a=0;u>a;a++){var f=o[a];t&&n[f]!==void 0||(n[f]=s[f])}return n}},S=function(e){if(!y.isObject(e))return{};if(m)return m(e);g.prototype=e;var t=new g;return g.prototype=null,t},x=function(e){return function(t){return null==t?void 0:t[e]}},T=Math.pow(2,53)-1,N=x("length"),C=function(e){var t=N(e);return"number"==typeof t&&t>=0&&T>=t};y.each=y.forEach=function(e,t,n){t=b(t,n);var r,i;if(C(e))for(r=0,i=e.length;i>r;r++)t(e[r],r,e);else{var s=y.keys(e);for(r=0,i=s.length;i>r;r++)t(e[s[r]],s[r],e)}return e},y.map=y.collect=function(e,t,n){t=w(t,n);for(var r=!C(e)&&y.keys(e),i=(r||e).length,s=Array(i),o=0;i>o;o++){var u=r?r[o]:o;s[o]=t(e[u],u,e)}return s},y.reduce=y.foldl=y.inject=e(1),y.reduceRight=y.foldr=e(-1),y.find=y.detect=function(e,t,n){var r;return r=C(e)?y.findIndex(e,t,n):y.findKey(e,t,n),r!==void 0&&r!==-1?e[r]:void 0},y.filter=y.select=function(e,t,n){var r=[];return t=w(t,n),y.each(e,function(e,n,i){t(e,n,i)&&r.push(e)}),r},y.reject=function(e,t,n){return y.filter(e,y.negate(w(t)),n)},y.every=y.all=function(e,t,n){t=w(t,n);for(var r=!C(e)&&y.keys(e),i=(r||e).length,s=0;i>s;s++){var o=r?r[s]:s;if(!t(e[o],o,e))return!1}return!0},y.some=y.any=function(e,t,n){t=w(t,n);for(var r=!C(e)&&y.keys(e),i=(r||e).length,s=0;i>s;s++){var o=r?r[s]:s;if(t(e[o],o,e))return!0}return!1},y.contains=y.includes=y.include=function(e,t,n,r){return C(e)||(e=y.values(e)),("number"!=typeof n||r)&&(n=0),y.indexOf(e,t,n)>=0},y.invoke=function(e,t){var n=l.call(arguments,2),r=y.isFunction(t);return y.map(e,function(e){var i=r?t:e[t];return null==i?i:i.apply(e,n)})},y.pluck=function(e,t){return y.map(e,y.property(t))},y.where=function(e,t){return y.filter(e,y.matcher(t))},y.findWhere=function(e,t){return y.find(e,y.matcher(t))},y.max=function(e,t,n){var r,i,s=-1/0,o=-1/0;if(null==t&&null!=e){e=C(e)?e:y.values(e);for(var u=0,a=e.length;a>u;u++)r=e[u],r>s&&(s=r)}else t=w(t,n),y.each(e,function(e,n,r){i=t(e,n,r),(i>o||i===-1/0&&s===-1/0)&&(s=e,o=i)});return s},y.min=function(e,t,n){var r,i,s=1/0,o=1/0;if(null==t&&null!=e){e=C(e)?e:y.values(e);for(var u=0,a=e.length;a>u;u++)r=e[u],s>r&&(s=r)}else t=w(t,n),y.each(e,function(e,n,r){i=t(e,n,r),(o>i||1/0===i&&1/0===s)&&(s=e,o=i)});return s},y.shuffle=function(e){for(var t,n=C(e)?e:y.values(e),r=n.length,i=Array(r),s=0;r>s;s++)t=y.random(0,s),t!==s&&(i[s]=i[t]),i[t]=n[s];return i},y.sample=function(e,t,n){return null==t||n?(C(e)||(e=y.values(e)),e[y.random(e.length-1)]):y.shuffle(e).slice(0,Math.max(0,t))},y.sortBy=function(e,t,n){return t=w(t,n),y.pluck(y.map(e,function(e,n,r){return{value:e,index:n,criteria:t(e,n,r)}}).sort(function(e,t){var n=e.criteria,r=t.criteria;if(n!==r){if(n>r||n===void 0)return 1;if(r>n||r===void 0)return-1}return e.index-t.index}),"value")};var k=function(e){return function(t,n,r){var i={};return n=w(n,r),y.each(t,function(r,s){var o=n(r,s,t);e(i,r,o)}),i}};y.groupBy=k(function(e,t,n){y.has(e,n)?e[n].push(t):e[n]=[t]}),y.indexBy=k(function(e,t,n){e[n]=t}),y.countBy=k(function(e,t,n){y.has(e,n)?e[n]++:e[n]=1}),y.toArray=function(e){return e?y.isArray(e)?l.call(e):C(e)?y.map(e,y.identity):y.values(e):[]},y.size=function(e){return null==e?0:C(e)?e.length:y.keys(e).length},y.partition=function(e,t,n){t=w(t,n);var r=[],i=[];return y.each(e,function(e,n,s){(t(e,n,s)?r:i).push(e)}),[r,i]},y.first=y.head=y.take=function(e,t,n){return null==e?void 0:null==t||n?e[0]:y.initial(e,e.length-t)},y.initial=function(e,t,n){return l.call(e,0,Math.max(0,e.length-(null==t||n?1:t)))},y.last=function(e,t,n){return null==e?void 0:null==t||n?e[e.length-1]:y.rest(e,Math.max(0,e.length-t))},y.rest=y.tail=y.drop=function(e,t,n){return l.call(e,null==t||n?1:t)},y.compact=function(e){return y.filter(e,y.identity)};var L=function(e,t,n,r){for(var i=[],s=0,o=r||0,u=N(e);u>o;o++){var a=e[o];if(C(a)&&(y.isArray(a)||y.isArguments(a))){t||(a=L(a,t,n));var f=0,l=a.length;for(i.length+=l;l>f;)i[s++]=a[f++]}else n||(i[s++]=a)}return i};y.flatten=function(e,t){return L(e,t,!1)},y.without=function(e){return y.difference(e,l.call(arguments,1))},y.uniq=y.unique=function(e,t,n,r){y.isBoolean(t)||(r=n,n=t,t=!1),null!=n&&(n=w(n,r));for(var i=[],s=[],o=0,u=N(e);u>o;o++){var a=e[o],f=n?n(a,o,e):a;t?(o&&s===f||i.push(a),s=f):n?y.contains(s,f)||(s.push(f),i.push(a)):y.contains(i,a)||i.push(a)}return i},y.union=function(){return y.uniq(L(arguments,!0,!0))},y.intersection=function(e){for(var t=[],n=arguments.length,r=0,i=N(e);i>r;r++){var s=e[r];if(!y.contains(t,s)){for(var o=1;n>o&&y.contains(arguments[o],s);o++);o===n&&t.push(s)}}return t},y.difference=function(e){var t=L(arguments,!0,!0,1);return y.filter(e,function(e){return!y.contains(t,e)})},y.zip=function(){return y.unzip(arguments)},y.unzip=function(e){for(var t=e&&y.max(e,N).length||0,n=Array(t),r=0;t>r;r++)n[r]=y.pluck(e,r);return n},y.object=function(e,t){for(var n={},r=0,i=N(e);i>r;r++)t?n[e[r]]=t[r]:n[e[r][0]]=e[r][1];return n},y.findIndex=t(1),y.findLastIndex=t(-1),y.sortedIndex=function(e,t,n,r){n=w(n,r,1);for(var i=n(t),s=0,o=N(e);o>s;){var u=Math.floor((s+o)/2);n(e[u])<i?s=u+1:o=u}return s},y.indexOf=n(1,y.findIndex,y.sortedIndex),y.lastIndexOf=n(-1,y.findLastIndex),y.range=function(e,t,n){null==t&&(t=e||0,e=0),n=n||1;for(var r=Math.max(Math.ceil((t-e)/n),0),i=Array(r),s=0;r>s;s++,e+=n)i[s]=e;return i};var A=function(e,t,n,r,i){if(r instanceof t){var s=S(e.prototype),o=e.apply(s,i);return y.isObject(o)?o:s}return e.apply(n,i)};y.bind=function(e,t){if(v&&e.bind===v)return v.apply(e,l.call(arguments,1));if(!y.isFunction(e))throw new TypeError("Bind must be called on a function");var n=l.call(arguments,2),r=function(){return A(e,r,t,this,n.concat(l.call(arguments)))};return r},y.partial=function(e){var t=l.call(arguments,1),n=function(){for(var r=0,i=t.length,s=Array(i),o=0;i>o;o++)s[o]=t[o]===y?arguments[r++]:t[o];for(;r<arguments.length;)s.push(arguments[r++]);return A(e,n,this,this,s)};return n},y.bindAll=function(e){var t,n,r=arguments.length;if(1>=r)throw new Error("bindAll must be passed function names");for(t=1;r>t;t++)n=arguments[t],e[n]=y.bind(e[n],e);return e},y.memoize=function(e,t){var n=function(r){var i=n.cache,s=""+(t?t.apply(this,arguments):r);return y.has(i,s)||(i[s]=e.apply(this,arguments)),i[s]};return n.cache={},n},y.delay=function(e,t){var n=l.call(arguments,2);return setTimeout(function(){return e.apply(null,n)},t)},y.defer=y.partial(y.delay,y,1),y.throttle=function(e,t,n){var r,i,s,o=null,u=0;n||(n={});var a=function(){u=n.leading===!1?0:y.now(),o=null,s=e.apply(r,i),o||(r=i=null)};return function(){var f=y.now();u||n.leading!==!1||(u=f);var l=t-(f-u);return r=this,i=arguments,0>=l||l>t?(o&&(clearTimeout(o),o=null),u=f,s=e.apply(r,i),o||(r=i=null)):o||n.trailing===!1||(o=setTimeout(a,l)),s}},y.debounce=function(e,t,n){var r,i,s,o,u,a=function(){var f=y.now()-o;t>f&&f>=0?r=setTimeout(a,t-f):(r=null,n||(u=e.apply(s,i),r||(s=i=null)))};return function(){s=this,i=arguments,o=y.now();var f=n&&!r;return r||(r=setTimeout(a,t)),f&&(u=e.apply(s,i),s=i=null),u}},y.wrap=function(e,t){return y.partial(t,e)},y.negate=function(e){return function(){return!e.apply(this,arguments)}},y.compose=function(){var e=arguments,t=e.length-1;return function(){for(var n=t,r=e[t].apply(this,arguments);n--;)r=e[n].call(this,r);return r}},y.after=function(e,t){return function(){return--e<1?t.apply(this,arguments):void 0}},y.before=function(e,t){var n;return function(){return--e>0&&(n=t.apply(this,arguments)),1>=e&&(t=null),n}},y.once=y.partial(y.before,2);var O=!{toString:null}.propertyIsEnumerable("toString"),M=["valueOf","isPrototypeOf","toString","propertyIsEnumerable","hasOwnProperty","toLocaleString"];y.keys=function(e){if(!y.isObject(e))return[];if(d)return d(e);var t=[];for(var n in e)y.has(e,n)&&t.push(n);return O&&r(e,t),t},y.allKeys=function(e){if(!y.isObject(e))return[];var t=[];for(var n in e)t.push(n);return O&&r(e,t),t},y.values=function(e){for(var t=y.keys(e),n=t.length,r=Array(n),i=0;n>i;i++)r[i]=e[t[i]];return r},y.mapObject=function(e,t,n){t=w(t,n);for(var r,i=y.keys(e),s=i.length,o={},u=0;s>u;u++)r=i[u],o[r]=t(e[r],r,e);return o},y.pairs=function(e){for(var t=y.keys(e),n=t.length,r=Array(n),i=0;n>i;i++)r[i]=[t[i],e[t[i]]];return r},y.invert=function(e){for(var t={},n=y.keys(e),r=0,i=n.length;i>r;r++)t[e[n[r]]]=n[r];return t},y.functions=y.methods=function(e){var t=[];for(var n in e)y.isFunction(e[n])&&t.push(n);return t.sort()},y.extend=E(y.allKeys),y.extendOwn=y.assign=E(y.keys),y.findKey=function(e,t,n){t=w(t,n);for(var r,i=y.keys(e),s=0,o=i.length;o>s;s++)if(r=i[s],t(e[r],r,e))return r},y.pick=function(e,t,n){var r,i,s={},o=e;if(null==o)return s;y.isFunction(t)?(i=y.allKeys(o),r=b(t,n)):(i=L(arguments,!1,!1,1),r=function(e,t,n){return t in n},o=Object(o));for(var u=0,a=i.length;a>u;u++){var f=i[u],l=o[f];r(l,f,o)&&(s[f]=l)}return s},y.omit=function(e,t,n){if(y.isFunction(t))t=y.negate(t);else{var r=y.map(L(arguments,!1,!1,1),String);t=function(e,t){return!y.contains(r,t)}}return y.pick(e,t,n)},y.defaults=E(y.allKeys,!0),y.create=function(e,t){var n=S(e);return t&&y.extendOwn(n,t),n},y.clone=function(e){return y.isObject(e)?y.isArray(e)?e.slice():y.extend({},e):e},y.tap=function(e,t){return t(e),e},y.isMatch=function(e,t){var n=y.keys(t),r=n.length;if(null==e)return!r;for(var i=Object(e),s=0;r>s;s++){var o=n[s];if(t[o]!==i[o]||!(o in i))return!1}return!0};var _=function(e,t,n,r){if(e===t)return 0!==e||1/e===1/t;if(null==e||null==t)return e===t;e instanceof y&&(e=e._wrapped),t instanceof y&&(t=t._wrapped);var i=c.call(e);if(i!==c.call(t))return!1;switch(i){case"[object RegExp]":case"[object String]":return""+e==""+t;case"[object Number]":return+e!==+e?+t!==+t:0===+e?1/+e===1/t:+e===+t;case"[object Date]":case"[object Boolean]":return+e===+t}var s="[object Array]"===i;if(!s){if("object"!=typeof e||"object"!=typeof t)return!1;var o=e.constructor,u=t.constructor;if(o!==u&&!(y.isFunction(o)&&o instanceof o&&y.isFunction(u)&&u instanceof u)&&"constructor"in e&&"constructor"in t)return!1}n=n||[],r=r||[];for(var a=n.length;a--;)if(n[a]===e)return r[a]===t;if(n.push(e),r.push(t),s){if(a=e.length,a!==t.length)return!1;for(;a--;)if(!_(e[a],t[a],n,r))return!1}else{var f,l=y.keys(e);if(a=l.length,y.keys(t).length!==a)return!1;for(;a--;)if(f=l[a],!y.has(t,f)||!_(e[f],t[f],n,r))return!1}return n.pop(),r.pop(),!0};y.isEqual=function(e,t){return _(e,t)},y.isEmpty=function(e){return null==e?!0:C(e)&&(y.isArray(e)||y.isString(e)||y.isArguments(e))?0===e.length:0===y.keys(e).length},y.isElement=function(e){return!!e&&1===e.nodeType},y.isArray=p||function(e){return"[object Array]"===c.call(e)},y.isObject=function(e){var t=typeof e;return"function"===t||"object"===t&&!!e},y.each(["Arguments","Function","String","Number","Date","RegExp","Error"],function(e){y["is"+e]=function(t){return c.call(t)==="[object "+e+"]"}}),y.isArguments(arguments)||(y.isArguments=function(e){return y.has(e,"callee")}),"function"!=typeof /./&&"object"!=typeof Int8Array&&(y.isFunction=function(e){return"function"==typeof e||!1}),y.isFinite=function(e){return isFinite(e)&&!isNaN(parseFloat(e))},y.isNaN=function(e){return y.isNumber(e)&&e!==+e},y.isBoolean=function(e){return e===!0||e===!1||"[object Boolean]"===c.call(e)},y.isNull=function(e){return null===e},y.isUndefined=function(e){return e===void 0},y.has=function(e,t){return null!=e&&h.call(e,t)},y.noConflict=function(){return i._=s,this},y.identity=function(e){return e},y.constant=function(e){return function(){return e}},y.noop=function(){},y.property=x,y.propertyOf=function(e){return null==e?function(){}:function(t){return e[t]}},y.matcher=y.matches=function(e){return e=y.extendOwn({},e),function(t){return y.isMatch(t,e)}},y.times=function(e,t,n){var r=Array(Math.max(0,e));t=b(t,n,1);for(var i=0;e>i;i++)r[i]=t(i);return r},y.random=function(e,t){return null==t&&(t=e,e=0),e+Math.floor(Math.random()*(t-e+1))},y.now=Date.now||function(){return(new Date).getTime()};var D={"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","`":"&#x60;"},P=y.invert(D),H=function(e){var t=function(t){return e[t]},n="(?:"+y.keys(e).join("|")+")",r=RegExp(n),i=RegExp(n,"g");return function(e){return e=null==e?"":""+e,r.test(e)?e.replace(i,t):e}};y.escape=H(D),y.unescape=H(P),y.result=function(e,t,n){var r=null==e?void 0:e[t];return r===void 0&&(r=n),y.isFunction(r)?r.call(e):r};var B=0;y.uniqueId=function(e){var t=++B+"";return e?e+t:t},y.templateSettings={evaluate:/<%([\s\S]+?)%>/g,interpolate:/<%=([\s\S]+?)%>/g,escape:/<%-([\s\S]+?)%>/g};var j=/(.)^/,F={"'":"'","\\":"\\","\r":"r","\n":"n","\u2028":"u2028","\u2029":"u2029"},I=/\\|'|\r|\n|\u2028|\u2029/g,q=function(e){return"\\"+F[e]};y.template=function(e,t,n){!t&&n&&(t=n),t=y.defaults({},t,y.templateSettings);var r=RegExp([(t.escape||j).source,(t.interpolate||j).source,(t.evaluate||j).source].join("|")+"|$","g"),i=0,s="__p+='";e.replace(r,function(t,n,r,o,u){return s+=e.slice(i,u).replace(I,q),i=u+t.length,n?s+="'+\n((__t=("+n+"))==null?'':_.escape(__t))+\n'":r?s+="'+\n((__t=("+r+"))==null?'':__t)+\n'":o&&(s+="';\n"+o+"\n__p+='"),t}),s+="';\n",t.variable||(s="with(obj||{}){\n"+s+"}\n"),s="var __t,__p='',__j=Array.prototype.join,print=function(){__p+=__j.call(arguments,'');};\n"+s+"return __p;\n";try{var o=new Function(t.variable||"obj","_",s)}catch(u){throw u.source=s,u}var a=function(e){return o.call(this,e,y)},f=t.variable||"obj";return a.source="function("+f+"){\n"+s+"}",a},y.chain=function(e){var t=y(e);return t._chain=!0,t};var R=function(e,t){return e._chain?y(t).chain():t};y.mixin=function(e){y.each(y.functions(e),function(t){var n=y[t]=e[t];y.prototype[t]=function(){var e=[this._wrapped];return f.apply(e,arguments),R(this,n.apply(y,e))}})},y.mixin(y),y.each(["pop","push","reverse","shift","sort","splice","unshift"],function(e){var t=o[e];y.prototype[e]=function(){var n=this._wrapped;return t.apply(n,arguments),"shift"!==e&&"splice"!==e||0!==n.length||delete n[0],R(this,n)}}),y.each(["concat","join","slice"],function(e){var t=o[e];y.prototype[e]=function(){return R(this,t.apply(this._wrapped,arguments))}}),y.prototype.value=function(){return this._wrapped},y.prototype.valueOf=y.prototype.toJSON=y.prototype.value,y.prototype.toString=function(){return""+this._wrapped},"function"==typeof define&&define.amd&&define("underscore",[],function(){return y})}).call(this);