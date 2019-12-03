Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557DB10FA7A
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Dec 2019 10:10:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLWIBNXmrTiuZrmKIq4YMVvX9c+SN3W7I2UvtlfsEuU=; b=WG06NI2sJBeBEI
	MERjFafZ1ca9oojYh5gc5tz/5wNLCF31lUym4Fe4C5h5XY1FtpoDL9FmxokHvSFdIHmXRQup1txYZ
	s+SUoM3gpaps59L/B6nHs4oVABPhcunEjdPLvWDKPSefYZvYohBhqsde4SAbw+WgBHNQqR4qSnfCS
	lJjxg/zPHc7hpD8IxtHBuNSaG62H5wEle3AKBT4+QMM9GLL62K3ifSQcUpPa96h/KBt5XZnrBqA8n
	yFT3TgK+K2zZ2j0owIK9LaS4dzyVl9LAWUYMr4nnSxwkjjW8ZMnLYSeivBAJX+fOEbS389N+3dCQa
	iPUFOGQI4NGU+JW3svNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic4Cg-0000in-VJ; Tue, 03 Dec 2019 09:10:42 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic4CY-0000hn-3j
 for linux-mtd@lists.infradead.org; Tue, 03 Dec 2019 09:10:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id E9DB9605A912;
 Tue,  3 Dec 2019 10:10:23 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 0EnEESTuRsEP; Tue,  3 Dec 2019 10:10:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 8DB626094C4B;
 Tue,  3 Dec 2019 10:10:23 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id td6hCF_Ij_Kf; Tue,  3 Dec 2019 10:10:23 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 6AD28605A912;
 Tue,  3 Dec 2019 10:10:23 +0100 (CET)
Date: Tue, 3 Dec 2019 10:10:23 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Naga Sureshkumar Relli <nagasure@xilinx.com>
Message-ID: <614898763.105471.1575364223372.JavaMail.zimbra@nod.at>
In-Reply-To: <MN2PR02MB57272E3343CA62ADBA0F97E5AF420@MN2PR02MB5727.namprd02.prod.outlook.com>
References: <MN2PR02MB5727000CBE70BAF31F60FEE4AF420@MN2PR02MB5727.namprd02.prod.outlook.com>
 <20191203084134.tgzir4mtekpm5xbs@pengutronix.de>
 <MN2PR02MB57272E3343CA62ADBA0F97E5AF420@MN2PR02MB5727.namprd02.prod.outlook.com>
Subject: Re: ubifs mount failure
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubifs mount failure
Thread-Index: AdWpk0w1vXoILfyXR5WMh1O5WbDMxgAIiuAAAABceaAxSwJwoQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_011034_300014_E8393CF5 
X-CRM114-Status: UNSURE (   2.81  )
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Michal Simek <michals@xilinx.com>,
 siva durga paladugu <siva.durga.paladugu@xililnx.com>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIk5hZ2EgU3VyZXNoa3VtYXIg
UmVsbGkiIDxuYWdhc3VyZUB4aWxpbnguY29tPgo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29t
L2xpbnV4L3Y1LjQvc291cmNlL2ZzL3ViaWZzL3NiLmMjTDE2NAo+IHdlIGFyZSB0cnlpbmcgdG8g
YWxsb2NhdGUgNDMyNTM3NiAofjRNQikKCjRNaUI/IElzIC0+bWluX2lvX3NpemUgdGhhdCBsYXJn
ZT8KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
