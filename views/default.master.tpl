<!DOCTYPE html>
<html class="no-js">
    <head>
        {asset name="Head"}
    </head>
    <body id="{$BodyID}" class="{$BodyClass}">
        {if InSection(array("Profile", "ActivityList"))}
            {assign var="Layout" value="Fixed Left"}
        {elseif InSection("Entry")}
            {assign var="Layout" value="Fixed Left Fullwidth"}
        {else}
            {assign var="Layout" value="Fixed Left"}
        {/if}
        <div id="Frame" class="{$Layout}">
            <header id="Header">
                <nav id="Navigation">
                    <div class="Wrapper">
                        <h1>{logo}</h1>
                        <ul class="Menu">
                            {dashboard_link}
                            {*{home_link}*}
                            {discussions_link}
                            {activity_link}
                            {mydiscussions_link}
                            {bookmarks_link}
                            {drafts_link}
                            {*{inbox_link}*}
                            {custom_menu}
                            {*{profile_link}*}
                            {*{signinout_link}*}
                        </ul>
                        <div class="SiteSearch">
                            {searchbox placeholder="Search the forums"}
                        </div>
                    </div>
                </nav>
                <section id="Banner">
                    <div class="Wrapper">
                        {breadcrumbs}
                        {module name="MeModule" CssClass="Inline FlyoutRight"}
                    </div>
                </section>
            </header>
            <section id="Body">
                <noscript>{t c="Noscript Notice"}</noscript>
                <div class="Wrapper">
                    {if !InSection("Entry")}
                    <aside id="Panel">
                        {if InSection("Profile")}
                            <h1 class="H">{$Profile.Name}</h1>
                        {/if}
                        {asset name="Panel"}
                        {if InSection("Profile")}
                            {module name="UserInfoModule"}
                        {/if}
                    </aside>
                    {/if}
                    <section id="Content">
                        {asset name="Content"}
                    </section>
                </div>
            </section>
            <footer id="Footer">
                {asset name="Foot"}
            </footer>
        </div>
        {event name="AfterBody"}
    </body>
</html>