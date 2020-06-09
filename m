Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2492D1F3927
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jun 2020 13:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/LlnKkSSjZlfQgZJHhfsAa4A7C7HR3WfB6YePOmWAVc=; b=tPLGbmN4HwRKA4
	so6K675pPPNycwYDx6pyl5XmpO73JwnwUksHRKUNjsE2wcjGHST48Wn2RzSMBSRDgBLvTHc3cQyQk
	4xJsPv+YZ9xrCd2znTcaES2rVEWfLRlXZUwy0c5PBUNux6Z2+e4YAKossxGDLtvU4bqS6+ro3uX9f
	yQjLOs6lQoDgqL22QeiH1mKWH2MMK4AzBww52AUxYSbaTpiFMO15Qy10ZX25Z1wburQ7ciMFhnTa1
	NrcQxnoYq+YTJP5Y4c3Ja0Ll7HBsmkbFpKuLMxCSFiyoomBEI/I1WIIlU7XZoQg9ZcQBvLLej5xk8
	hAacB9RaZw1S1uwzs3qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicAY-000398-Cs; Tue, 09 Jun 2020 11:11:50 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jic9y-0002oc-V4
 for linux-mtd@lists.infradead.org; Tue, 09 Jun 2020 11:11:16 +0000
Received: from unknown (HELO ironmsg04-sd.qualcomm.com) ([10.53.140.144])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 09 Jun 2020 04:11:04 -0700
Received: from sivaprak-linux.qualcomm.com ([10.201.3.202])
 by ironmsg04-sd.qualcomm.com with ESMTP; 09 Jun 2020 04:11:02 -0700
Received: by sivaprak-linux.qualcomm.com (Postfix, from userid 459349)
 id A9CE021810; Tue,  9 Jun 2020 16:41:00 +0530 (IST)
From: Sivaprakash Murugesan <sivaprak@codeaurora.org>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 peter.ujfalusi@ti.com, sivaprak@codeaurora.org,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 0/2] Fix issues related to register access in IPQ NAND
Date: Tue,  9 Jun 2020 16:40:54 +0530
Message-Id: <1591701056-3944-1-git-send-email-sivaprak@codeaurora.org>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_041115_032001_7D1B2151 
X-CRM114-Status: UNSURE (   5.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Ym9vdGxvYWRlcgoKW1YyXQogKiBBcyBwZXIgcmV2aWV3IGNvbW1lbnRzIGZyb20gTWlxdcOobCBz
cGxpdCB0aGUgb3JpZ2luYWwgcGF0Y2ggaW50byB0d28KICAgYWRkcmVzc2luZyBpbmRlcGVuZGVu
dCBpc3N1ZXMuICAKClNpdmFwcmFrYXNoIE11cnVnZXNhbiAoMik6CiAgbXRkOiByYXduYW5kOiBx
Y29tOiByZW1vdmUgd3JpdGUgdG8gdW5hdmFpbGFibGUgcmVnaXN0ZXIKICBtdGQ6IHJhd25hbmQ6
IHFjb206IHNldCBCQU0gbW9kZSBvbmx5IGlmIG5vdCBzZXQgYWxyZWFkeQoKIGRyaXZlcnMvbXRk
L25hbmQvcmF3L3Fjb21fbmFuZGMuYyB8IDExICsrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKLS0gCjIuNy40CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW10ZC8K
