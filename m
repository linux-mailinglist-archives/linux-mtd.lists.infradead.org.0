Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07745DD8E6
	for <lists+linux-mtd@lfdr.de>; Sat, 19 Oct 2019 16:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5H0ANqCbF3Qq3vD2C1YoT4yTZF0cK0zDpw/GQgKDs0=; b=No+8nyZhZsWZ7p
	8voj+YPPwAGQp4odhLmO8GuEWh56XU9/8OE5eFVTi3XMHb0o7PQcVGwX1mMuMdMzI4UDL2q45suBR
	L5AoRhw0lb8+R+qve7Qr2VQKddrgmrLpAZ5ueA3tTS+pG9ZLrPsnTtmHTy1/ue0QZJmNDyqpvI17w
	E7DvNz4qeWz1iYWFhYOR6pIh3LthyogRmtsXOIkeN+H4TaaBVN9SmDhR0X+mHpavvLXwWmSfwq6ak
	ENjOX8uOFzH0H3yS6UXA8LTWXzR4d9RdYyEeAfM2jz5hiV3+EIgDMuCLY9jTEP4toHh4qmGl+me2Z
	aaSZr/jVZC1O0huegAkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLpM0-0007rg-7a; Sat, 19 Oct 2019 14:05:12 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLpLn-0007pc-KS
 for linux-mtd@lists.infradead.org; Sat, 19 Oct 2019 14:05:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Oct 2019 07:04:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,315,1566889200"; d="scan'208";a="348355108"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga004.jf.intel.com with ESMTP; 19 Oct 2019 07:04:54 -0700
Received: from abityuts-desk1.fi.intel.com (abityuts-desk1.fi.intel.com
 [10.237.68.148])
 by linux.intel.com (Postfix) with ESMTP id 41548580107;
 Sat, 19 Oct 2019 07:04:52 -0700 (PDT)
Message-ID: <560583208ccb15ee2dee45f01735ff0c6fc09d08.camel@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: mtd/ubi/ubifs: Remove inactive maintainers
From: Artem Bityutskiy <dedekind1@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Date: Sat, 19 Oct 2019 17:04:51 +0300
In-Reply-To: <20191017142229.3853-1-miquel.raynal@bootlin.com>
References: <20191017142229.3853-1-miquel.raynal@bootlin.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_070459_683406_B5BD6A8C 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dedekind1[at]gmail.com)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedekind1[at]gmail.com)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (dedekind1[at]gmail.com)
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
Reply-To: dedekind1@gmail.com
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Marek Vasut <marek.vasut@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTEwLTE3IGF0IDE2OjIyICswMjAwLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+
IERlc3BpdGUgdGhlaXIgc3Vic3RhbnRpYWwgcGVyc29uYWwgaW52ZXN0bWVudCBpbiB0aGUgTVRE
L1VCSS9VQklGUyBhCj4gZmV3IHllYXJzIGJhY2ssIERhdmlkLCBCcmlhbiwgQXJ0ZW0gYW5kIEFk
cmlhbiBhcmUgbm90IGFjdGl2ZWx5Cj4gbWFpbnRhaW5pbmcgdGhlIHN1YnN5c3RlbSBhbnltb3Jl
LiBXZSB3YXJtbHkgc2FsdXRlIHRoZW0gZm9yIGFsbCB0aGUKPiB3b3JrIHRoZXkgaGF2ZSBhY2hp
ZXZlZCBhbmQgd2lsbCBvZiBjb3Vyc2Ugc3RpbGwgd2VsY29tZSB0aGVpcgo+IHBhcnRpY2lwYXRp
b24gYW5kIHJldmlld3MuCj4gCj4gVGhhdCBzYWlkLCBNYXJlayByZXRpcmVkIGhpbXNlbGYgYSBm
ZXcgd2Vla3MgYWdvIHF1b3RpbmcgSGFyYWxkIFsxXToKPiAKPiAgICAgICAgIEl0IG1hdHRlcnMg
d2hvIGhhcyB3aGljaCB0aXRsZSBhbmQgd2hlbi4gU2hvdWxkIHNvbWVib2R5IG5vdAo+ICAgICAg
ICAgYmUgYW4gYWN0aXZlIG1haW50YWluZXIsIG1ha2Ugc3VyZSBoZSdzIG5vdCBsaXN0ZWQgYXMg
c3VjaC4KPiAKPiBGb3IgdGhpcyBzYW1lIHJlYXNvbiwgbGV04oCZcyB0cmltIHRoZSBtYWludGFp
bmVycyBsaXN0IHdpdGggdGhlCj4gYWN0dWFsbHkgYWN0aXZlIG9uZXMgb3ZlciB0aGUgcGFzdCB0
d28geWVhcnMuCj4gCj4gWzFdIGh0dHA6Ly9sYWZvcmdlLmdudW1vbmtzLm9yZy9ibG9nLzIwMTgw
MzA3LW1jaGFyZHktZ3BsLwo+IAo+IENjOiBEYXZpZCBXb29kaG91c2UgPGR3bXcyQGluZnJhZGVh
ZC5vcmc+Cj4gQ2M6IEJyaWFuIE5vcnJpcyA8Y29tcHV0ZXJzZm9ycGVhY2VAZ21haWwuY29tPgo+
IENjOiBBcnRlbSBCaXR5dXRza2l5IDxkZWRla2luZDFAZ21haWwuY29tPgo+IENjOiBBZHJpYW4g
SHVudGVyIDxhZHJpYW4uaHVudGVyQGludGVsLmNvbT4KPiBDYzogTWFyZWsgVmFzdXQgPG1hcmVr
LnZhc3V0QGdtYWlsLmNvbT4KPiBDYzogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290
bGluLmNvbT4KPiBDYzogUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJkQG5vZC5hdD4KPiBDYzog
VmlnbmVzaCBSYWdoYXZlbmRyYSA8dmlnbmVzaHJAdGkuY29tPgo+IENjOiBUdWRvciBBbWJhcnVz
IDx0dWRvci5hbWJhcnVzQG1pY3JvY2hpcC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJh
eW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCkFja2VkLWJ5OiBBcnRlbSBCaXR5dXRz
a2l5IDxkZWRla2luZDFAZ21haWwuY29tPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRk
Lwo=
