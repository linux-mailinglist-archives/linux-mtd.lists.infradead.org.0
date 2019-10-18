Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC73DBD87
	for <lists+linux-mtd@lfdr.de>; Fri, 18 Oct 2019 08:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKg+NKDKCjLsWGODABUSYjHchIw1wSZMF7KHLgjcVWw=; b=grTXQUj1zjnjfX
	ELqBM2tqT85Bj0cIaZ1b6lx9LnEhr8ABV6PvaYP2Y8SPSJPbWMx/+PSfQocHudJYI7X2PLl65da2H
	3LC3vRipsTUDiRKUyXJddV1ySNgmWtyC9+Fi7rkQFQN/AkEIMniA8DDGPo5gZHkE68Vv1zzkSIC77
	N+d3LswP8N9m76FkWblAQ4udW0AK2WyTIfqYaWhC3bopVbM5yfm+aFh8ThUgIawFAdBQuA8hzBzIk
	roQm4yTJFiRKMc9Xo8kpsKzDn6WIrP9DyTI8EXHxw0J6io4De7AsMH+1rM8DQ6cEL/wT+kbiLvc3v
	K1B8v3Y4Y/4y4yfLLaiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLLSP-0006tM-OY; Fri, 18 Oct 2019 06:09:49 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLLSG-0006si-5u
 for linux-mtd@lists.infradead.org; Fri, 18 Oct 2019 06:09:41 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 23:09:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,310,1566889200"; d="scan'208";a="226433501"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2019 23:09:37 -0700
Received: from abityuts-desk1.fi.intel.com (abityuts-desk1.fi.intel.com
 [10.237.68.148])
 by linux.intel.com (Postfix) with ESMTP id 8DF7858049A;
 Thu, 17 Oct 2019 23:09:34 -0700 (PDT)
Message-ID: <ab24122b93e08d23590b62be0ac4162229baf3d2.camel@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: mtd/ubi/ubifs: Remove inactive maintainers
From: Artem Bityutskiy <dedekind1@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Date: Fri, 18 Oct 2019 09:09:33 +0300
In-Reply-To: <20191017142229.3853-1-miquel.raynal@bootlin.com>
References: <20191017142229.3853-1-miquel.raynal@bootlin.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_230940_231564_85E5AD50 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (dedekind1[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedekind1[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dedekind1[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
d28geWVhcnMuCgpJIGFtIGZpbmUgd2l0aCBiZWluZyByZW1vdmVkIGZyb20gbWFpbnRhaW5lcnMs
IHRoYW5rcyEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
