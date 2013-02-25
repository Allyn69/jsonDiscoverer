/*
* generated by Xtext
*/
grammar InternalJson;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package fr.inria.atlanmod.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package fr.inria.atlanmod.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import fr.inria.atlanmod.services.JsonGrammarAccess;

}

@parser::members {

 	private JsonGrammarAccess grammarAccess;
 	
    public InternalJsonParser(TokenStream input, JsonGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Model";	
   	}
   	
   	@Override
   	protected JsonGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	 iv_ruleModel=ruleModel 
	 { $current=$iv_ruleModel.current; } 
	 EOF 
;

// Rule Model
ruleModel returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getModelAccess().getObjectsJsonObjectParserRuleCall_0_0()); 
	    }
		lv_objects_0_0=ruleJsonObject		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModelRule());
	        }
       		add(
       			$current, 
       			"objects",
        		lv_objects_0_0, 
        		"JsonObject");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
    { 
        newCompositeNode(grammarAccess.getModelAccess().getLSQUAREParserRuleCall_1_0()); 
    }
ruleLSQUARE
    { 
        afterParserOrEnumRuleCall();
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getModelAccess().getObjectsJsonObjectParserRuleCall_1_1_0()); 
	    }
		lv_objects_2_0=ruleJsonObject		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModelRule());
	        }
       		add(
       			$current, 
       			"objects",
        		lv_objects_2_0, 
        		"JsonObject");
	        afterParserOrEnumRuleCall();
	    }

)
)(
    { 
        newCompositeNode(grammarAccess.getModelAccess().getCOMMAParserRuleCall_1_2_0()); 
    }
ruleCOMMA
    { 
        afterParserOrEnumRuleCall();
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getModelAccess().getObjectsJsonObjectParserRuleCall_1_2_1_0()); 
	    }
		lv_objects_4_0=ruleJsonObject		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModelRule());
	        }
       		add(
       			$current, 
       			"objects",
        		lv_objects_4_0, 
        		"JsonObject");
	        afterParserOrEnumRuleCall();
	    }

)
))*
    { 
        newCompositeNode(grammarAccess.getModelAccess().getRSQUAREParserRuleCall_1_3()); 
    }
ruleRSQUARE
    { 
        afterParserOrEnumRuleCall();
    }
))
;





// Entry rule entryRuleJsonObject
entryRuleJsonObject returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getJsonObjectRule()); }
	 iv_ruleJsonObject=ruleJsonObject 
	 { $current=$iv_ruleJsonObject.current; } 
	 EOF 
;

// Rule JsonObject
ruleJsonObject returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getJsonObjectAccess().getLCURLYParserRuleCall_0()); 
    }
ruleLCURLY
    { 
        afterParserOrEnumRuleCall();
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getJsonObjectAccess().getPairsPairParserRuleCall_1_0()); 
	    }
		lv_pairs_1_0=rulePair		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getJsonObjectRule());
	        }
       		add(
       			$current, 
       			"pairs",
        		lv_pairs_1_0, 
        		"Pair");
	        afterParserOrEnumRuleCall();
	    }

)
)(
    { 
        newCompositeNode(grammarAccess.getJsonObjectAccess().getCOMMAParserRuleCall_2_0()); 
    }
ruleCOMMA
    { 
        afterParserOrEnumRuleCall();
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getJsonObjectAccess().getPairsPairParserRuleCall_2_1_0()); 
	    }
		lv_pairs_3_0=rulePair		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getJsonObjectRule());
	        }
       		add(
       			$current, 
       			"pairs",
        		lv_pairs_3_0, 
        		"Pair");
	        afterParserOrEnumRuleCall();
	    }

)
))*
    { 
        newCompositeNode(grammarAccess.getJsonObjectAccess().getRCURLYParserRuleCall_3()); 
    }
ruleRCURLY
    { 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRulePair
entryRulePair returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPairRule()); }
	 iv_rulePair=rulePair 
	 { $current=$iv_rulePair.current; } 
	 EOF 
;

// Rule Pair
rulePair returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_string_0_0=RULE_STRING
		{
			newLeafNode(lv_string_0_0, grammarAccess.getPairAccess().getStringSTRINGTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPairRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"string",
        		lv_string_0_0, 
        		"STRING");
	    }

)
)
    { 
        newCompositeNode(grammarAccess.getPairAccess().getCOLONParserRuleCall_1()); 
    }
