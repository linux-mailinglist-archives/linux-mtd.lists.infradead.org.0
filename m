Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E259138CEC
	for <lists+linux-mtd@lfdr.de>; Mon, 13 Jan 2020 09:32:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVwHhQrRNANLxTrnQjoIKMOqeOd2owEbW4/UQZ3s9vU=; b=qKqdstCWIVea4u
	cq3YgoR5Z6oRyIS7eAd0jBo8zRFzBGUzXSWnkrTLkrmo0c0RuURHWCrLsRpzfsAR6lUgtf6L5PJcR
	1vHg+F9JhcKz56ieZDBSCe38xTHACzs9kkyzGef9BWrgpfHM5eYhum7lf6PKREQw54+aILwtAHDBV
	EfJxpUdJ2SCAaz6JUxxL9prtfcYLCvaoeCOZTGZ8YEiwJf2I2nkeOkvPXcCTxDvJs2tIEp378ZsZD
	H5OIOk5RiTg5PefeKP83K7I65y5CqIvN9BqsxqSRFvYAhrV9ytQVtoomaucrxIpq5s5FkT/mGHSc9
	bG9r4i9TJX9es3KJiyvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqv9D-0007tD-SV; Mon, 13 Jan 2020 08:32:31 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqv7W-0006af-KS
 for linux-mtd@lists.infradead.org; Mon, 13 Jan 2020 08:30:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 2251A6088971;
 Mon, 13 Jan 2020 09:30:45 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 4jK4EvQWYVfE; Mon, 13 Jan 2020 09:30:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id C7D506088973;
 Mon, 13 Jan 2020 09:30:44 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id M1ZKNBdCt1H8; Mon, 13 Jan 2020 09:30:44 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id A2E016088971;
 Mon, 13 Jan 2020 09:30:44 +0100 (CET)
Date: Mon, 13 Jan 2020 09:30:44 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: liu song11 <liu.song11@zte.com.cn>
Message-ID: <646354604.19725.1578904244502.JavaMail.zimbra@nod.at>
In-Reply-To: <202001131616025809130@zte.com.cn>
References: <20191216154441.6648-1-fishland@aliyun.com,
 202001131229371470661@zte.com.cn,
 1681702500.19692.1578902048331.JavaMail.zimbra@nod.at>
 <202001131616025809130@zte.com.cn>
Subject: Re: [PATCH] ubifs: Fix potentially out-of-bounds memory access
 inubifs_dump_node
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubifs: Fix potentially out-of-bounds memory access
 inubifs_dump_node
Thread-Index: wsuu19fXf87wL8iNmMhS98osXESf9A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_003047_043596_6CF5EB78 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 jiang xuexin <jiang.xuexin@zte.com.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IEFsdGhvdWdoIHRoaXMgd2lsbCBjaGFu
Z2UgYSBiaXQgbW9yZSwgYnV0IHRoZSBmdW5jdGlvbiBvZiBkdW1waW5nIGRhdGEgaXMKPiByZXRh
aW5lZCwKPiBJIHdpbGwgbW9kaWZ5IGl0IGFzIHN1Z2dlc3RlZCBhbmQgdHJ5IHRvIHN1Ym1pdCBh
IHBhdGNoLCB0aGFua3MuCgpTdXJlIGJ1dCB0aGUgbW9zdCBjb21tb24gYW5kIGltcG9ydGFudCBj
YXNlIGlzIGdvb2QgdGhlbi4KaW4gZnMvdWJpZnMvZmlsZS5jIHdlIHVzZSBhIGZpeGVkIGJ1ZmZl
ciBzaXplIG9mIFVCSUZTX01BWF9EQVRBX05PREVfU1oKdG8gZGVhbCB3aXRoIGRhdGEgbm9kZXMu
IFNvLCBkdW1waW5nIGlzIHNhZmUuCgpJZiB3ZSBkb24ndCBrbm93IHRoZSBidWZmZXIgc2l6ZSBm
b3IgbWlub3IgY2FzZXMsIG5vdCBhIGJpZyBkZWFsLgpTdGlsbCBiZXR0ZXIgdGhhbiBnaXZpbmcg
dXAgdGhlIGZlYXR1cmUgY29tcGxldGVseS4KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRp
c2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbXRkLwo=
