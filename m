Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D03141A01
	for <lists+linux-mtd@lfdr.de>; Sat, 18 Jan 2020 23:14:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QxojpuSXb67nUtxuTswuYjZbqdEtpk9WGQkcqTYRo58=; b=D2Wjn94oKBAKli
	feJNueFfFR3YboFdLtVBJX4FDkKkoHeymFGvNwnblU0vACwOWTw1DKMho4RAL0G0Jej2ocv80dvoh
	PuBDmOCA4vOo7mOChoSqpmH5HHGhjf6zJkIhZtN1AACpDwJ8Vj6xpePzDM+qXbh/z1J2M6WdMBzvZ
	sSiwdBFc7xrPogGVIyKty4GJb5Wieaf/SwP0420ScJlscFh7pRefJ6xwUYG6H9cK8Gd8bmkJUikVz
	s4KAPCkmuPYwZtKjoQof1PpBtzXmlF80BxVjCk6sJUpOYWnuQdmAe1w9aNQRXSMZ9Vv/Kp2iZfW+M
	/r/BB9uh4VbTM5FV7SMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iswLg-0000mq-DQ; Sat, 18 Jan 2020 22:13:44 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iswLa-0000hH-Ml
 for linux-mtd@lists.infradead.org; Sat, 18 Jan 2020 22:13:40 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 26821C0002;
 Sat, 18 Jan 2020 22:13:11 +0000 (UTC)
Date: Sat, 18 Jan 2020 23:13:07 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] mtd: Fixes for 5.5-rc7 or final
Message-ID: <20200118231006.6776f277@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_141338_878825_CCFBD532 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8gTGludXMsCgpUaGlzIGlzIGhvcGVmdWxseSB0aGUgbGFzdCA0IE1URCBmaXhlcyB0aGF0
IHdlIHdvdWxkIGxpa2UgdG8gaGF2ZSBpbgp2NS41LgoKVGhhbmtzLApNaXF1w6hsCgoKVGhlIGZv
bGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBiM2E5ODdiMDI2NGQzZGRiYjI0MjkzZWJmZjEw
ZWRkZmM0NzJmNjUzOgoKICBMaW51eCA1LjUtcmM2ICgyMDIwLTAxLTEyIDE2OjU1OjA4IC0wODAw
KQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9tdGQvbGludXguZ2l0IHRhZ3MvbXRk
L2ZpeGVzLWZvci01LjUtcmM3Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gZDcwNDg2
NjY4Y2RmNTFiMTRhNTA0MjVhYjQ1ZmMxODY3N2ExNjdiMjoKCiAgbXRkOiByYXduYW5kOiBncG1p
OiBSZXN0b3JlIG5mYyB0aW1pbmcgc2V0dXAgYWZ0ZXIgc3VzcGVuZC9yZXN1bWUgKDIwMjAtMDEt
MTcgMjI6NDU6MDkgKzAxMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClJhdyBOQU5EOgoqIEdQTUk6IEZpeCB0aGUgc3Vz
cGVuZC9yZXN1bWUKClNQSS1OT1I6CiogRml4IHF1YWQgZW5hYmxlIG9uIFNwYW5zaW9uIGxpa2Ug
Zmxhc2hlcwoqIEZpeCBzZWxlY3Rpb24gb2YgNC1ieXRlIGFkZHJlc3Npbmcgb3Bjb2RlcyBvbiBT
cGFuc2lvbgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQpFc2JlbiBIYWFiZW5kYWwgKDIpOgogICAgICBtdGQ6IHJhd25hbmQ6
IGdwbWk6IEZpeCBzdXNwZW5kL3Jlc3VtZSBwcm9ibGVtCiAgICAgIG10ZDogcmF3bmFuZDogZ3Bt
aTogUmVzdG9yZSBuZmMgdGltaW5nIHNldHVwIGFmdGVyIHN1c3BlbmQvcmVzdW1lCgpNaWNoYWVs
IFdhbGxlICgxKToKICAgICAgbXRkOiBzcGktbm9yOiBGaXggcXVhZCBlbmFibGUgZm9yIFNwYW5z
aW9uIGxpa2UgZmxhc2hlcwoKVmlnbmVzaCBSYWdoYXZlbmRyYSAoMSk6CiAgICAgIG10ZDogc3Bp
LW5vcjogRml4IHNlbGVjdGlvbiBvZiA0LWJ5dGUgYWRkcmVzc2luZyBvcGNvZGVzIG9uIFNwYW5z
aW9uCgogZHJpdmVycy9tdGQvbmFuZC9yYXcvZ3BtaS1uYW5kL2dwbWktbmFuZC5jIHwgMTEgKysr
KysrKysrKy0KIGRyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5jICAgICAgICAgICAgICB8ICA2
ICsrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