ruleCOLON
    { 
        afterParserOrEnumRuleCall();
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPairAccess().getValueValueParserRuleCall_2_0()); 
	    }
		lv_value_2_0=ruleValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPairRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_2_0, 
        		"Value");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleValue
entryRuleValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getValueRule()); }
	 iv_ruleValue=ruleValue 
	 { $current=$iv_ruleValue.current; } 
	 EOF 
;

// Rule Value
ruleValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getValueAccess().getStringValueParserRuleCall_0()); 
    }
    this_StringValue_0=ruleStringValue
    { 
        $current = $this_StringValue_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getNumberValueParserRuleCall_1()); 
    }
    this_NumberValue_1=ruleNumberValue
    { 
        $current = $this_NumberValue_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getJsonObjectValueParserRuleCall_2()); 
    }
    this_JsonObjectValue_2=ruleJsonObjectValue
    { 
        $current = $this_JsonObjectValue_2.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getArrayValueParserRuleCall_3()); 
    }
    this_ArrayValue_3=ruleArrayValue
    { 
        $current = $this_ArrayValue_3.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getBooleanValueParserRuleCall_4()); 
    }
    this_BooleanValue_4=ruleBooleanValue
    { 
        $current = $this_BooleanValue_4.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getNullValueParserRuleCall_5()); 
    }
    this_NullValue_5=ruleNullValue
    { 
        $current = $this_NullValue_5.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleStringValue
entryRuleStringValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getStringValueRule()); }
	 iv_ruleStringValue=ruleStringValue 
	 { $current=$iv_ruleStringValue.current; } 
	 EOF 
;

// Rule StringValue
ruleStringValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_value_0_0=RULE_STRING
		{
			newLeafNode(lv_value_0_0, grammarAccess.getStringValueAccess().getValueSTRINGTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getStringValueRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"STRING");
	    }

)
)
;





// Entry rule entryRuleNumberValue
entryRuleNumberValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getNumberValueRule()); }
	 iv_ruleNumberValue=ruleNumberValue 
	 { $current=$iv_ruleNumberValue.current; } 
	 EOF 
;

// Rule NumberValue
ruleNumberValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_value_0_0=RULE_INT
		{
			newLeafNode(lv_value_0_0, grammarAccess.getNumberValueAccess().getValueINTTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getNumberValueRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"INT");
	    }

)
)
;





// Entry rule entryRuleJsonObjectValue
entryRuleJsonObjectValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getJsonObjectValueRule()); }
	 iv_ruleJsonObjectValue=ruleJsonObjectValue 
	 { $current=$iv_ruleJsonObjectValue.current; } 
	 EOF 
;

// Rule JsonObjectValue
ruleJsonObjectValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getJsonObjectValueAccess().getValueJsonObjectParserRuleCall_0()); 
	    }
		lv_value_0_0=ruleJsonObject		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getJsonObjectValueRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"JsonObject");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleArrayValue
entryRuleArrayValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getArrayValueRule()); }
	 iv_ruleArrayValue=ruleArrayValue 
	 { $current=$iv_ruleArrayValue.current; } 
	 EOF 
;

// Rule ArrayValue
ruleArrayValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getArrayValueAccess().getLSQUAREParserRuleCall_0()); 
    }
ruleLSQUARE
    { 
        afterParserOrEnumRuleCall();
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getArrayValueAccess().getValueValueParserRuleCall_1_0()); 
	    }
		lv_value_1_0=ruleValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getArrayValueRule());
	        }
       		add(
       			$current, 
       			"value",
        		lv_value_1_0, 
        		"Value");
	        afterParserOrEnumRuleCall();
	    }

)
)(
    { 
        newCompositeNode(grammarAccess.getArrayValueAccess().getCOMMAParserRuleCall_2_0()); 
    }
ruleCOMMA
    { 
        afterParserOrEnumRuleCall();
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getArrayValueAccess().getValueValueParserRuleCall_2_1_0()); 
	    }
		lv_value_3_0=ruleValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getArrayValueRule());
	        }
       		add(
       			$current, 
       			"value",
        		lv_value_3_0, 
        		"Value");
	        afterParserOrEnumRuleCall();
	    }

)
))*
    { 
        newCompositeNode(grammarAccess.getArrayValueAccess().getRSQUAREParserRuleCall_3()); 
    }
