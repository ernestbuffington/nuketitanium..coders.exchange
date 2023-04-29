<?php

use Rector\Config\RectorConfig;
use Rector\Set\ValueObject\LevelSetList;
use Rector\Set\ValueObject\SetList;
use Rector\TypeDeclaration\Rector\Property\TypedPropertyFromAssignsRector;

use Rector\Php52\Rector\Property\VarToPublicPropertyRector;

//use Rector\Php53\Rector\Variable\ReplaceHttpServerVarsByServerRector;
use Rector\Php53\Rector\Ternary\TernaryToElvisRector;

//use Rector\Php54\Rector\Array_\LongArrayToShortArrayRector; # I ONLY DO THIS FOR CERTAIN FILES #
use Rector\Php54\Rector\FuncCall\RemoveReferenceFromCallRector;

use Rector\Php55\Rector\FuncCall\PregReplaceEModifierRector;

use Rector\Php56\Rector\FunctionLike\AddDefaultValueForUndefinedVariableRector;

use Rector\Php70\Rector\FuncCall\EregToPregMatchRector;
use Rector\Php70\Rector\List_\EmptyListRector;
use Rector\Php70\Rector\FunctionLike\ExceptionHandlerTypehintRector;
use Rector\Php70\Rector\If_\IfToSpaceshipRector;
use Rector\Php70\Rector\Assign\ListSplitStringRector;
use Rector\Php70\Rector\ClassMethod\Php4ConstructorRector;
use Rector\Php70\Rector\FuncCall\RandomFunctionRector;
use Rector\Php70\Rector\FuncCall\RenameMktimeWithoutArgsToTimeRector;
use Rector\Php70\Rector\Ternary\TernaryToNullCoalescingRector;
use Rector\Php70\Rector\Ternary\TernaryToSpaceshipRector;
use Rector\Php70\Rector\Variable\WrapVariableVariableNameInCurlyBracesRector;
use Rector\Php70\Rector\StaticCall\StaticCallOnNonStaticToInstanceCallRector;

use Rector\Php71\Rector\BinaryOp\BinaryOpBetweenNumberAndStringRector;
use Rector\Php71\Rector\FuncCall\CountOnNullRector;
use Rector\Php71\Rector\BooleanOr\IsIterableRector;
//use Rector\Php71\Rector\List_\ListToArrayDestructRector;
use Rector\Php71\Rector\TryCatch\MultiExceptionCatchRector;
use Rector\Php71\Rector\ClassConst\PublicConstantVisibilityRector;

use Rector\Php72\Rector\FuncCall\CreateFunctionToAnonymousFunctionRector;
use Rector\Php72\Rector\FuncCall\GetClassOnNullRector;
use Rector\Php72\Rector\Assign\ListEachRector;
use Rector\Php72\Rector\Assign\ReplaceEachAssignmentWithKeyCurrentRector;
use Rector\Php72\Rector\FuncCall\StringsAssertNakedRector;
use Rector\Php72\Rector\Unset_\UnsetCastRector;
use Rector\Php72\Rector\While_\WhileEachToForeachRector;

use Rector\Php73\Rector\FuncCall\ArrayKeyFirstLastRector;
use Rector\Php73\Rector\BooleanOr\IsCountableRector;
use Rector\Php73\Rector\FuncCall\JsonThrowOnErrorRector;
use Rector\Php73\Rector\FuncCall\RegexDashEscapeRector;
use Rector\Php73\Rector\FuncCall\SetCookieRector;
use Rector\Php73\Rector\FuncCall\StringifyStrNeedlesRector;

use Rector\Php74\Rector\FuncCall\ArrayKeyExistsOnPropertyRector;
use Rector\Php74\Rector\FuncCall\ArraySpreadInsteadOfArrayMergeRector;
use Rector\Php74\Rector\MethodCall\ChangeReflectionTypeToStringToGetNameRector;
use Rector\Php74\Rector\Closure\ClosureToArrowFunctionRector;
use Rector\Php74\Rector\ArrayDimFetch\CurlyToSquareBracketArrayStringRector;
use Rector\Php74\Rector\StaticCall\ExportToReflectionFunctionRector;
use Rector\Php74\Rector\FuncCall\FilterVarToAddSlashesRector;
use Rector\Php74\Rector\FuncCall\MbStrrposEncodingArgumentPositionRector;
use Rector\Php74\Rector\FuncCall\MoneyFormatToNumberFormatRector;
use Rector\Php74\Rector\Assign\NullCoalescingOperatorRector;
use Rector\Php74\Rector\Ternary\ParenthesizeNestedTernaryRector;
use Rector\Php74\Rector\Double\RealToFloatTypeCastRector;
use Rector\Php74\Rector\Property\RestoreDefaultNullToNullableTypePropertyRector;

use Rector\Php80\Rector\Identical\StrStartsWithRector;

use Rector\Php81\Rector\FuncCall\NullToStrictStringFuncCallArgRector; # I ONLY DO THIS FOR CERTAIN FILES #

use Rector\Php82\Rector\FuncCall\Utf8DecodeEncodeToMbConvertEncodingRector;

use Rector\MysqlToMysqli\Rector\Assign\MysqlAssignToMysqliRector;
use Rector\MysqlToMysqli\Rector\FuncCall\MysqlFuncCallToMysqliRector;
use Rector\MysqlToMysqli\Rector\FuncCall\MysqlPConnectToMysqliConnectRector;
use Rector\MysqlToMysqli\Rector\FuncCall\MysqlQueryMysqlErrorWithLinkRector;

