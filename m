Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B85A136047
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 19:40:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jv2SCsheQDQbr1Pkit7PN0Ry2cu2p7oeUe+3Zejhpcg=; b=c6xHQ5j3tS+Arq
	9Z5O6FxjeMQyVXuw81qhv1aRvkAycQmHy9d+i9fxqKw3Ob+G7+yNHN03cUVtAJg1oObi6UaCGTd0m
	0qQMP/QUs5LO/LxqU5/3yx9gGPo7+GlpqA9MfJsrzZGg++VCmNSQTsOOoTpDEPzZIvLza/qJcfChl
	oIq7VAPiIyoQKXOdG3+G5LpUCiaKtRrtNC72JPjbrw4GbAvmswXS7cAkfKLWk+MZ2p15yijtsD9GD
	XBj3H7m5D2vIP/0ldZe9Z+iWfExhjvqKq/cU5yfCJ+CSleBlQE0haWPcWWr20YTWf39NZMGrO9/vP
	4kWYAVyzD7IfEZ8Jj/7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipciq-0006zL-Fn; Thu, 09 Jan 2020 18:39:56 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcii-0006yj-Mk
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 18:39:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 21F3E6094C4B;
 Thu,  9 Jan 2020 19:39:43 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id z0kXLkB5nYZr; Thu,  9 Jan 2020 19:39:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id CA9B0608310C;
 Thu,  9 Jan 2020 19:39:42 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id SeRJUf7fkFIf; Thu,  9 Jan 2020 19:39:42 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id AC47B6083247;
 Thu,  9 Jan 2020 19:39:42 +0100 (CET)
Date: Thu, 9 Jan 2020 19:39:42 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Message-ID: <1885178044.17826.1578595182604.JavaMail.zimbra@nod.at>
In-Reply-To: <20200109191612.77d987d3@xps13>
References: <20191230165129.11925-1-miquel.raynal@bootlin.com>
 <20191230165129.11925-5-miquel.raynal@bootlin.com>
 <1518112485.16967.1578527342428.JavaMail.zimbra@nod.at>
 <20200109191612.77d987d3@xps13>
Subject: Re: [PATCH 4/8] mtd: Add support for emulated SLC mode on MLC NANDs
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: Add support for emulated SLC mode on MLC NANDs
Thread-Index: hu4iLZH3FpFbv8d86kx9KrLf5rjVEA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_103948_906135_6BB54B71 
X-CRM114-Status: UNSURE (   5.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 Boris Brezillon <boris.brezillon@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

TWlxdWVsLAoKLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBJIHN1Z2dlc3QgZ2l2
aW5nIGEgbmFtZSB3aGljaCBpbmRpY2F0ZXMgdGhhdCB3ZSBhcmUgYWN0dWFsbHkgZW11bGF0aW5n
Cj4+IGFuIFNMQy4gTWF5YmUgTVREX1NMQ19FTVVMQVRJT04/Cj4+IFNvbWUgTUxDIE5BTkRzIHN1
cHBvcnQgU0xDIG1vZGUgaW4gaGFyZHdhcmUsIE1URF9NTENfSU5fU0xDX01PREUgcmVhZHMgbGlr
ZQo+PiB0aGlzIGZlYXR1cmUuCj4gCj4gWW91J3JlIHJpZ2h0LiBXaGF0IGFib3V0IE1URF9TTENf
T05fTUxDX0VNVUxBVElPTj8KCk1ha2VzIHNlbnNlLgogIAo+PiBUaGUgbmFtZSBpcyBtaXNsZWFk
aW5nLiBXZSBkb24ndCBkbyBPT0IgSU8gb24gYSBTTEMgTkFORCwKPj4gd2UgZW11bGF0ZSBTTEMu
Cj4gCj4gV2hhdCB3b3VsZCB5b3UgcmVjb21tZW5kPyBtdGRfb29iX2lvX2VtdWxfc2xjPwoKWWVz
LiBMZXQncyB1c2UgImVtdWxfc2xjIiB0byBpbmRpY2F0ZSBTTEMgZW11bGF0aW9uLgoKVGhhbmtz
LAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