ruleRSQUARE
    { 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleBooleanValue
entryRuleBooleanValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getBooleanValueRule()); }
	 iv_ruleBooleanValue=ruleBooleanValue 
	 { $current=$iv_ruleBooleanValue.current; } 
	 EOF 
;

// Rule BooleanValue
ruleBooleanValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getBooleanValueAccess().getValueBOOLParserRuleCall_0()); 
	    }
		lv_value_0_0=ruleBOOL		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getBooleanValueRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"BOOL");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleNullValue
entryRuleNullValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getNullValueRule()); }
	 iv_ruleNullValue=ruleNullValue 
	 { $current=$iv_ruleNullValue.current; } 
	 EOF 
;

// Rule NullValue
ruleNullValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getNullValueAccess().getValueNULLParserRuleCall_0()); 
	    }
		lv_value_0_0=ruleNULL		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getNullValueRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"NULL");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleLCURLY
entryRuleLCURLY returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getLCURLYRule()); } 
	 iv_ruleLCURLY=ruleLCURLY 
	 { $current=$iv_ruleLCURLY.current.getText(); }  
	 EOF 
;

// Rule LCURLY
ruleLCURLY returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:

	kw='{' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getLCURLYAccess().getLeftCurlyBracketKeyword()); 
    }

    ;





// Entry rule entryRuleRCURLY
entryRuleRCURLY returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getRCURLYRule()); } 
	 iv_ruleRCURLY=ruleRCURLY 
	 { $current=$iv_ruleRCURLY.current.getText(); }  
	 EOF 
;

// Rule RCURLY
ruleRCURLY returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:

	kw='}' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getRCURLYAccess().getRightCurlyBracketKeyword()); 
    }

    ;





// Entry rule entryRuleLSQUARE
entryRuleLSQUARE returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getLSQUARERule()); } 
	 iv_ruleLSQUARE=ruleLSQUARE 
	 { $current=$iv_ruleLSQUARE.current.getText(); }  
	 EOF 
;

// Rule LSQUARE
ruleLSQUARE returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:

	kw='[' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getLSQUAREAccess().getLeftSquareBracketKeyword()); 
    }

    ;





// Entry rule entryRuleRSQUARE
entryRuleRSQUARE returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getRSQUARERule()); } 
	 iv_ruleRSQUARE=ruleRSQUARE 
	 { $current=$iv_ruleRSQUARE.current.getText(); }  
	 EOF 
;

// Rule RSQUARE
ruleRSQUARE returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:

	kw=']' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getRSQUAREAccess().getRightSquareBracketKeyword()); 
    }

    ;





// Entry rule entryRuleCOLON
entryRuleCOLON returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getCOLONRule()); } 
	 iv_ruleCOLON=ruleCOLON 
	 { $current=$iv_ruleCOLON.current.getText(); }  
	 EOF 
;

// Rule COLON
ruleCOLON returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:

	kw=':' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getCOLONAccess().getColonKeyword()); 
    }

    ;





// Entry rule entryRuleCOMMA
entryRuleCOMMA returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getCOMMARule()); } 
	 iv_ruleCOMMA=ruleCOMMA 
	 { $current=$iv_ruleCOMMA.current.getText(); }  
	 EOF 
;

// Rule COMMA
ruleCOMMA returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:

	kw=',' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getCOMMAAccess().getCommaKeyword()); 
    }

    ;





// Entry rule entryRuleBOOL
entryRuleBOOL returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getBOOLRule()); } 
	 iv_ruleBOOL=ruleBOOL 
	 { $current=$iv_ruleBOOL.current.getText(); }  
	 EOF 
;

// Rule BOOL
ruleBOOL returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='true' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getBOOLAccess().getTrueKeyword_0()); 
    }

    |
	kw='false' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getBOOLAccess().getFalseKeyword_1()); 
    }
)
    ;





// Entry rule entryRuleNULL
entryRuleNULL returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getNULLRule()); } 
	 iv_ruleNULL=ruleNULL 
	 { $current=$iv_ruleNULL.current.getText(); }  
	 EOF 
;

// Rule NULL
ruleNULL returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:

	kw='null' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getNULLAccess().getNullKeyword()); 
    }

    ;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


