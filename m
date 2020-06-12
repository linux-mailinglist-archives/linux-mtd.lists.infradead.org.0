Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BE71F74ED
	for <lists+linux-mtd@lfdr.de>; Fri, 12 Jun 2020 09:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qn7sW8YLUh4SrooSUrVuCAp1PLsjU+D3JfTDuKQyMeI=; b=jXR7n+2VnaeDk5
	5dTKNgOSZ0dWBB9zm7tbm82G9GWTuotLg2qMUbN0K1h4qVj29BdplTz3TKJh29hBfMpwNMMOyasUK
	Eh9Vu5OqBsDILWPYpiHJDAafwaDD4fFeR/kOKjLKjWwlFtXtzDP3iJe8ew0H6LqUuJonBjX3zu1Eg
	aA6Y6S8qiWb0V7W5thhJXVpV1b59D0QeeAZLdNbZBIz0pOmx0T6Z9sR6LaPqoTJJAs8MLyI8NRfAG
	KOuASeobMCYeOKyEKzG2buV0rM/OI8J4anqhvoL4Ni/EPSTIKSsif8JQ3lMow9tj0ZUUwF7qZ1sp5
	EXAckkxdbnqNRQ/UDtsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjeaj-0001kv-IG; Fri, 12 Jun 2020 07:59:09 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjeaE-00019A-Dx
 for linux-mtd@lists.infradead.org; Fri, 12 Jun 2020 07:58:39 +0000
Received: from unknown (HELO ironmsg04-sd.qualcomm.com) ([10.53.140.144])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 12 Jun 2020 00:58:26 -0700
Received: from sivaprak-linux.qualcomm.com ([10.201.3.202])
 by ironmsg04-sd.qualcomm.com with ESMTP; 12 Jun 2020 00:58:23 -0700
Received: by sivaprak-linux.qualcomm.com (Postfix, from userid 459349)
 id A34822187F; Fri, 12 Jun 2020 13:28:21 +0530 (IST)
From: Sivaprakash Murugesan <sivaprak@codeaurora.org>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 peter.ujfalusi@ti.com, sivaprak@codeaurora.org,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V4 0/2] Fix issues related to register access in IPQ NAND
Date: Fri, 12 Jun 2020 13:28:14 +0530
Message-Id: <1591948696-16015-1-git-send-email-sivaprak@codeaurora.org>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_005838_510287_9963B5FE 
X-CRM114-Status: UNSURE (   4.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

UGF0Y2ggMTogYXZvaWRzIHJlZ2lzdGVyIHdyaXRlIHRvIHVuYXZhaWxhYmxlIFNGTEFTSENfQlVS
U1RfQ0ZHIHJlZ2lzdGVyClBhdGNoIDI6IHNldCBCQU0gbW9kZSBvbmx5IGlmIG5vdCBzZXQgYnkg
Ym9vdGxvYWRlcgpbVjRdCiAqIEFkZHJlc3NlZCBtb3JlIHJldmlldyBjb21tZW50cyBmcm9tIE1p
cXVlbAogKiBSZW1vdmVkIGFyY2hpdHRAY29kZWF1cm9yYS5vcmcgZnJvbSB0aGUgc2VuZGVycyBs
aXN0IGFzIGl0IGlzIGJvdW5jaW5nCltWM10KICogQWRkcmVzc2VkIHJldmlldyBjb21tZW50cyBm
cm9tIE1pcXVlbApbVjJdCiAqIEFzIHBlciByZXZpZXcgY29tbWVudHMgZnJvbSBNaXF1w6hsIHNw
bGl0IHRoZSBvcmlnaW5hbCBwYXRjaCBpbnRvIHR3bwogICBhZGRyZXNzaW5nIGluZGVwZW5kZW50
IGlzc3Vlcy4gIAoKU2l2YXByYWthc2ggTXVydWdlc2FuICgyKToKICBtdGQ6IHJhd25hbmQ6IHFj
b206IHJlbW92ZSB3cml0ZSB0byB1bmF2YWlsYWJsZSByZWdpc3RlcgogIG10ZDogcmF3bmFuZDog
cWNvbTogc2V0IEJBTSBtb2RlIG9ubHkgaWYgbm90IHNldCBhbHJlYWR5CgogZHJpdmVycy9tdGQv
bmFuZC9yYXcvcWNvbV9uYW5kYy5jIHwgMTEgKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgotLSAKMi43LjQKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbXRkLwo=
