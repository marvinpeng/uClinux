# This script was automatically generated from 
#  http://www.gentoo.org/security/en/glsa/glsa-200406-14.xml
# It is released under the Nessus Script Licence.
# The messages are release under the Creative Commons - Attribution /
# Share Alike license. See http://creativecommons.org/licenses/by-sa/2.0/
#
# Avisory is copyright 2001-2005 Gentoo Foundation, Inc.
# GLSA2nasl Convertor is copyright 2004 Michel Arboi <mikhail@nessus.org>

if (! defined_func('bn_random')) exit(0);

if (description)
{
 script_id(14525);
 script_version("$Revision: 1.2 $");
 script_xref(name: "GLSA", value: "200406-14");

 desc = 'The remote host is affected by the vulnerability described in GLSA-200406-14
(aspell: Buffer overflow in word-list-compress)


    aspell includes a utility for handling wordlists called word-list-compress.
    This utility fails to do proper bounds checking when processing words
    longer than 256 bytes.
  
Impact

    If an attacker could entice a user to handle a wordlist containing very
    long word lengths it could result in the execution of arbitrary code with
    the permissions of the user running the program.
  
Workaround

    There is no known workaround at this time. All users are encouraged to
    upgrade to the latest available version.
  
References:
    http://nettwerked.mg2.org/advisories/wlc


Solution: 
    All users should upgrade to the latest available version of aspell.
    # emerge sync
    # emerge -pv ">=app-text/aspell-0.50.5-r4"
    # emerge ">=app-text/aspell-0.50.5-r4"
  

Risk factor : Medium
';
 script_description(english: desc);
 script_copyright(english: "(C) 2005 Michel Arboi <mikhail@nessus.org>");
 script_name(english: "[GLSA-200406-14] aspell: Buffer overflow in word-list-compress");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Gentoo Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys('Host/Gentoo/qpkg-list');
 script_summary(english: 'aspell: Buffer overflow in word-list-compress');
 exit(0);
}

include('qpkg.inc');
if (qpkg_check(package: "app-text/aspell", unaffected: make_list("ge 0.50.5-r4"), vulnerable: make_list("le 0.50.5-r3")
)) { security_warning(0); exit(0); }