return static function (RectorConfig $rectorConfig): void {
	$rectorConfig->cacheDirectory('/home/nuketitanium/public_html/garbage/rector_cached_files');
    $rectorConfig->containerCacheDirectory('/home/nuketitanium/public_html/garbage');
	//$rectorConfig->disableParallel();
	// A. run whole set
    //$rectorConfig->sets([
	//	SetList::PHP_82,
	//	LevelSetList::UP_TO_PHP_82,
    //]);

    // B. or single rule
    $rectorConfig->rule(TypedPropertyFromAssignsRector::class);
	
	//52 
    $rectorConfig->rule(VarToPublicPropertyRector::class);
    
	// 53
	//$rectorConfig->rule(ReplaceHttpServerVarsByServerRector::class);
	$rectorConfig->rule(TernaryToElvisRector::class);
	
	//54
	//$rectorConfig->rule(LongArrayToShortArrayRector::class); # I ONLY DO THIS FOR CERTAIN FILES #
	$rectorConfig->rule(RemoveReferenceFromCallRector::class);

	// 55
	$rectorConfig->rule(PregReplaceEModifierRector::class);

	// 56
	$rectorConfig->rule(AddDefaultValueForUndefinedVariableRector::class);

    // 70
	$rectorConfig->rule(EmptyListRector::class);
    $rectorConfig->rule(EregToPregMatchRector::class);
	$rectorConfig->rule(ExceptionHandlerTypehintRector::class);
	$rectorConfig->rule(IfToSpaceshipRector::class);
	$rectorConfig->rule(ListSplitStringRector::class);
	$rectorConfig->rule(Php4ConstructorRector::class);
	$rectorConfig->rule(RandomFunctionRector::class);
	$rectorConfig->rule(RenameMktimeWithoutArgsToTimeRector::class);
	$rectorConfig->rule(TernaryToNullCoalescingRector::class);
	$rectorConfig->rule(TernaryToSpaceshipRector::class);
	$rectorConfig->rule(WrapVariableVariableNameInCurlyBracesRector::class);
	$rectorConfig->rule(StaticCallOnNonStaticToInstanceCallRector::class);
	
	// 71
	$rectorConfig->rule(BinaryOpBetweenNumberAndStringRector::class);
	$rectorConfig->rule(CountOnNullRector::class);
	$rectorConfig->rule(IsIterableRector::class);
	//$rectorConfig->rule(ListToArrayDestructRector::class);
	$rectorConfig->rule(MultiExceptionCatchRector::class);
	$rectorConfig->rule(PublicConstantVisibilityRector::class);
	
	// 72
	$rectorConfig->rule(CreateFunctionToAnonymousFunctionRector::class);
	$rectorConfig->rule(GetClassOnNullRector::class);
	$rectorConfig->rule(ListEachRector::class);
	$rectorConfig->rule(ReplaceEachAssignmentWithKeyCurrentRector::class);
	$rectorConfig->rule(StringsAssertNakedRector::class);
	$rectorConfig->rule(UnsetCastRector::class);
	$rectorConfig->rule(WhileEachToForeachRector::class);
	
	// 73
	$rectorConfig->rule(ArrayKeyFirstLastRector::class);
	$rectorConfig->rule(IsCountableRector::class);
	$rectorConfig->rule(JsonThrowOnErrorRector::class);
	$rectorConfig->rule(RegexDashEscapeRector::class);
	$rectorConfig->rule(SetCookieRector::class);
	$rectorConfig->rule(StringifyStrNeedlesRector::class);
	
	// 74
	$rectorConfig->rule(ArrayKeyExistsOnPropertyRector::class);
	$rectorConfig->rule(ArraySpreadInsteadOfArrayMergeRector::class);
	$rectorConfig->rule(ChangeReflectionTypeToStringToGetNameRector::class);
	$rectorConfig->rule(ClosureToArrowFunctionRector::class);
	$rectorConfig->rule(CurlyToSquareBracketArrayStringRector::class);
	$rectorConfig->rule(ExportToReflectionFunctionRector::class);
	$rectorConfig->rule(FilterVarToAddSlashesRector::class);
	$rectorConfig->rule(MbStrrposEncodingArgumentPositionRector::class);
	$rectorConfig->rule(MoneyFormatToNumberFormatRector::class);
	$rectorConfig->rule(NullCoalescingOperatorRector::class);
	$rectorConfig->rule(ParenthesizeNestedTernaryRector::class);
	$rectorConfig->rule(RealToFloatTypeCastRector::class);
	$rectorConfig->rule(RestoreDefaultNullToNullableTypePropertyRector::class);
	
	// 80 
	$rectorConfig->rule(StrStartsWithRector::class);
	//$rectorConfig->rule(::class);

	// 81
	$rectorConfig->rule(NullToStrictStringFuncCallArgRector::class);
	
	// 82
	$rectorConfig->rule(Utf8DecodeEncodeToMbConvertEncodingRector::class);
	
	$rectorConfig->rule(MysqlAssignToMysqliRector::class);
	$rectorConfig->rule(MysqlFuncCallToMysqliRector::class);
	$rectorConfig->rule(MysqlPConnectToMysqliConnectRector::class);
	$rectorConfig->rule(MysqlQueryMysqlErrorWithLinkRector::class);
		
    $rectorConfig->paths([
		
		#NukeTitanium: Root
		//////__DIR__ . '/admin.php',
		//////__DIR__ . '/backend.php',
		//////__DIR__ . '/backend_mshnl.php',
		//////__DIR__ . '/downloadsbackend.php',
		//////__DIR__ . '/footer.php',
		//////__DIR__ . '/forumsbackend.php',
		//////__DIR__ . '/header.php',
		//////__DIR__ . '/index.php',
		//////__DIR__ . '/mainfile.php',
		//////__DIR__ . '/modules.php',
		//////__DIR__ . '/rnconfig.php',
		//////__DIR__ . '/rnxhr.php',
		
		#NukeTitanium: Captcha
		//////__DIR__ . '/images/captcha.php',
		//////__DIR__ . '/includes/gfx_check.php',
		//////__DIR__ . '/includes/class.php-captcha.php',
		//////__DIR__ . '/includes/gfx.php',
		
		#NukeTitanium: INSTALLATION
		//////__DIR__ . '/INSTALLATION/classes/dbMysql.class.php',
		//////__DIR__ . '/INSTALLATION/functions/cgiNote.func.php',
		//////__DIR__ . '/INSTALLATION/functions/chkFile.func.php',
		//////__DIR__ . '/INSTALLATION/functions/chkFileExists.func.php',
		//////__DIR__ . '/INSTALLATION/functions/getGDInfo.func.php',
		//////__DIR__ . '/INSTALLATION/functions/getServerAPI.func.php',
		//////__DIR__ . '/INSTALLATION/functions/mysqlTest.func.php',
		//__DIR__ . '/INSTALLATION/functions/phpGetSetting.func.php',
		
		#NukeTitanium: admin/case
		//////__DIR__ . '/admin/case.authors.php',
		//////__DIR__ . '/admin/case.blocks.php',
		//////__DIR__ . '/admin/case.comments.php',
		//////__DIR__ . '/admin/case.groups.php',
		//////__DIR__ . '/admin/case.ipban.php',
		//////__DIR__ . '/admin/case.mailconfig.php',
		//////__DIR__ . '/admin/case.messages.php',
		//////__DIR__ . '/admin/case.modules.php',
		//////__DIR__ . '/admin/case.nukesentinel.php',
		//////__DIR__ . '/admin/case.optimize.php',
		//////__DIR__ . '/admin/case.settings.php',
		//////__DIR__ . '/admin/case.themes.php',
		
		#NukeTitanium: admin/language
		//////__DIR__ . '/admin/language/lang-english.php',
		//////__DIR__ . '/admin/language/lang-french.php',
		//////__DIR__ . '/admin/language/lang-german.php',
		//////__DIR__ . '/admin/language/lang-hungarian.php',
		//////__DIR__ . '/admin/language/lang-italian.php',
		//////__DIR__ . '/admin/language/lang-norwegian.php',
		//////__DIR__ . '/admin/language/lang-spanish.php',

		#NukeTitanium: admin/links
		//////__DIR__ . '/admin/links/links.blocks.php',
		//////__DIR__ . '/admin/links/links.editadmins.php',
		//////__DIR__ . '/admin/links/links.groups.php',
		//////__DIR__ . '/admin/links/links.ipban.php',
		//////__DIR__ . '/admin/links/links.mailconfig.php',
		//////__DIR__ . '/admin/links/links.messages.php',
		//////__DIR__ . '/admin/links/links.modules.php',
		//////__DIR__ . '/admin/links/links.nukesentinel.php',
		//////__DIR__ . '/admin/links/links.optimize.php',
		//////__DIR__ . '/admin/links/links.settings.php',
		//////__DIR__ . '/admin/links/links.submissions.php',
		//////__DIR__ . '/admin/links/links.themes.php',

		#NukeTitanium: admin/modules
		//__DIR__ . '/admin/modules/nukesentinel/ABAuth.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABAuthEdit.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABAuthEditSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABAuthList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABAuthResend.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABAuthScan.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPClear.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPClearExpired.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPClearSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPDeleteSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPEdit.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPEditSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPMenu.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPView.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedIPViewPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeClear.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeClearExpired.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeClearSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeDeleteSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeEdit.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeEditSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeMenu.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeOverlapCheck.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeView.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABBlockedRangeViewPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABCGIAuth.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABCGIBuild.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfig.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigAdmin.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigAuthor.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigClike.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigDefault.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigFilter.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigFlood.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigHarvester.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigReferer.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigRequest.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigScript.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigString.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigUnion.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABConfigUpdate.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABCountryList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABDBMaintenance.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABDBOptimize.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABDBRepair.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABDBStructure.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedClear.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedClearSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedDeleteSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedEdit.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedEditSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedMenu.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedOverlapCheck.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedView.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABExcludedViewPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABHarvesterAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABHarvesterAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABHarvesterDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABHarvesterDeleteSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABHarvesterEdit.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABHarvesterEditSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABHarvesterList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABHarvesterListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABHarvesterMenu.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryDeleteSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryEdit.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryEditSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryMenu.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryUpdateBlocked.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryUpdateBlockedRanges.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryUpdateExcludedRanges.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryUpdateProtectedRanges.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABIP2CountryUpdateTracked.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABLoadError.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABMain.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABMainSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedClear.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedClearSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedDeleteSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedEdit.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedEditSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedMenu.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedOverlapCheck.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedView.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABProtectedViewPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABRefererAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABRefererAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABRefererDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABRefererDeleteSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABRefererEdit.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABRefererEditSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABRefererList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABRefererListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABRefererMenu.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABSearch.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABSearchIPPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABSearchIPResults.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABSearchRangePrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABSearchRangeResults.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABStringAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABStringAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABStringDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABStringDeleteSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABStringEdit.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABStringEditSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABStringList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABStringListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABStringMenu.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTemplate.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTemplateSource.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTemplateView.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedAgentsDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedAgentsIPs.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedAgentsList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedAgentsListAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedAgentsListAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedAgentsListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedAgentsPages.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedAgentsPagesPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedClear.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedClearSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedDeleteSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedMenu.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedPages.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedPagesPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedRefersDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedRefersIPs.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedRefersList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedRefersListAdd.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedRefersListAddSave.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedRefersListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedRefersPages.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedRefersPagesPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedUsersDelete.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedUsersIPs.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedUsersList.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedUsersListPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedUsersPages.php',
		//__DIR__ . '/admin/modules/nukesentinel/ABTrackedUsersPagesPrint.php',
		//__DIR__ . '/admin/modules/nukesentinel/functions.php',
		//__DIR__ . '/admin/modules/authors.php',
		//__DIR__ . '/admin/modules/blocks.php',
		//__DIR__ . '/admin/modules/comments.php',
		//__DIR__ . '/admin/modules/groups.php',
		//__DIR__ . '/admin/modules/ipban.php',
		//__DIR__ . '/admin/modules/mailconfig.php',
		//__DIR__ . '/admin/modules/messages.php',
		//__DIR__ . '/admin/modules/modules.php',
		//__DIR__ . '/admin/modules/nukesentinel.php',
		//__DIR__ . '/admin/modules/optimize.php',
		//__DIR__ . '/admin/modules/settings.php',
		//__DIR__ . '/admin/modules/themes.php',

	    #NukeTitanium: blocks
		//////__DIR__ . '/blocks/block-Advertising.php',
		//////__DIR__ . '/blocks/block-Big_Story_of_Today.php',
		//////__DIR__ . '/blocks/block-Bookmark_This.php',
		//////__DIR__ . '/blocks/block-Categories.php',
		//////__DIR__ . '/blocks/block-Content.php',
		//////__DIR__ . '/blocks/block-Disqus_Combo_Center.php',
		//////__DIR__ . '/blocks/block-Disqus_Popular.php',
		//////__DIR__ . '/blocks/block-Disqus_Recent.php',
		//////__DIR__ . '/blocks/block-Disqus_Top_Commenters.php',
		//////__DIR__ . '/blocks/block-Encyclopedia.php',
		//////__DIR__ . '/blocks/block-Feeds.php',
		//////__DIR__ . '/blocks/block-Forums.php',
		//////__DIR__ . '/blocks/block-ForumsCollapsing.php',
		//////__DIR__ . '/blocks/block-GCalendar.php',
		//////__DIR__ . '/blocks/block-GCalendar_Center.php',
		//////__DIR__ . '/blocks/block-HTML_Newsletter.php',
		//////__DIR__ . '/blocks/block-Languages.php',
		//////__DIR__ . '/blocks/block-Last_5_Articles.php',
		//////__DIR__ . '/blocks/block-Login.php',
		//////__DIR__ . '/blocks/block-Modules.php',
		//////__DIR__ . '/blocks/block-NSNGD_Access.php',
		//////__DIR__ . '/blocks/block-NSNGD_Advanced.php',
		//////__DIR__ . '/blocks/block-NSNGD_Hot.php',
		//////__DIR__ . '/blocks/block-NSNGD_New.php',
		//////__DIR__ . '/blocks/block-nukeNAV.php',
		//////__DIR__ . '/blocks/block-nukeSEOdh.php',
		//////__DIR__ . '/blocks/block-Old_Articles.php',
		//////__DIR__ . '/blocks/block-Project_Tracking.php',
		//////__DIR__ . '/blocks/block-Random_Headlines.php',
		//////__DIR__ . '/blocks/block-Reviews.php',
		//////__DIR__ . '/blocks/block-RWSWhoIsWhere.php',
		//////__DIR__ . '/blocks/block-Sample_Block.php',
		//////__DIR__ . '/blocks/block-Search.php',
		//////__DIR__ . '/blocks/block-Sentinel.php',
		//////__DIR__ . '/blocks/block-Sentinel_Center.php',
		//////__DIR__ . '/blocks/block-Sentinel_Scrolling.php',
		//////__DIR__ . '/blocks/block-Sentinel_Side.php',
		//////__DIR__ . '/blocks/block-Stories_Archive.php',
		//////__DIR__ . '/blocks/block-Subscription.php',
		//////__DIR__ . '/blocks/block-Survey.php',
		//////__DIR__ . '/blocks/block-Tag_Cloud.php',
		//////__DIR__ . '/blocks/block-Tag_This.php',
		//////__DIR__ . '/blocks/block-Top10_Downloads.php',
		//////__DIR__ . '/blocks/block-Top10_Links.php',
		//////__DIR__ . '/blocks/block-Total_Hits.php',
		//////__DIR__ . '/blocks/block-User_Info.php',
		//////__DIR__ . '/blocks/block-Who_is_Online.php',

	    #NukeTitanium: classes
		//////__DIR__ . '/classes/class.legal_doctypes.php',
		//////__DIR__ . '/classes/class.legal_document.php',
		//////__DIR__ . '/classes/class.paginator.php',
		//////__DIR__ . '/classes/class.paginator_html.php',
		//////__DIR__ . '/classes/class.wysiwyg.php',
		
		//////__DIR__ . '/classes/tcpdf/config/lang/*',
		//////__DIR__ . '/classes/tcpdf/fonts/courier.php',
		//////__DIR__ . '/classes/tcpdf/fonts/helvetica.php',
		
		//////__DIR__ . '/classes/tcpdf/tcpdf.php',
		//////__DIR__ . '/classes/tcpdf/tcpdf_autoconfig.php',
		//////__DIR__ . '/classes/tcpdf/tcpdf_barcodes_1d.php',
		//////__DIR__ . '/classes/tcpdf/tcpdf_barcodes_2d.php',
		//////__DIR__ . '/classes/tcpdf/tcpdf_parser.php',
		
		//////__DIR__ . '/classes/tcpdf/include/tcpdf_colors.php',
		//////__DIR__ . '/classes/tcpdf/include/tcpdf_filters.php',
		//////__DIR__ . '/classes/tcpdf/include/tcpdf_font_data.php',
		//////__DIR__ . '/classes/tcpdf/include/tcpdf_fonts.php',
		//////__DIR__ . '/classes/tcpdf/include/tcpdf_images.php',
		//////__DIR__ . '/classes/tcpdf/include/tcpdf_static.php',
		
		//////__DIR__ . '/classes/tcpdf/include/barcodes/datamatrix.php',
		//////__DIR__ . '/classes/tcpdf/include/barcodes/pdf417.php',
		//////__DIR__ . '/classes/tcpdf/include/barcodes/qrcode.php',
		
	    #NukeTitanium: db
		//////__DIR__ . '/db/db.php',
		//////__DIR__ . '/db/mysqli.php',

	    #NukeTitanium: includes
		//////__DIR__ . '/includes/addons/head-abbcbox.php',
		//////__DIR__ . '/includes/addons/head-nukeSPAM.php',
		//////__DIR__ . '/includes/addons/head-SocialSprites.php',
		//////__DIR__ . '/includes/addons/head-Tags.php',
		
		//////__DIR__ . '/includes/ajaxtabs/ajaxtabs.php',
		
		//////__DIR__ . '/includes/boxover/boxover.php',
		
		//////__DIR__ . '/includes/ckeditor/ckeditor.php',
		//////__DIR__ . '/includes/ckeditor/class.ckeditor.php',
		
		//////__DIR__ . '/includes/custom_files/nukeSEO/nukeFEEDhdr.php',
		//////__DIR__ . '/includes/custom_files/nukeSEO/nukePIEhdr.php',
		
		//////__DIR__ . '/includes/elfinder/php/libs/GdBmp.php',
		//////__DIR__ . '/includes/elfinder/php/modules/ckeditor.php',
		//////__DIR__ . '/includes/elfinder/php/plugins/AutoResize/plugin.php',
		//////__DIR__ . '/includes/elfinder/php/plugins/AutoRotate/plugin.php',
		//////__DIR__ . '/includes/elfinder/php/plugins/Normalizer/plugin.php',
		//////__DIR__ . '/includes/elfinder/php/plugins/Sanatizer/plugin.php',
		//////__DIR__ . '/includes/elfinder/php/plugins/Watermark/plugin.php',
		//////__DIR__ . '/includes/elfinder/php/autoload.php',
		//////__DIR__ . '/includes/elfinder/php/connector.php',
		//////__DIR__ . '/includes/elfinder/php/elFinder.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderConnector.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderFlysystemGoogleDriveNetmount.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderPlugin.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderSession.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderSessionInterface.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeBox.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeDriver.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeDropbox.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeDropbox2.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeFTP.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeGoogleDrive.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeGroup.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeLocalFileSystem.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeMySQL.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeOneDrive.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeTrash.class.php',
		//////__DIR__ . '/includes/elfinder/php/elFinderVolumeTrashMySQL.class.php',
		//////__DIR__ . '/includes/elfinder/elfinder.php',
		
		//////__DIR__ . '/includes/feedcreator/feedcreator.class.php',
		//////__DIR__ . '/includes/kses/kses.php',
		
		//////__DIR__ . '/includes/nukeSEO/content/Content.php',
		//////__DIR__ . '/includes/nukeSEO/content/Downloads_GR.php',
		//////__DIR__ . '/includes/nukeSEO/content/Encyclopedia.php',
		//////__DIR__ . '/includes/nukeSEO/content/FAQ.php',
		//////__DIR__ . '/includes/nukeSEO/content/Forums.php',
		//////__DIR__ . '/includes/nukeSEO/content/News.php',
		//////__DIR__ . '/includes/nukeSEO/content/Reviews.php',
		//////__DIR__ . '/includes/nukeSEO/content/Web_Links.php',
		
		//////__DIR__ . '/includes/nukeSEO/dh/dh.class.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhAdmin.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhContent.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhDefault.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhDownloads.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhEncyclopedia.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhFAQ.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhFeeds.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhForums.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhGCalendar.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhNews.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhReviews.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhStories_Archive.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhSurveys.php',
		//////__DIR__ . '/includes/nukeSEO/dh/dhWeb_Links.php',

		//////__DIR__ . '/includes/nukeSEO/forms/CLinkedSelect.php',
		//////__DIR__ . '/includes/nukeSEO/forms/dhtmlxCombo.php',

		//////__DIR__ . '/includes/nukeSEO/colorsphere.php',
		//////__DIR__ . '/includes/nukeSEO/nukeFEED.php',
		//////__DIR__ . '/includes/nukeSEO/nukePIECSS.php',
		//////__DIR__ . '/includes/nukeSEO/nukeSEOdh.php',
		//////__DIR__ . '/includes/nukeSEO/nukeSEOfunctions.php',
		//////__DIR__ . '/includes/nukeSEO/seocontent.class.php',
		//////__DIR__ . '/includes/nukeSEO/seoHelpCSS.php',
		
		//////__DIR__ . '/includes/RWS_WhoIsWhere/wiw.inc.php',
		//////__DIR__ . '/includes/RWS_WhoIsWhere/wiw.php',
		
		//////__DIR__ . '/includes/SimplePie/idna_convert.class.php',
		//////__DIR__ . '/includes/SimplePie/idn/simplepie.inc', // you need to rename this to .php when you refactor!
		
		//////__DIR__ . '/includes/tabcontent/tabcontent.php',
		
		/*
		//__DIR__ . '/includes/tegonuke/mailer/Swift/mime_types.php',
		//__DIR__ . '/includes/tegonuke/mailer/Swift/preferences.php',
		//__DIR__ . '/includes/tegonuke/mailer/Swift/swift_init.php',
		//__DIR__ . '/includes/tegonuke/mailer/Swift/swift_required.php',
		//__DIR__ . '/includes/tegonuke/mailer/Swift/swift_required_pear.php',
		
		//__DIR__ . '/includes/tegonuke/mailer/Swift/classes/Swift.php',
		//__DIR__ . '/includes/tegonuke/mailer/Swift/classes/Swift/.php',
		
		//__DIR__ . '/includes/tegonuke/mailer/Swift/dependency_maps/.php',
		
		//__DIR__ . '/includes/tegonuke/mailer/mailer.php',
		//__DIR__ . '/includes/tegonuke/mailer/table_check.php',
		
		//__DIR__ . '/includes/tegonuke/public/.php',
		//__DIR__ . '/includes/tegonuke/shortlinks/.php',
		*/
		
		
		//////__DIR__ . '/includes/xmlrpc/xmlrpc.php',

		//////__DIR__ . '/includes/class.autokeyword.php',
		//////__DIR__ . '/includes/counter.php',
		//////__DIR__ . '/includes/csrf-magic.php',
		//////__DIR__ . '/includes/dtAjaxSource.php',
		//////__DIR__ . '/includes/ipban.php',
		//////__DIR__ . '/includes/javascript.php',
		//////__DIR__ . '/includes/mimetype.php',
		//////__DIR__ . '/includes/nsbypass.php',
		//////__DIR__ . '/includes/nukesentinel.php',
		//////__DIR__ . '/includes/nukeSEO_SB.php',
		//////__DIR__ . '/includes/seo_fns.php',
		
		#NukeTitanium: modules/Advertising
		//////__DIR__ . '/modules/Advertising/admin/case.php',
		//////__DIR__ . '/modules/Advertising/admin/index.php',
		//////__DIR__ . '/modules/Advertising/admin/links.php',
		//////__DIR__ . '/modules/Advertising/index.php',

		#NukeTitanium: modules/AvantGo
		//////__DIR__ . '/modules/AvantGo/index.php',
		//////__DIR__ . '/modulesAvantGo/print.php',

		#NukeTitanium: modules/Comments
		//////__DIR__ . '/modules/Comments/admin/index.php',
		//////__DIR__ . '/modules/Comments/Combo.php',
		//////__DIR__ . '/modules/Comments/copyright.php',
		//////__DIR__ . '/modules/Comments/FormBase.php',
		//////__DIR__ . '/modules/Comments/FormFactory.php',
		//////__DIR__ . '/modules/Comments/ForumsForm.php',
		//////__DIR__ . '/modules/Comments/HtmlList.php',
		//////__DIR__ . '/modules/Comments/index.php',
		//////__DIR__ . '/modules/Comments/NewsForm.php',
		//////__DIR__ . '/modules/Comments/ReviewsForm.php',
		//////__DIR__ . '/modules/Comments/SurveysForm.php',

		#NukeTitanium: modules/Content
		//////__DIR__ . '/modules/Content/admin/index.php',
		//////__DIR__ . '/modules/Content/admin/links.php',
		//////__DIR__ . '/modules/Content/admin/panel-old.php',
		//////__DIR__ . '/modules/Content/var/content_pagebreak_convert.php',
		//////__DIR__ . '/modules/Content/var/cpfunc.php',
		//////__DIR__ . '/modules/Content/var/friend.php',
		//////__DIR__ . '/modules/Content/var/paginationSystem.class.php',
		//////__DIR__ . '/modules/Content/var/wordcloud.class.php',
		//////__DIR__ . '/modules/Content/var/fpdf/fpdf.php',
		//////__DIR__ . '/modules/Content/var/fpdf/gif.php',
		//////__DIR__ . '/modules/Content/var/fpdf/html2fpdf.php',
		//////__DIR__ . '/modules/Content/var/fpdf/htmltoolkit.php',
		//////__DIR__ . '/modules/Content/var/fpdf/source2doc.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/courier.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/helvetica.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/helveticab.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/helveticabi.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/helveticai.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/symbol.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/times.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/timesb.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/timesbi.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/timesi.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/zapfdingbats.php',
		//////__DIR__ . '/modules/Content/var/fpdf/font/makefont/makefont.php',
		//////__DIR__ . '/modules/Content/copyright.php',
		//////__DIR__ . '/modules/Content/index.php',
		
		#NukeTitanium: modules/Downloads
		#NukeTitanium: modules/Encyclopedia
		#NukeTitanium: modules/ErrorDocuments
		#NukeTitanium: modules/FAQ
		#NukeTitanium: modules/Feedback
		
		#NukeTitanium: modules/Feeds
		//////__DIR__ . '/modules/Feeds/admin/case.php',
		//////__DIR__ . '/modules/Feeds/admin/index.php',
		//////__DIR__ . '/modules/Feeds/admin/links.php',
		//////__DIR__ . '/modules/Feeds/admin/nfConfig.php',
		//////__DIR__ . '/modules/Feeds/admin/nfSubscriptions.php',
		//////__DIR__ . '/modules/Feeds/admin/nukeFeedAdmin.php',
		//////__DIR__ . '/modules/Feeds/index.php',
		//////__DIR__ . '/modules/Feeds/linkAlternateFeeds.php',
		
		#NukeTitanium: modules/Forums/admin
 		//////__DIR__ . '/modules/Forums/admin/admin_attach_cp.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_attachments.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_avatar.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_board.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_db_utilities.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_disallow.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_extensions.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_forum_prune.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_forumauth.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_forums.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_groups.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_mass_email.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_phpinfo.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_ranks.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_smilies.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_styles.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_ug_auth.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_user_ban.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_users.php',
 		//////__DIR__ . '/modules/Forums/admin/admin_words.php',
 		//////__DIR__ . '/modules/Forums/admin/case.php',
 		//////__DIR__ . '/modules/Forums/admin/common.php',
 		//////__DIR__ . '/modules/Forums/admin/forums.php',
 		//////__DIR__ . '/modules/Forums/admin/index.php',
 		//////__DIR__ . '/modules/Forums/admin/links.php',
 		//////__DIR__ . '/modules/Forums/admin/page_footer_admin.php',
 		//////__DIR__ . '/modules/Forums/admin/page_header_admin.php',
 		//////__DIR__ . '/modules/Forums/admin/pagestart.php',

        #NukeTitanium: modules/Forums/attach_mod
		//////__DIR__ . '/modules/Forums/attach_mod/includes/functions_admin.php',
		//////__DIR__ . '/modules/Forums/attach_mod/includes/functions_attach.php',
		//////__DIR__ . '/modules/Forums/attach_mod/includes/functions_delete.php',
		//////__DIR__ . '/modules/Forums/attach_mod/includes/functions_filetypes.php',
		//////__DIR__ . '/modules/Forums/attach_mod/includes/functions_includes.php',
		//////__DIR__ . '/modules/Forums/attach_mod/includes/functions_selects.php',
		//////__DIR__ . '/modules/Forums/attach_mod/includes/functions_thumbs.php',
		//////__DIR__ . '/modules/Forums/attach_mod/includes/constants.php',
		//////__DIR__ . '/modules/Forums/attach_mod/attachment_mod.php',
		//////__DIR__ . '/modules/Forums/attach_mod/displaying.php',
		//////__DIR__ . '/modules/Forums/attach_mod/pm_attachments.php',
		//////__DIR__ . '/modules/Forums/attach_mod/posting_attachments.php',
		
		#NukeTitanium: modules/Forums/includes
        //////__DIR__ . '/modules/Forums/includes/auth.php',
        //////__DIR__ . '/modules/Forums/includes/bbcode.php',
        //////__DIR__ . '/modules/Forums/includes/constants.php',
        //////__DIR__ . '/modules/Forums/includes/emailer.php',
        //////__DIR__ . '/modules/Forums/includes/functions.php',
        //////__DIR__ . '/modules/Forums/includes/functions_admin.php',
        //////__DIR__ . '/modules/Forums/includes/functions_nuke.php',
        //////__DIR__ . '/modules/Forums/includes/functions_post.php',
        //////__DIR__ . '/modules/Forums/includes/functions_search.php',
        //////__DIR__ . '/modules/Forums/includes/functions_selects.php',
        //////__DIR__ . '/modules/Forums/includes/functions_validate.php',
        //////__DIR__ . '/modules/Forums/includes/page_header.php', 
        //////__DIR__ . '/modules/Forums/includes/page_header_review.php',
        //////__DIR__ . '/modules/Forums/includes/page_tail.php',
        //////__DIR__ . '/modules/Forums/includes/page_tail_review.php',
        //////__DIR__ . '/modules/Forums/includes/prune.php',
        //////__DIR__ . '/modules/Forums/includes/sessions.php',
        //////__DIR__ . '/modules/Forums/includes/smtp.php',
        //////__DIR__ . '/modules/Forums/includes/sql_parse.php',
        //////__DIR__ . '/modules/Forums/includes/template.php',
        //////__DIR__ . '/modules/Forums/includes/topic_review.php',
        //////__DIR__ . '/modules/Forums/includes/usercp_activate.php',
        //////__DIR__ . '/modules/Forums/includes/usercp_avatar.php',
        //////__DIR__ . '/modules/Forums/includes/usercp_confirm.php',
        //////__DIR__ . '/modules/Forums/includes/usercp_email.php',
        //////__DIR__ . '/modules/Forums/includes/usercp_register.php',
        //////__DIR__ . '/modules/Forums/includes/usercp_sendpasswd.php',
        //////__DIR__ . '/modules/Forums/includes/usercp_viewprofile.php',

		#NukeTitanium: modules/Forums
		//////__DIR__ . '/modules/Forums/attach_rules.php',
		//////__DIR__ . '/modules/Forums/common.php',
		//////__DIR__ . '/modules/Forums/config.php',
		//////__DIR__ . '/modules/Forums/copyright.php',
		//////__DIR__ . '/modules/Forums/download.php',
		//////__DIR__ . '/modules/Forums/extension.php',
		//////__DIR__ . '/modules/Forums/faq.php',
		//////__DIR__ . '/modules/Forums/groupcp.php',
		//////__DIR__ . '/modules/Forums/index.php',
		//////__DIR__ . '/modules/Forums/login.php',
		//////__DIR__ . '/modules/Forums/memberlist.php',
		//////__DIR__ . '/modules/Forums/modcp.php',
		//////__DIR__ . '/modules/Forums/nukebb.php',
		//////__DIR__ . '/modules/Forums/posting.php',
		//////__DIR__ . '/modules/Forums/privmsg.php',
		//////__DIR__ . '/modules/Forums/profile.php',
		//////__DIR__ . '/modules/Forums/search.php',
		//////__DIR__ . '/modules/Forums/uacp.php',
		//////__DIR__ . '/modules/Forums/viewforum.php',
		//////__DIR__ . '/modules/Forums/viewonline.php',
		//////__DIR__ . '/modules/Forums/viewtopic.php',
		
		#NukeTitanium: modules/GCalendar
		#NukeTitanium: modules/Groups
		#NukeTitanium: modules/How_To_Install
		#NukeTitanium: modules/HTML_Newsletter
		#NukeTitanium: modules/Legal
		
		#NukeTitanium: modules/Members_List
		//////__DIR__ . '/modules/Members_List/index.php',
		//////__DIR__ . '/modules/Members_List/copyright.php',
		
		#NukeTitanium: modules/News
		//////__DIR__ . '/modules/News/admin/index.php',
		//////__DIR__ . '/modules/News/article.php',
		//////__DIR__ . '/modules/News/associates.php',
		//#__DIR__ . '/modules/News/articlebox.php',
		//////__DIR__ . '/modules/News/categories.php',
		//////__DIR__ . '/modules/News/comments.php',
		//////__DIR__ . '/modules/News/copyright.php',
		__DIR__ . '/modules/News/friend.php',
		//__DIR__ . '/modules/News/index.php',
		//__DIR__ . '/modules/News/print.php',
		//__DIR__ . '/modules/News/read_article.php',
		//#__DIR__ . '/modules/News/printpdf.php',
		
		
		#NukeTitanium: modules/nukeNAV
		#NukeTitanium: modules/NukeSentinel
		#NukeTitanium: modules/nukeSPAM
		
		#NukeTitanium: modules/Private_Messages
		//////__DIR__ . '/modules/Private_Messages/index.php',
		//__DIR__ . '/modules/Private_Messages/copyright.php',
		
		#NukeTitanium: modules/Project_Tracking
		#NukeTitanium: modules/Recommend_Us
		#NukeTitanium: modules/Resend_Email
		#NukeTitanium: modules/Reviews
		#NukeTitanium: modules/rwsMetAuthors
		#NukeTitanium: modules/Search
		#NukeTitanium: modules/Statistics
		#NukeTitanium: modules/Stories_Archive
		#NukeTitanium: modules/Submit_Downloads
		#NukeTitanium: modules/Submit_News
		#NukeTitanium: modules/Surveys
		#NukeTitanium: modules/Tags
		#NukeTitanium: modules/Top
		#NukeTitanium: modules/Topics
		#NukeTitanium: modules/Web_Links
		
		#NukeTitanium: modules/Your_Account
		//////__DIR__ . '/modules/Your_Account/admin/activateuser.php',
		//////__DIR__ . '/modules/Your_Account/admin/activateuserconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/addfield.php',
		//////__DIR__ . '/modules/Your_Account/admin/adduser.php',
		//////__DIR__ . '/modules/Your_Account/admin/adduserconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/approveuser.php',
		//////__DIR__ . '/modules/Your_Account/admin/approveuserconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/autosuspend.php',
		//////__DIR__ . '/modules/Your_Account/admin/case.php',
		//////__DIR__ . '/modules/Your_Account/admin/credits.php',
		//////__DIR__ . '/modules/Your_Account/admin/deleteuser.php',
		//////__DIR__ . '/modules/Your_Account/admin/deleteuserconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/deleteuserconf_phpbb.php',
		//////__DIR__ . '/modules/Your_Account/admin/delfield.php',
		//////__DIR__ . '/modules/Your_Account/admin/delfieldconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/denyuser.php',
		//////__DIR__ . '/modules/Your_Account/admin/denyuserconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/detailstemp.php',
		//////__DIR__ . '/modules/Your_Account/admin/detailsuser.php',
		//////__DIR__ . '/modules/Your_Account/admin/index.php',
		//////__DIR__ . '/modules/Your_Account/admin/links.php',
		//////__DIR__ . '/modules/Your_Account/admin/listusers.php',
		//////__DIR__ . '/modules/Your_Account/admin/modifytemp.php',
		//////__DIR__ . '/modules/Your_Account/admin/modifytempconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/modifyuser.php',
		//////__DIR__ . '/modules/Your_Account/admin/modifyuserconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/promoteuser.php',
		//////__DIR__ . '/modules/Your_Account/admin/promoteuserconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/removeuser.php',
		//////__DIR__ . '/modules/Your_Account/admin/removeuserconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/removeuserconf_phpbb.php',
		//////__DIR__ . '/modules/Your_Account/admin/resendmail.php',
		//////__DIR__ . '/modules/Your_Account/admin/resendmailconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/restoreuser.php',
		//////__DIR__ . '/modules/Your_Account/admin/restoreuserconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/saveaddfield.php',
		//////__DIR__ . '/modules/Your_Account/admin/searchuser.php',
		//////__DIR__ . '/modules/Your_Account/admin/suspenduser.php',
		//////__DIR__ . '/modules/Your_Account/admin/suspenduserconf.php',
		//////__DIR__ . '/modules/Your_Account/admin/userconfig.php',
		//////__DIR__ . '/modules/Your_Account/admin/userconfigsave.php',
		//////__DIR__ . '/modules/Your_Account/admin/users.php',

		//////__DIR__ . '/modules/Your_Account/includes/constants.php',
		//////__DIR__ . '/modules/Your_Account/includes/cookiecheck.php',
		//////__DIR__ . '/modules/Your_Account/includes/functions.php',
		//////__DIR__ . '/modules/Your_Account/includes/mainfileend.php',
		//////__DIR__ . '/modules/Your_Account/includes/phpbb_bbstuff.php',
		//////__DIR__ . '/modules/Your_Account/includes/ui-0broadcast.php',
		//////__DIR__ . '/modules/Your_Account/includes/ui-0headlines.php',
		//////__DIR__ . '/modules/Your_Account/includes/ui-0privmsgs.php',
		//////__DIR__ . '/modules/Your_Account/includes/ui-0subscription.php',
		//////__DIR__ . '/modules/Your_Account/includes/ui-l05nsngr.php',
		//////__DIR__ . '/modules/Your_Account/includes/ui-l10bbforums.php',
		//////__DIR__ . '/modules/Your_Account/includes/ui-l10downloads.php',
		//////__DIR__ . '/modules/Your_Account/includes/ui-l10news.php',
		//////__DIR__ . '/modules/Your_Account/includes/ui-l10weblinks.php',

		//////__DIR__ . '/modules/Your_Account/public/activate.php',
		//////__DIR__ . '/modules/Your_Account/public/avatarlinksave.php',
		//////__DIR__ . '/modules/Your_Account/public/avatarlist.php',
		//////__DIR__ . '/modules/Your_Account/public/avatarsave.php',
		//////__DIR__ . '/modules/Your_Account/public/broadcast.php',
		//////__DIR__ . '/modules/Your_Account/public/changemail.php',
		//////__DIR__ . '/modules/Your_Account/public/chgtheme.php',
		//////__DIR__ . '/modules/Your_Account/public/delete.php',
		//////__DIR__ . '/modules/Your_Account/public/deleteconfirm.php',
		//////__DIR__ . '/modules/Your_Account/public/editcomm.php',
		//////__DIR__ . '/modules/Your_Account/public/edithome.php',
		//////__DIR__ . '/modules/Your_Account/public/edituser.php',
		//////__DIR__ . '/modules/Your_Account/public/emailAvailability.php',
		//////__DIR__ . '/modules/Your_Account/public/mailpasswd.php',
		//////__DIR__ . '/modules/Your_Account/public/new_confirm.php',
		//////__DIR__ . '/modules/Your_Account/public/new_finish.php',
		//////__DIR__ . '/modules/Your_Account/public/new_user.php',
		//////__DIR__ . '/modules/Your_Account/public/pass_lost.php',
		//////__DIR__ . '/modules/Your_Account/public/saveactivate.php',
		//////__DIR__ . '/modules/Your_Account/public/savecomm.php',
		//////__DIR__ . '/modules/Your_Account/public/savehome.php',
		//////__DIR__ . '/modules/Your_Account/public/savetheme.php',
		//////__DIR__ . '/modules/Your_Account/public/saveuser.php',
		//////__DIR__ . '/modules/Your_Account/public/userAvailability.php',
		//////__DIR__ . '/modules/Your_Account/public/userinfo.php',
		//////__DIR__ . '/modules/Your_Account/public/ya_coppa.php',
		//////__DIR__ . '/modules/Your_Account/public/ya_tos.php',
		
		//////__DIR__ . '/modules/Your_Account/copyright.php',
		//////__DIR__ . '/modules/Your_Account/index.php',
		//////__DIR__ . '/modules/Your_Account/navbar.php',

    ]);

};
