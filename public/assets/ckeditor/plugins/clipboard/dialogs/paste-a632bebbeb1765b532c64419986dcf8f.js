/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("paste",function(a){function d(b){var c=new CKEDITOR.dom.document(b.document),d=c.$,e=c.getById("cke_actscrpt");e&&e.remove(),CKEDITOR.env.ie?d.body.contentEditable="true":d.designMode="on",CKEDITOR.env.ie&&CKEDITOR.env.version<8&&c.getWindow().on("blur",function(){d.selection.empty()}),c.on("keydown",function(a){var b=a.data,c=b.getKeystroke(),d;switch(c){case 27:this.hide(),d=1;break;case 9:case CKEDITOR.SHIFT+9:this.changeFocus(1),d=1}d&&b.preventDefault()},this),a.fire("ariaWidget",new CKEDITOR.dom.element(b.frameElement))}var b=a.lang.clipboard,c=CKEDITOR.env.isCustomDomain();return{title:b.title,minWidth:CKEDITOR.env.ie&&CKEDITOR.env.quirks?370:350,minHeight:CKEDITOR.env.quirks?250:245,onShow:function(){this.parts.dialog.$.offsetHeight,this.setupContent()},onHide:function(){CKEDITOR.env.ie&&(this.getParentEditor().document.getBody().$.contentEditable="true")},onLoad:function(){(CKEDITOR.env.ie7Compat||CKEDITOR.env.ie6Compat)&&a.lang.dir=="rtl"&&this.parts.contents.setStyle("overflow","hidden")},onOk:function(){this.commitContent()},contents:[{id:"general",label:a.lang.common.generalTab,elements:[{type:"html",id:"securityMsg",html:'<div style="white-space:normal;width:340px;">'+b.securityMsg+"</div>"},{type:"html",id:"pasteMsg",html:'<div style="white-space:normal;width:340px;">'+b.pasteMsg+"</div>"},{type:"html",id:"editing_area",style:"width: 100%; height: 100%;",html:"",focus:function(){var a=this.getInputElement().$.contentWindow;setTimeout(function(){a.focus()},500)},setup:function(){var e=this.getDialog(),f='<html dir="'+a.config.contentsLangDirection+'"'+' lang="'+(a.config.contentsLanguage||a.langCode)+'">'+"<head><style>body { margin: 3px; height: 95%; } </style></head><body>"+'<script id="cke_actscrpt" type="text/javascript">'+"window.parent.CKEDITOR.tools.callFunction( "+CKEDITOR.tools.addFunction(d,e)+", this );"+"</script></body>"+"</html>",g=CKEDITOR.env.air?"javascript:void(0)":c?"javascript:void((function(){document.open();document.domain='"+document.domain+"';"+"document.close();"+'})())"':"",h=CKEDITOR.dom.element.createFromHtml('<iframe class="cke_pasteframe" frameborder="0"  allowTransparency="true" src="'+g+'"'+' role="region"'+' aria-label="'+b.pasteArea+'"'+' aria-describedby="'+e.getContentElement("general","pasteMsg").domId+'"'+' aria-multiple="true"'+"></iframe>");h.on("load",function(a){a.removeListener();var b=h.getFrameDocument();b.write(f),CKEDITOR.env.air&&d.call(this,b.getWindow().$)},e),h.setCustomData("dialog",e);var i=this.getElement();i.setHtml(""),i.append(h);if(CKEDITOR.env.ie){var j=CKEDITOR.dom.element.createFromHtml('<span tabindex="-1" style="position:absolute;" role="presentation"></span>');j.on("focus",function(){h.$.contentWindow.focus()}),i.append(j),this.focus=function(){j.focus(),this.fire("focus")}}this.getInputElement=function(){return h},CKEDITOR.env.ie&&(i.setStyle("display","block"),i.setStyle("height",h.$.offsetHeight+2+"px"))},commit:function(a){var b=this.getElement(),c=this.getDialog().getParentEditor(),d=this.getInputElement().getFrameDocument().getBody(),e=d.getBogus(),f;e&&e.remove(),f=d.getHtml(),setTimeout(function(){c.fire("paste",{html:f})},0)}}]}]}});