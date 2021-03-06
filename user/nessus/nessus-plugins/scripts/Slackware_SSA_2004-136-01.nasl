# This script was automatically generated from the SSA-2004-136-01
# Slackware Security Advisory
# It is released under the Nessus Script Licence.
# Slackware Security Advisories are copyright 1999-2004 Slackware Linux, Inc.
# SSA2nasl Convertor is copyright 2004 Michel Arboi
# See http://www.slackware.com/about/ or http://www.slackware.com/security/
# Slackware(R) is a registered trademark of Slackware Linux, Inc.

if (! defined_func("bn_random")) exit(0);
desc='
New mc packages are available for Slackware 9.0, 9.1, and -current to
fix security issues that These could lead to a denial of service or the
execution of arbitrary code as the user running mc.

Sites that use mc should upgrade to the new mc package.

More details about this issue may be found in the Common
Vulnerabilities and Exposures (CVE) database:

  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2004-0226
  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2004-0231
  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2004-0232

';
if (description) {
script_id(18761);
script_version("$Revision: 1.3 $");
script_category(ACT_GATHER_INFO);
script_family(english: "Slackware Local Security Checks");
script_dependencies("ssh_get_info.nasl");
script_copyright("This script is Copyright (C) 2005 Michel Arboi <mikhail@nessus.org>");
script_require_keys("Host/Slackware/release", "Host/Slackware/packages");
script_description(english: desc);

script_xref(name: "SSA", value: "2004-136-01");
script_summary("SSA-2004-136-01 mc ");
name["english"] = "SSA-2004-136-01 mc ";
script_name(english:name["english"]);
script_cve_id("CVE-2004-0226","CVE-2004-0231","CVE-2004-0232");
exit(0);
}

include('slackware.inc');
include('global_settings.inc');

if (slackware_check(osver: "9.1", pkgname: "mc", pkgver: "4.6.0", pkgnum:  "2", pkgarch: "i386")) {
w++;
if (report_verbosity > 0) desc = strcat(desc, '
The package mc is vulnerable in Slackware 9.1
Upgrade to mc-4.6.0-i386-2 or newer.
');
}
if (slackware_check(osver: "9.1", pkgname: "mc", pkgver: "4.6.0", pkgnum:  "2", pkgarch: "i486")) {
w++;
if (report_verbosity > 0) desc = strcat(desc, '
The package mc is vulnerable in Slackware 9.1
Upgrade to mc-4.6.0-i486-2 or newer.
');
}
if (slackware_check(osver: "-current", pkgname: "mc", pkgver: "4.6.0", pkgnum:  "2", pkgarch: "i486")) {
w++;
if (report_verbosity > 0) desc = strcat(desc, '
The package mc is vulnerable in Slackware -current
Upgrade to mc-4.6.0-i486-2 or newer.
');
}

if (w) { security_hole(port: 0, data: desc); }
