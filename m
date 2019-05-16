Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1495F20E9B
	for <lists+linux-mtd@lfdr.de>; Thu, 16 May 2019 20:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ibCFjE9p6rmjBRMr4CjSMw21U9o7V865pRiEcHXtQ4=; b=MPRE+hawtF9bSS
	KJ18cljeB4O3a8JCfQHvJHYR5ENMTn0VlLfaWZNKD6GLtODnUyJRC1Uep/0y3IFtT4d+DD1Bgf7tC
	2dVIkch+KkpfTt9/LqZXal9n8eKzPSeglIUdKWiyVsgHpPWWPRaDYRYt2Lw/JMYYaejPbT7TcyF50
	M1oTYAnKFAW4uap9pJDRpyyCPIoKCq9IdQWFsGqdx5h3GTto1guLP9Wm8GHnM2WZQD+syn9H1w0mX
	HWJXVTThA+XBYSquz4m/o1VOh0C0RzvTF+ZpqdNujIRHO/a/1dDpwNcOltP7quc5X/8CuhjKfk58i
	5GTHMxjSD5BosDKL3pKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRL4g-0002aU-CM; Thu, 16 May 2019 18:25:50 +0000
Received: from chamillionaire.breakpoint.cc ([146.0.238.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRL4Z-0001DJ-J2
 for linux-mtd@lists.infradead.org; Thu, 16 May 2019 18:25:44 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.89)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1hRL2S-0005Hj-Sf; Thu, 16 May 2019 20:23:33 +0200
Date: Thu, 16 May 2019 20:23:32 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] ubifs: Add support for zstd compression.
Message-ID: <20190516182331.znkfibxah2pa5yaq@flow>
References: <20190515210202.21169-1-richard@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515210202.21169-1-richard@nod.at>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_112543_774702_37D0025F 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michele Dionisio <michele.dionisio@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gMjAxOS0wNS0xNSAyMzowMjowMiBbKzAyMDBdLCBSaWNoYXJkIFdlaW5iZXJnZXIgd3JvdGU6
CgpUaGF0IGlzIGEgbG90IGxlc3MgY29tcGFyZWQgdG8gd2hhdCBJIG5lZWRlZCBmb3IgbWtmcy51
Ymlmcy4gSSBqdXN0CnRlc3RlZCB0aGlzIGluIG5hbmRzaW0gYW5kIGl0IHdvcmtzIC0gSSBjYW4g
cmVhZCB0aGUgaW1hZ2UgZ2VuZXJhdGVkIGJ5Cm1rZnMuCgpBcyBmb3IgbXkgY29tcHJlc3Npb24g
bGV2ZWwgdGVzdGluZzogRG8gd2Ugd2FudCB0byBrZWVwIC1MIHBhcmFtZXRlciBvcgpyYXRoZXIg
ZHJvcCBpdD8gVGhlIG1heCBsZXZlbCBoYXJkbHkgbWFrZXMgYSBkaWZmZXJlbmNlIChhbmQgd2Ug
ZG9uJ3QKaGF2ZSBpdCAvIHVzZSBpdCBmb3IgTFpPL1pMSUIp4oCmCgpTZWJhc3RpYW4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
