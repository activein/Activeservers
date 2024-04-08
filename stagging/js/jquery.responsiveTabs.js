;(function($,window,undefined){var defaults={active:null,event:'click',disabled:[],collapsible:'accordion',startCollapsed:false,rotate:false,setHash:false,animation:'default',animationQueue:false,duration:500,scrollToAccordion:false,scrollToAccordionOffset:0,accordionTabElement:'<div></div>',activate:function(){},deactivate:function(){},load:function(){},activateState:function(){},classes:{stateDefault:'r-tabs-state-default',stateActive:'r-tabs-state-active',stateDisabled:'r-tabs-state-disabled',stateExcluded:'r-tabs-state-excluded',container:'r-tabs',ul:'r-tabs-nav',tab:'r-tabs-tab',anchor:'r-tabs-anchor',panel:'r-tabs-panel',accordionTitle:'r-tabs-accordion-title'}};function ResponsiveTabs(element,options){this.element=element;this.$element=$(element);this.tabs=[];this.state='';this.rotateInterval=0;this.$queue=$({});this.options=$.extend({},defaults,options);this.init();}
ResponsiveTabs.prototype.init=function(){var _this=this;this.tabs=this._loadElements();this._loadClasses();this._loadEvents();$(window).on('resize',function(e){_this._setState(e);});$(window).on('hashchange',function(e){var tabRef=_this._getTabRefBySelector(window.location.hash);var oTab=_this._getTab(tabRef);if(tabRef>=0&&!oTab._ignoreHashChange&&!oTab.disabled){_this._openTab(e,_this._getTab(tabRef),true);}});if(this.options.rotate!==false){this.startRotation();}
this.$element.bind('tabs-activate',function(e,oTab){_this.options.activate.call(this,e,oTab);});this.$element.bind('tabs-deactivate',function(e,oTab){_this.options.deactivate.call(this,e,oTab);});this.$element.bind('tabs-activate-state',function(e,state){_this.options.activateState.call(this,e,state);});this.$element.bind('tabs-load',function(e){var startTab;_this._setState(e);if(_this.options.startCollapsed!==true&&!(_this.options.startCollapsed==='accordion'&&_this.state==='accordion')){startTab=_this._getStartTab();_this._openTab(e,startTab);_this.options.load.call(this,e,startTab);}});this.$element.trigger('tabs-load');};ResponsiveTabs.prototype._loadElements=function(){var _this=this;var $ul=this.$element.children('ul');var tabs=[];var id=0;this.$element.addClass(_this.options.classes.container);$ul.addClass(_this.options.classes.ul);$('li',$ul).each(function(){var $tab=$(this);var isExcluded=$tab.hasClass(_this.options.classes.stateExcluded);var $anchor,$panel,$accordionTab,$accordionAnchor,panelSelector;if(!isExcluded){$anchor=$('a',$tab);panelSelector=$anchor.attr('href');$panel=$(panelSelector);$accordionTab=$(_this.options.accordionTabElement).insertBefore($panel);$accordionAnchor=$('<a></a>').attr('href',panelSelector).html($anchor.html()).appendTo($accordionTab);var oTab={_ignoreHashChange:false,id:id,disabled:($.inArray(id,_this.options.disabled)!==-1),tab:$(this),anchor:$('a',$tab),panel:$panel,selector:panelSelector,accordionTab:$accordionTab,accordionAnchor:$accordionAnchor,active:false};id++;tabs.push(oTab);}});return tabs;};ResponsiveTabs.prototype._loadClasses=function(){for(var i=0;i<this.tabs.length;i++){this.tabs[i].tab.addClass(this.options.classes.stateDefault).addClass(this.options.classes.tab);this.tabs[i].anchor.addClass(this.options.classes.anchor);this.tabs[i].panel.addClass(this.options.classes.stateDefault).addClass(this.options.classes.panel);this.tabs[i].accordionTab.addClass(this.options.classes.accordionTitle);this.tabs[i].accordionAnchor.addClass(this.options.classes.anchor);if(this.tabs[i].disabled){this.tabs[i].tab.removeClass(this.options.classes.stateDefault).addClass(this.options.classes.stateDisabled);this.tabs[i].accordionTab.removeClass(this.options.classes.stateDefault).addClass(this.options.classes.stateDisabled);}}};ResponsiveTabs.prototype._loadEvents=function(){var _this=this;var fActivate=function(e){var current=_this._getCurrentTab();var activatedTab=e.data.tab;e.preventDefault();if(!activatedTab.disabled){if(_this.options.setHash){if(history.pushState){history.pushState(null,null,activatedTab.selector);}else{window.location.hash=activatedTab.selector;}}
e.data.tab._ignoreHashChange=true;if(current!==activatedTab||_this._isCollapisble()){_this._closeTab(e,current);if(current!==activatedTab||!_this._isCollapisble()){_this._openTab(e,activatedTab,false,true);}}}};for(var i=0;i<this.tabs.length;i++){this.tabs[i].anchor.on(_this.options.event,{tab:_this.tabs[i]},fActivate);this.tabs[i].accordionAnchor.on(_this.options.event,{tab:_this.tabs[i]},fActivate);}};ResponsiveTabs.prototype._getStartTab=function(){var tabRef=this._getTabRefBySelector(window.location.hash);var startTab;if(tabRef>=0&&!this._getTab(tabRef).disabled){startTab=this._getTab(tabRef);}else if(this.options.active>0&&!this._getTab(this.options.active).disabled){startTab=this._getTab(this.options.active);}else{startTab=this._getTab(0);}
return startTab;};ResponsiveTabs.prototype._setState=function(e){var $ul=$('ul',this.$element);var oldState=this.state;var startCollapsedIsState=(typeof this.options.startCollapsed==='string');var startTab;if($ul.is(':visible')){this.state='tabs';}else{this.state='accordion';}
if(this.state!==oldState){this.$element.trigger('tabs-activate-state',{oldState:oldState,newState:this.state});if(oldState&&startCollapsedIsState&&this.options.startCollapsed!==this.state&&this._getCurrentTab()===undefined){startTab=this._getStartTab(e);this._openTab(e,startTab);}}};ResponsiveTabs.prototype._openTab=function(e,oTab,closeCurrent,stopRotation){var _this=this;var scrollOffset;if(closeCurrent){this._closeTab(e,this._getCurrentTab());}
if(stopRotation&&this.rotateInterval>0){this.stopRotation();}
oTab.active=true;oTab.tab.removeClass(_this.options.classes.stateDefault).addClass(_this.options.classes.stateActive);oTab.accordionTab.removeClass(_this.options.classes.stateDefault).addClass(_this.options.classes.stateActive);_this._doTransition(oTab.panel,_this.options.animation,'open',function(){oTab.panel.removeClass(_this.options.classes.stateDefault).addClass(_this.options.classes.stateActive);if(_this.getState()==='accordion'&&_this.options.scrollToAccordion&&(!_this._isInView(oTab.accordionTab)||_this.options.animation!=='default')){scrollOffset=oTab.accordionTab.offset().top-_this.options.scrollToAccordionOffset;if(_this.options.animation!=='default'&&_this.options.duration>0){$('html, body').animate({scrollTop:scrollOffset},_this.options.duration);}else{$('html, body').scrollTop(scrollOffset);}}});this.$element.trigger('tabs-activate',oTab);};ResponsiveTabs.prototype._closeTab=function(e,oTab){var _this=this;var doQueueOnState=typeof _this.options.animationQueue==='string';var doQueue;if(oTab!==undefined){if(doQueueOnState&&_this.getState()===_this.options.animationQueue){doQueue=true;}else if(doQueueOnState){doQueue=false;}else{doQueue=_this.options.animationQueue;}
oTab.active=false;oTab.tab.removeClass(_this.options.classes.stateActive).addClass(_this.options.classes.stateDefault);_this._doTransition(oTab.panel,_this.options.animation,'close',function(){oTab.accordionTab.removeClass(_this.options.classes.stateActive).addClass(_this.options.classes.stateDefault);oTab.panel.removeClass(_this.options.classes.stateActive).addClass(_this.options.classes.stateDefault);},!doQueue);this.$element.trigger('tabs-deactivate',oTab);}};ResponsiveTabs.prototype._doTransition=function(panel,method,state,callback,dequeue){var effect;var _this=this;switch(method){case'slide':effect=(state==='open')?'slideDown':'slideUp';break;case'fade':effect=(state==='open')?'fadeIn':'fadeOut';break;default:effect=(state==='open')?'show':'hide';_this.options.duration=0;break;}
this.$queue.queue('responsive-tabs',function(next){panel[effect]({duration:_this.options.duration,complete:function(){callback.call(panel,method,state);next();}});});if(state==='open'||dequeue){this.$queue.dequeue('responsive-tabs');}};ResponsiveTabs.prototype._isCollapisble=function(){return(typeof this.options.collapsible==='boolean'&&this.options.collapsible)||(typeof this.options.collapsible==='string'&&this.options.collapsible===this.getState());};ResponsiveTabs.prototype._getTab=function(numRef){return this.tabs[numRef];};ResponsiveTabs.prototype._getTabRefBySelector=function(selector){for(var i=0;i<this.tabs.length;i++){if(this.tabs[i].selector===selector){return i;}}
return-1;};ResponsiveTabs.prototype._getCurrentTab=function(){return this._getTab(this._getCurrentTabRef());};ResponsiveTabs.prototype._getNextTabRef=function(currentTabRef){var tabRef=(currentTabRef||this._getCurrentTabRef());var nextTabRef=(tabRef===this.tabs.length-1)?0:tabRef+1;return(this._getTab(nextTabRef).disabled)?this._getNextTabRef(nextTabRef):nextTabRef;};ResponsiveTabs.prototype._getPreviousTabRef=function(){return(this._getCurrentTabRef()===0)?this.tabs.length-1:this._getCurrentTabRef()-1;};ResponsiveTabs.prototype._getCurrentTabRef=function(){for(var i=0;i<this.tabs.length;i++){if(this.tabs[i].active){return i;}}
return-1;};ResponsiveTabs.prototype._isInView=function($element){var docViewTop=$(window).scrollTop(),docViewBottom=docViewTop+$(window).height(),elemTop=$element.offset().top,elemBottom=elemTop+$element.height();return((elemBottom<=docViewBottom)&&(elemTop>=docViewTop));};ResponsiveTabs.prototype.activate=function(tabRef,stopRotation){var e=jQuery.Event('tabs-activate');var oTab=this._getTab(tabRef);if(!oTab.disabled){this._openTab(e,oTab,true,stopRotation||true);}};ResponsiveTabs.prototype.deactivate=function(tabRef){var e=jQuery.Event('tabs-dectivate');var oTab=this._getTab(tabRef);if(!oTab.disabled){this._closeTab(e,oTab);}};ResponsiveTabs.prototype.enable=function(tabRef){var oTab=this._getTab(tabRef);if(oTab){oTab.disabled=false;oTab.tab.addClass(this.options.classes.stateDefault).removeClass(this.options.classes.stateDisabled);oTab.accordionTab.addClass(this.options.classes.stateDefault).removeClass(this.options.classes.stateDisabled);}};ResponsiveTabs.prototype.disable=function(tabRef){var oTab=this._getTab(tabRef);if(oTab){oTab.disabled=true;oTab.tab.removeClass(this.options.classes.stateDefault).addClass(this.options.classes.stateDisabled);oTab.accordionTab.removeClass(this.options.classes.stateDefault).addClass(this.options.classes.stateDisabled);}};ResponsiveTabs.prototype.getState=function(){return this.state;};ResponsiveTabs.prototype.startRotation=function(speed){var _this=this;if(this.tabs.length>this.options.disabled.length){this.rotateInterval=setInterval(function(){var e=jQuery.Event('rotate');_this._openTab(e,_this._getTab(_this._getNextTabRef()),true);},speed||(($.isNumeric(_this.options.rotate))?_this.options.rotate:4000));}else{throw new Error("Rotation is not possible if all tabs are disabled");}};ResponsiveTabs.prototype.stopRotation=function(){window.clearInterval(this.rotateInterval);this.rotateInterval=0;};ResponsiveTabs.prototype.option=function(key,value){if(value){this.options[key]=value;}
return this.options[key];};$.fn.responsiveTabs=function(options){var args=arguments;if(options===undefined||typeof options==='object'){return this.each(function(){if(!$.data(this,'responsivetabs')){$.data(this,'responsivetabs',new ResponsiveTabs(this,options));}});}else if(typeof options==='string'&&options[0]!=='_'&&options!=='init'){return this.each(function(){var instance=$.data(this,'responsivetabs');if(instance instanceof ResponsiveTabs&&typeof instance[options]==='function'){instance[options].apply(instance,Array.prototype.slice.call(args,1));}
if(options==='destroy'){$.data(this,'responsivetabs',null);}});}};}(jQuery,window));