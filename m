Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 112F6151787
	for <lists+linux-mtd@lfdr.de>; Tue,  4 Feb 2020 10:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8WgA7S+fKwaz3/PGyZC50qcSOuJe/gf89hppdluHZE=; b=b/jQUE6Usbkrih
	oyMQF1ur7N7NgVnS/Rhx8vjkh/QOjQDR5MnHU6/rGz1TydvtiMdrgEItzOfLApTxQWvnaO1EIgSIF
	1DaZnaBFLLeZ1x+V7SVupYHYGMxJab3hy2OJb/4/SHYiD6HdsaJHFkj1S4Q8gxtyGmZMCHKryXCtZ
	nz+d53CLqKdayViwGnTZfk4eoTlPXtYUFk7YCwyLSj8Ngt0r9cZMhocDqZIJxGMXl90ZkB2icEqiL
	+I9ogJ+yGojjTakRpRR9rM3FgcvY1uLcEYtctqeakGCk9vLPqLinoGeM9sjnkps4UPSWlnBf4WJwx
	h06r4Q4GDq7Cs8mQLJlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyuGe-0003rR-Rs; Tue, 04 Feb 2020 09:13:12 +0000
Received: from mslow2.mail.gandi.net ([217.70.178.242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyuFT-0002Wr-LB
 for linux-mtd@lists.infradead.org; Tue, 04 Feb 2020 09:12:01 +0000
Received: from relay5-d.mail.gandi.net (unknown [217.70.183.197])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id C966E3AEFC1
 for <linux-mtd@lists.infradead.org>; Tue,  4 Feb 2020 08:52:27 +0000 (UTC)
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 61EAD1C001A;
 Tue,  4 Feb 2020 08:52:15 +0000 (UTC)
Date: Tue, 4 Feb 2020 09:52:14 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>
Subject: Re: [PATCH] mtd: nand: Add comment about Kioxia ID
Message-ID: <20200204095214.666c71fc@xps13>
In-Reply-To: <1580783163-5601-1-git-send-email-ytc-mb-yfuruyama7@kioxia.com>
References: <1580783163-5601-1-git-send-email-ytc-mb-yfuruyama7@kioxia.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_011159_840399_4E656551 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.242 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgWW9zaGlvLAoKWW9zaGlvIEZ1cnV5YW1hIDx5dGMtbWIteWZ1cnV5YW1hN0BraW94aWEuY29t
PiB3cm90ZSBvbiBUdWUsICA0IEZlYgoyMDIwIDExOjI2OjAzICswOTAwOgoKPiBBZGQgYSBjb21t
ZW50IGFib3ZlIE5BTkRfTUZSX1RPU0hJQkEgYW5kIFNQSU5BTkRfTUZSX1RPU0hJQkEgZGVmaW5p
dGlvbnMKPiB0aGF0IFRvc2hpYmEgYW5kIEtpb3hpYSBJRCBhcmUgdGhlIHNhbWUuCj4gCj4gU2ln
bmVkLW9mZi1ieTogWW9zaGlvIEZ1cnV5YW1hIDx5dGMtbWIteWZ1cnV5YW1hN0BraW94aWEuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9pbnRlcm5hbHMuaCB8IDEgKwo+ICBkcml2
ZXJzL210ZC9uYW5kL3NwaS90b3NoaWJhLmMgICB8IDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9pbnRl
cm5hbHMuaCBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2ludGVybmFscy5oCj4gaW5kZXggY2JhNmZl
Ny4uMjkxODM3NmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvaW50ZXJuYWxz
LmgKPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9pbnRlcm5hbHMuaAo+IEBAIC0zMCw2ICsz
MCw3IEBACj4gICNkZWZpbmUgTkFORF9NRlJfU0FNU1VORwkweGVjCj4gICNkZWZpbmUgTkFORF9N
RlJfU0FORElTSwkweDQ1Cj4gICNkZWZpbmUgTkFORF9NRlJfU1RNSUNSTwkweDIwCj4gKy8qIFRv
c2hpYmEgYW5kIEtpb3hpYSBJRCBhcmUgdGhlIHNhbWUuICovCj4gICNkZWZpbmUgTkFORF9NRlJf
VE9TSElCQQkweDk4Cj4gICNkZWZpbmUgTkFORF9NRlJfV0lOQk9ORAkweGVmCj4gIAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3NwaS90b3NoaWJhLmMgYi9kcml2ZXJzL210ZC9uYW5k
L3NwaS90b3NoaWJhLmMKPiBpbmRleCAwZGI1ZWU0Li5hOTJlY2M4IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvbXRkL25hbmQvc3BpL3Rvc2hpYmEuYwo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvc3Bp
L3Rvc2hpYmEuYwo+IEBAIC0xMCw2ICsxMCw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9rZXJuZWwu
aD4KPiAgI2luY2x1ZGUgPGxpbnV4L210ZC9zcGluYW5kLmg+Cj4gIAo+ICsvKiBUb3NoaWJhIGFu
ZCBLaW94aWEgSUQgYXJlIHRoZSBzYW1lLiAqLwo+ICAjZGVmaW5lIFNQSU5BTkRfTUZSX1RPU0hJ
QkEJCTB4OTgKPiAgI2RlZmluZSBUT1NIX1NUQVRVU19FQ0NfSEFTX0JJVEZMSVBTX1QJKDMgPDwg
NCkKPiAgCgoKIkFyZSB0aGUgc2FtZSIgaXMgbm90IHZlcnkgZGVzY3JpcHRpdmUsIHdoYXQgYWJv
dXQgIktpb3hpYSBpcyB0aGUgbmV3Cm5hbWUgb2YgVG9zaGliYSI/CgpUaGFua3MsCk1pcXXDqGwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
