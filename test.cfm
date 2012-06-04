start tests:<br />
<br />
<cfscript>
	myStruct= {a:1,b:2};
	myArr = [1,2,3];
	myObj = new Component();
	myObj.a = 1;
	myObj.b = 2;
	myObj.c = 3;

	_ = new Underscore();
	_myStruct = new Underscore(myStruct);
	_myArr = new Underscore(myArr);
	_myObj = new Underscore(myObj);


	_.forEach(myStruct, function(val, key) {
		writeDump(key & ": " & val);
	});
	writeOutput("<br />");
	
	_.forEach(myArr, function(val, key) {
		writeDump(key & ": " & val);
	});
	writeOutput("<br />");
	
	_.forEach(myObj, function(val, key) {
		writeDump(key & ": " & val);
	});	
	writeOutput("<br />");
	
	collectObj = _myObj.collect(iterator = function(val, key) {
		return(key & ": " & val);
	});	
	writeDump(collectObj);
	writeOutput("<br />");

	collectArr = _myArr.collect(iterator = function(val, key) {
		return(key & ": " & val);
	});	
	writeDump(collectArr);
	writeOutput("<br />");

	reduceObj = _myObj.reduce(iterator = function(memo, num){
		return memo + num;
	}, memo = 0);
	writeDump(reduceObj);
	writeOutput("<br />");

	reduceArr = _myArr.reduce(iterator = function(memo, num){
		return memo + num;
	}, memo = 0);
	writeDump(reduceArr);	

	even = _.find([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
	writeDump(even);
	writeOutput("<br />");

	any = _.any(obj = [0, 'yes', false], iterator = function(val) {
		return val;
	});
	writeDump(any);
	writeOutput("<br />");	

	evens = _.filter([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
	writeDump(evens);
	writeOutput("<br />");	

	odds = _.reject([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
	writeDump(odds);
	writeOutput("<br />");	

	all = _.all([2, 3, 4], function(val) {
		return val > 1;
	});
	writeDump(all);
	writeOutput("<br />");	

	include = _.include([1, 2, 3], 3);
	writeDump("include:" & include);
	writeOutput("<br />");	

	stooges = [{name : 'moe', age : 40}, {name : 'larry', age : 50}, {name : 'curly', age : 60}];
	pluck = _.pluck(stooges, 'name');
	writeOutput("pluck");
	writeDump(pluck);
	writeOutput("<br />");	

	stooges = [{name : 'moe', age : 40}, {name : 'larry', age : 50}, {name : 'curly', age : 60}];
	max = _.max(stooges, function(stooge){ return stooge.age; });
	writeOutput("max");
	writeDump(max);
	writeOutput("<br />");	

	max = _.max([1,2,3,4]);
	writeOutput("max");
	writeDump(max);
	writeOutput("<br />");	

	writeOutput("min");
	writeDump(_.min([10, 5, 100, 2, 1000]));
	writeOutput("<br />");

/*
	invokeObj = [
		{
			x:1,
			z:function(){return true;}
		},{
			x:2,
			z:function(){return false;}
		}
	];
	invoke = _.invoke(invokeObj, function (args){return args;}, {z:10});
	writeDump(invoke);
	writeOutput("<br />");
*/

	toArray = _.toArray({a:10,b:20});
	writeDump(toArray);
	writeOutput("<br />");

	sortBy = _.sortBy([7, 2, 3, 1, 5, 6], function(num){ return num; });
	writeDump(sortBy);
	writeOutput("<br />");

	writeOutput("groupby:");
	groupBy = _.groupBy([1.3, 2.1, 2.4], function(num){ return fix(num); });
	writeDump(groupBy);
	writeOutput("<br />");

	groupBy2 = _.groupBy([{name:'one', length:3}, {name:'two', length:3}, {name:'three', length:5}], 'length');
	writeDump(groupBy2);
	writeOutput("<br />");

	sortedIndex = _.sortedIndex([10, 20, 30, 40, 50], 35);
	writeDump(sortedIndex);
	writeOutput("<br />");	

</cfscript>
end tests