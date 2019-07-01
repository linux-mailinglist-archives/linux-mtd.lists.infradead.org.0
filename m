Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5345B589
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jul 2019 09:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypp+jYxEv3JNhXQfH5vrgJJGe2Tjy5uMgPCiiXLORSQ=; b=KD+9QjWFfXj/y6
	ZaHIzuaU/SfOGWYSZnHFjl1YyLKjiwYpZODHygQenzYXgJOgOL/lvjw2kVjzQXIJEi2pnZzCOquY8
	9jU/2+TRscUqT4dzC5rpHASJNnjJ6PpDl2DvXecBwCpEBzrr1ZbDuWEC+A1qi9hrEwOCvTBoxVBYL
	ktHwj18we1SHWXW58RmJ9xj4CUI6qgyj/izZc3R96zCJZ/ZMG9qnlEQ4apZiTFXDGFwyCgS6iNyAE
	fcb9cUiXVPXvjj+ZTBhUZXSeoB5BQMQJiuhggI4vLC22m4wPB3SzSTkCueiQ+jTQIVvbWbIEeWKLv
	9LULQPNA9d4hBN3xWwYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhqUR-0000pe-9w; Mon, 01 Jul 2019 07:12:39 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhqUD-0000p8-KL
 for linux-mtd@lists.infradead.org; Mon, 01 Jul 2019 07:12:28 +0000
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 16F99100002;
 Mon,  1 Jul 2019 07:12:12 +0000 (UTC)
Date: Mon, 1 Jul 2019 09:12:11 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH v4 1/2] mtd: Add flag to indicate panic_write
Message-ID: <20190701091211.6d4ab963@xps13>
In-Reply-To: <1560882420-727-1-git-send-email-kdasu.kdev@gmail.com>
References: <1560882420-727-1-git-send-email-kdasu.kdev@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_001227_667867_75C62584 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgS2FtYWwsCgpLYW1hbCBEYXN1IDxrZGFzdS5rZGV2QGdtYWlsLmNvbT4gd3JvdGUgb24gVHVl
LCAxOCBKdW4gMjAxOSAxNDoyNjo0MgotMDQwMDoKCj4gQWRkZWQgYSBmbGFnIHRvIGluZGljYXRl
IGEgcGFuaWNfd3JpdGUgc28gdGhhdCBsb3cgbGV2ZWwgZHJpdmVycyBjYW4KPiB1c2UgaXQgdG8g
dGFrZSByZXF1aXJlZCBhY3Rpb24gd2hlcmUgYXBwbGljYWJsZSwgdG8gZW5zdXJlIG9vcHMgZGF0
YQo+IGdldHMgd3JpdHRlbiB0byBhc3NpZ25lZCBtdGQgZGV2aWNlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEthbWFsIERhc3UgPGtkYXN1LmtkZXZAZ21haWwuY29tPgo+IC0tLQoKQXBwbGllZCB0byBu
YW5kL25leHQsIHRoYW5rcy4KCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQv
Cg==
