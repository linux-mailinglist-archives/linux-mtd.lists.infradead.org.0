Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA321B7BFA
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 18:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iUKvKYwm/PuqsKtYeKUASe+b7bUmLDWaEBPVMk+rZ+Q=; b=rjUlmzGD3aoW4R
	b/TNsUcGmI3UeAl3XQssoebp/kO8IyRA2vrNVLMTECOwndxHVJSq4+dWj7EmdG4wFfNNo87lJ1YLg
	D59wn5mWqxmGlviQzb8jmLCkngeRWot7dQ//2/BfaSOlgnEvdI7I4fws0LB1uxkOyrtQvMS6VDP2c
	Xp6qAM5Lj+QxgtCKeUV9bEzS25Sb14R1F8/0lI7lElHOyF53HIM3oIvdz70n/6Xqlmz6K8xbLA7eO
	kJLu+45pJ52om7x50Do8Z1hFEqtJx+dT4flwTziK9otEoQeoawdxlNYofLm8/gd5RlS8fXVhkywU/
	0xaYts8UJbbS3f6biNLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1SB-0001EG-4d; Fri, 24 Apr 2020 16:45:27 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1Rs-0008QK-Hx
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 16:45:10 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0EA1A24000C;
 Fri, 24 Apr 2020 16:45:02 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 0/6] Misc Marvell NAND controller driver changes
Date: Fri, 24 Apr 2020 18:44:55 +0200
Message-Id: <20200424164501.26719-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_094508_748480_2F57ED47 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVyZSBhcmUgYSBmZXcgY2xlYW51cHMvZml4ZXMgZm9yIHRoZSBNYXJ2ZWxsIE5BTkQgY29udHJv
bGxlcgpkcml2ZXIuIFdoaWxlIHdvcmtpbmcgb24gYW5vdGhlciBkcml2ZXIsIEkgZmlndXJlZCBz
b21lCm1pc3Rha2VzL3VuY2xlYXIgbmFtZXMgdGhhdCBJIHdhbnRlZCB0byBjaGFuZ2UuCgpDaGVl
cnMsCk1pcXXDqGwKCkNoYW5nZXMgaW4gdjI6CiogQWRkZWQgQm9yaXMnIFJldmlld2VkLWJ5Lgoq
IFVzZWQgYSBnb3RvIHN0YXRlbWVudCB0byBoYW5kbGUgdGhlIGVycm9yIHBhdGggaW4gIkZpeCBw
cm9iZSBlcnJvcgogIHBhdGgiLgoKTWlxdWVsIFJheW5hbCAoNik6CiAgbXRkOiByYXduYW5kOiBt
YXJ2ZWxsOiBGaXggdGhlIGNvbmRpdGlvbiBvbiBhIHJldHVybiBjb2RlCiAgbXRkOiByYXduYW5k
OiBtYXJ2ZWxsOiBVc2UgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3JlcygpCiAgbXRkOiByYXduYW5k
OiBtYXJ2ZWxsOiBVc2UgbmFuZF9jbGVhbnVwKCkgd2hlbiB0aGUgZGV2aWNlIGlzIG5vdCB5ZXQK
ICAgIHJlZ2lzdGVyZWQKICBtdGQ6IHJhd25hbmQ6IG1hcnZlbGw6IEZpeCBwcm9iZSBlcnJvciBw
YXRoCiAgbXRkOiByYXduYW5kOiBtYXJ2ZWxsOiBSZW5hbWUgYSBmdW5jdGlvbiB0byBjbGFyaWZ5
CiAgbXRkOiByYXduYW5kOiBtYXJ2ZWxsOiBSZW5hbWUgdGhlIC0+Y29ycmVjdCgpIGZ1bmN0aW9u
CgogZHJpdmVycy9tdGQvbmFuZC9yYXcvbWFydmVsbF9uYW5kLmMgfCA1NiArKysrKysrKysrKysr
KystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDI3IGRl
bGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
