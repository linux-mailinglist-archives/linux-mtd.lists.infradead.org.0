Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A15F197605
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Mar 2020 09:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zS88B45QY+XoaCF8V2ThF/ZKNxdkbdqiMktIRQP+3c=; b=dW4aC4Qe10EpI2
	ajUkHE5YzXu4W03gWhvzJiyEMJ69zrlirBxRU9oGVDwfdihbh/wNEl8PySY3gOvmY9vhyG/grUwzJ
	u6KRzoW429htahb1md3bGOdqf8cBibjJJMtm5+aCjKqVW8tDrvpB6LPpBttuPJI6vOIWSL+7iNWos
	JSUVGVT3X1uwhmt/AWZrEvGn4oRGulB162ryj2ZjdGMhB4zc2qE3pRKUCpfBzUxAfXcnmvxu6Elct
	HTW9eCe4K5PyGk+N50XsfhfxRjUW1Ju3joDdH2C5amzL0l8mDx0XW+owMO8BQmBgbXAoA0vVJZ07D
	Zhtf+UPKkDTukpXxtxWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIpF8-000381-Qq; Mon, 30 Mar 2020 07:53:58 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIpEw-000372-Uj
 for linux-mtd@lists.infradead.org; Mon, 30 Mar 2020 07:53:48 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E473F200009;
 Mon, 30 Mar 2020 07:53:42 +0000 (UTC)
Date: Mon, 30 Mar 2020 09:53:41 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaoming Ni <nixiaoming@huawei.com>
Subject: Re: [PATCH] mtd:clear cache_state to avoid writing to bad clocks
 repeatedly
Message-ID: <20200330095341.284048c3@xps13>
In-Reply-To: <1585400477-65705-1-git-send-email-nixiaoming@huawei.com>
References: <1585400477-65705-1-git-send-email-nixiaoming@huawei.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_005347_128177_39117DA6 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: wangle6@huawei.com, vigneshr@ti.com, richard@nod.at,
 zhangweimin12@huawei.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, houtao1@huawei.com, yebin10@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgWGlhb21pbmcsCgpYaWFvbWluZyBOaSA8bml4aWFvbWluZ0BodWF3ZWkuY29tPiB3cm90ZSBv
