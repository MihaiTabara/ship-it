/* Alter View needs to use the full syntax of the create view,
  can't just add/drop columns */
CREATE VIEW product_releases AS 
    select 'firefox' AS product
    union
    select 'thunderbird' AS product
    union
    select 'fennec' AS product;

ALTER VIEW product_releases AS
    select 'firefox' AS product,
        firefox_release.name AS name,
        firefox_release.submitter AS submitter,
        firefox_release.version AS version,
        firefox_release.buildNumber AS buildNumber,
        firefox_release.branch AS branch,
        firefox_release.mozillaRevision AS mozillaRevision,
        firefox_release.l10nChangesets AS l10nChangesets,
        firefox_release.ready AS ready,
        firefox_release.complete AS complete,
        firefox_release.status AS status,
        firefox_release.partials AS partials,
        firefox_release.mozillaRelbranch AS mozillaRelbranch,
        firefox_release.promptWaitTime AS promptWaitTime,
        firefox_release.submittedAt AS submittedAt,
        firefox_release.comment AS comment,
        firefox_release.starter AS starter,
        firefox_release.shippedAt AS shippedAt,
        firefox_release.isSecurityDriven AS isSecurityDriven,
        firefox_release.description AS description,
        NULL AS commRevision,
        NULL AS commRelbranch,
        firefox_release.mh_changeset AS mh_changeset
        FROM firefox_release
    union
    select 'thunderbird' AS product,
        thunderbird_release.name AS name,
        thunderbird_release.submitter AS submitter,
        thunderbird_release.version AS version,
        thunderbird_release.buildNumber AS buildNumber,
        thunderbird_release.branch AS branch,
        thunderbird_release.mozillaRevision AS mozillaRevision,
        thunderbird_release.l10nChangesets AS l10nChangesets,
        thunderbird_release.ready AS ready,
        thunderbird_release.complete AS complete,
        thunderbird_release.status AS status,
        thunderbird_release.partials AS partials,
        thunderbird_release.mozillaRelbranch AS mozillaRelbranch,
        thunderbird_release.promptWaitTime AS promptWaitTime,
        thunderbird_release.submittedAt AS submittedAt,
        thunderbird_release.comment AS comment,
        thunderbird_release.starter AS starter,
        thunderbird_release.shippedAt AS shippedAt,
        thunderbird_release.isSecurityDriven AS isSecurityDriven,
        thunderbird_release.description AS description,
        thunderbird_release.commRevision AS commRevision,
        thunderbird_release.commRelbranch AS commRelbranch,
        thunderbird_release.mh_changeset AS mh_changeset
        FROM thunderbird_release
    union
    select 'fennec' AS product,
        fennec_release.name AS name,
        fennec_release.submitter AS submitter,
        fennec_release.version AS version,
        fennec_release.buildNumber AS buildNumber,
        fennec_release.branch AS branch,
        fennec_release.mozillaRevision AS mozillaRevision,
        fennec_release.l10nChangesets AS l10nChangesets,
        fennec_release.ready AS ready,
        fennec_release.complete AS complete,
        fennec_release.status AS status,
        NULL AS partials,
        fennec_release.mozillaRelbranch AS mozillaRelbranch,
        NULL AS promptWaitTime,
        fennec_release.submittedAt AS submittedAt,
        fennec_release.comment AS comment,
        fennec_release.starter AS starter,
        fennec_release.shippedAt AS shippedAt,
        fennec_release.isSecurityDriven AS isSecurityDriven,
        fennec_release.description AS description,
        NULL AS commRevision,
        NULL AS commRelbranch,
        fennec_release.mh_changeset AS mh_changeset
        FROM fennec_release;
