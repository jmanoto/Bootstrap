<!DOCTYPE html>
<html lang="en">
<head>
	{asset name="Head"}
</head>
<body id="{$BodyID}" class="{$BodyClass}">
	<div id="Frame">
		<div class="Head" id="Head">
			<div class="HeadInner">
				<div class="Row">
					<a class="Brand" href="{link path="/"}">{logo}</a>
					<ul class="Nav">
						<!-- {dashboard_link} -->
						{discussions_link}
						{activity_link}
						<!-- {inbox_link} -->
						{custom_menu}
						<!-- {profile_link} -->
						<!-- {signinout_link} -->
					</ul>
					{searchbox}
					<ul class="Nav PullRight">
						{module name="MeModule"}
					</ul>
				</div>
			</div>
		</div>
		<div id="Body">
			<div class="Row">
				<div class="BreadcrumbsWrapper">
					{breadcrumbs}
				</div>
				<div class="Column PanelColumn" id="Panel">
					{asset name="Panel"}
				</div>
				<div class="Column ContentColumn" id="Content">
					{asset name="Content"}
				</div>
			</div>
		</div>
		<div id="Foot">
			<div class="Row">
				<a href="{vanillaurl}" class="PoweredByVanilla" title="Community Software by Vanilla Forums">Powered by Vanilla</a>
				{asset name="Foot"}
			</div>
		</div>
	</div>
	{event name="AfterBody"}
</body>
</html>