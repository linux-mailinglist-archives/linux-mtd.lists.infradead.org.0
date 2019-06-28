Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56E159460
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 08:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KROq1GFsToUJa5w0cj5b1X3Fdi7FyAF8aQeTs3v9e4w=; b=MJS/R+dTarn659
	h5PoNurt12rFdcXvUWN/JDIhfRKpevi7sS6vNGTSGjaTswI2e+5WPtJn3OCjgppm/sVoVDpjWAgoY
	53oBbs2Zv64wy6RIae+Lb0A1uL54FGED/ZqhoeK5kzDAnwSYH5etDOaAqynclod6lovLFRal2RW1b
	u9hh0OxEXX72rzZGSeOVt61ihsf/ewOTEa9S1NlpDPdBMtAwYJgAocLNOY4pYoKxC117EJXXGycG/
	hn476nkVf21qCkQ9oMokQTVTY1al82OijoAcJBCLcXHRu30n/SApJpA5C9d9iw2KhoM3/bOohb/HZ
	pcFaRcaOI07fT2z1r7dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkgd-0002Wh-TH; Fri, 28 Jun 2019 06:48:43 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkgS-0002Vn-G4
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 06:48:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id CEDF46089331;
 Fri, 28 Jun 2019 08:48:28 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 3lpGg--qV6w5; Fri, 28 Jun 2019 08:48:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 817816089332;
 Fri, 28 Jun 2019 08:48:28 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id vZ0P4sgDZbfv; Fri, 28 Jun 2019 08:48:28 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 46B946089331;
 Fri, 28 Jun 2019 08:48:28 +0200 (CEST)
Date: Fri, 28 Jun 2019 08:48:28 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: chengzhihao1@huawei.com
Message-ID: <455367016.19242.1561704508169.JavaMail.zimbra@nod.at>
In-Reply-To: <1561698143-5027-1-git-send-email-chengzhihao1@huawei.com>
References: <1561698143-5027-1-git-send-email-chengzhihao1@huawei.com>
Subject: Re: [PATCH RFC] mtd: ubi: Add fastmap sysfs attribute
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: Add fastmap sysfs attribute
Thread-Index: LGtMcgAbFQrQ8WTgV4gLe2Q2i5xyZw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_234832_687970_CCA7CE2F 
X-CRM114-Status: UNSURE (   3.77  )
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
Cc: boris brezillon <boris.brezillon@free-electrons.com>,
 david <david@sigma-star.at>, yi zhang <yi.zhang@huawei.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 david oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

WmhpaGFvIENoZW5nLAoKLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+ICsJZWxzZSBp
ZiAoYXR0ciA9PSAmZGV2X2Zhc3RtYXApCj4gKwkJcmV0ID0gc3ByaW50ZihidWYsICIlZFxuIiwg
dWJpLT5mbSA/IDEgOiAwKTsKPiAJZWxzZQoKSSBmZWFyIHRoaXMgaXMgbm90IGNvcnJlY3QuIHVi
aS0+Zm0gaXMgYW4gaW50ZXJuYWwgZGF0YSBzdHJ1Y3R1cmUKb2YgVUJJLgpVQkkgc2V0cyBpdCB0
byBOVUxMIHdoaWxlIGl0IHVwZGF0ZXMgZmFzdG1hcCwgYW5kIHVwZGF0ZXMgaXQgbGF0ZXIuClNv
IHVzZXJzcGFjZSB3b3VsZCBzZWUgZmFsc2UgbmVnYXRpdmVzLgoKVGhhbmtzLAovL3JpY2hhcmQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