biBTYXQsIDI4IE1hciAyMDIwIDIxOjAxOjE3CiswODAwOgoKPiBUaGUgZnVuY3Rpb24gY2FsbCBw
cm9jZXNzIGlzIGFzIGZvbGxvd3M6Cj4gCW10ZF9ibGt0cmFuc193b3JrKCkKPiAJICB3aGlsZSAo
MSkKPiAJICAgIGRvX2Jsa3RyYW5zX3JlcXVlc3QoKQo+IAkgICAgICBtdGRibG9ja193cml0ZXNl
Y3QoKQo+IAkgICAgICAgIGRvX2NhY2hlZF93cml0ZSgpCj4gCSAgICAgICAgICB3cml0ZV9jYWNo
ZWRfZGF0YSgpIC8qaWYgY2FjaGVfc3RhdGUgaXMgU1RBVEVfRElSVFkqLwo+IAkgICAgICAgICAg
ICBlcmFzZV93cml0ZSgpCj4gCj4gd3JpdGVfY2FjaGVkX2RhdGEoKSByZXR1cm5zIGZhaWx1cmUg
d2l0aG91dCBtb2RpZnlpbmcgY2FjaGVfc3RhdGUKPiBhbmQgY2FjaGVfb2Zmc2V0LiBzbyB3aGVu
IGRvX2NhY2hlZF93cml0ZSgpIGlzIGNhbGxlZCBhZ2FpbiwKPiB3cml0ZV9jYWNoZWRfZGF0YSgp
IHdpbGwgYmUgY2FsbGVkIGFnYWluIHRvIHBlcmZvcm0gZXJhc2Vfd3JpdGUoKQo+IG9uIHRoZSBz
YW1lIGNhY2hlX29mZnNldC4KPiAKPiBidXQgaWYgdGhpcyBjYWNoZV9vZmZzZXQgcG9pbnRzIHRv
IGEgYmFkIGJsb2NrLCBlcmFzZV93cml0ZSgpIHdpbGwKPiBhbHdheXMgcmV0dXJuIC1FSU8uIFdy
aXRpbmcgdG8gdGhpcyBtdGRibGsgaXMgZXF1aXZhbGVudCB0byBsb3NpbmcKPiB0aGUgY3VycmVu
dCBkYXRhLCBhbmQgcmVwZWF0ZWRseSB3cml0aW5nIHRvIHRoZSBiYWQgYmxvY2suCj4gCj4gUmVw
ZWF0ZWRseSB3cml0aW5nIGEgYmFkIGJsb2NrIGhhcyBubyByZWFsIGJlbmVmaXRzLAo+IGJ1dCBi
cmluZ3Mgc29tZSBuZWdhdGl2ZSBlZmZlY3RzOgo+IDEgTG9zdCBzdWJzZXF1ZW50IGRhdGEKPiAy
IExvc3Mgb2YgZmxhc2ggZGV2aWNlIGxpZmUKPiAzIGVyYXNlX3dyaXRlKCkgYmFkIGJsb2NrcyBh
cmUgdmVyeSB0aW1lLWNvbnN1bWluZy4gZm9yIGV4YW1wbGU6Cj4gCXRoZSBmdW5jdGlvbiBkb19l
cmFzZV9vbmVibG9jaygpIGluIGNoaXBzL2NmaV9jbWRzZXRfMDAyMC5jIG9yCj4gCWNoaXBzL2Nm
aV9jbWRzZXRfMDAwMi5jIG1heSB0YWtlIG1vcmUgdGhhbiAyMCBzZWNvbmRzIHRvIHJldHVybgo+
IAo+IFRoZXJlZm9yZSwgd2hlbiBlcmFzZV93cml0ZSgpIHJldHVybnMgLUVJTyBpbiB3cml0ZV9j
YWNoZWRfZGF0YSgpLAo+IGNsZWFyIGNhY2hlX3N0YXRlIHRvIGF2b2lkIHdyaXRpbmcgdG8gYmFk
IGNsb2NrcyByZXBlYXRlZGx5LgoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBibG9ja3MKCj4gCj4gU2lnbmVkLW9mZi1ieTogWGlhb21pbmcgTmkgPG5peGlhb21p
bmdAaHVhd2VpLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tdGQvbXRkYmxvY2suYyB8IDExICsrKysr
KystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL210ZGJsb2NrLmMgYi9kcml2ZXJzL210ZC9t
dGRibG9jay5jCj4gaW5kZXggMDc4ZTBmNi4uOThjMjVkNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L210ZC9tdGRibG9jay5jCj4gKysrIGIvZHJpdmVycy9tdGQvbXRkYmxvY2suYwo+IEBAIC04OSw4
ICs4OSw2IEBAIHN0YXRpYyBpbnQgd3JpdGVfY2FjaGVkX2RhdGEgKHN0cnVjdCBtdGRibGtfZGV2
ICptdGRibGspCj4gIAo+ICAJcmV0ID0gZXJhc2Vfd3JpdGUgKG10ZCwgbXRkYmxrLT5jYWNoZV9v
ZmZzZXQsCj4gIAkJCSAgIG10ZGJsay0+Y2FjaGVfc2l6ZSwgbXRkYmxrLT5jYWNoZV9kYXRhKTsK
PiAtCWlmIChyZXQpCj4gLQkJcmV0dXJuIHJldDsKPiAgCj4gIAkvKgo+ICAJICogSGVyZSB3ZSBj
b3VsZCBhcmd1YWJseSBzZXQgdGhlIGNhY2hlIHN0YXRlIHRvIFNUQVRFX0NMRUFOLgo+IEBAIC05
OCw5ICs5NiwxNCBAQCBzdGF0aWMgaW50IHdyaXRlX2NhY2hlZF9kYXRhIChzdHJ1Y3QgbXRkYmxr
X2RldiAqbXRkYmxrKQo+ICAJICogYmUgbm90aWZpZWQgaWYgdGhpcyBjb250ZW50IGlzIGFsdGVy
ZWQgb24gdGhlIGZsYXNoIGJ5IG90aGVyCj4gIAkgKiBtZWFucy4gIExldCdzIGRlY2xhcmUgaXQg
ZW1wdHkgYW5kIGxlYXZlIGJ1ZmZlcmluZyB0YXNrcyB0bwo+ICAJICogdGhlIGJ1ZmZlciBjYWNo
ZSBpbnN0ZWFkLgo+ICsJICoKPiArCSAqIGlmIHRoaXMgY2FjaGVfb2Zmc2V0IHBvaW50cyB0byBh
IGJhZCBibG9jawoKQ2FuIHlvdSBzdGFydCB5b3VyIHNlbnRlbmNlcyB3aXRoIGEgY2FwaXRhbCBs
ZXR0ZXIgcGxlYXNlPwoKCSAqIElmCgo+ICsJICogZGF0YSBjYW5ub3QgYmUgd3JpdHRlbiB0byB0
aGUgZGV2aWNlLgo+ICsJICogY2xlYXIgY2FjaGVfc3RhdGUgdG8gYXZvaWQgd3JpdGluZyB0byBi
YWQgY2xvY2tzIHJlcGVhdGVkbHkKCgkgKiBDbGVhcgoKQW5kIGFsc28gcGxlYXNlIGJyZWFrIHlv
dXIgbGluZXMgw6AgODAsIG5vdCA3MC4KCj4gIAkgKi8KPiAtCW10ZGJsay0+Y2FjaGVfc3RhdGUg
PSBTVEFURV9FTVBUWTsKPiAtCXJldHVybiAwOwo+ICsJaWYgKHJldCA9PSAwIHx8IHJldCA9PSAt
RUlPKQo+ICsJCW10ZGJsay0+Y2FjaGVfc3RhdGUgPSBTVEFURV9FTVBUWTsKPiArCXJldHVybiBy
ZXQ7Cj4gIH0KPiAgCj4gIAoKT3RoZXJ3aXNlIGxvb2tzIGdvb2QgdG8gbWUuCgpXaXRoIHRoZSBh
Ym92ZSBhZGRyZXNzZWQ6CgpSZXZpZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5h
bEBib290bGluLmNvbT4KCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tdGQvCg==
