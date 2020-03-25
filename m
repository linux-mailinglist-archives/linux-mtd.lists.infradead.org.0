Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0E91927E7
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 13:13:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PijlrXnC7Y0/po+0ZAQba1VcNI0zrtgjaFvRUmKvRA=; b=liQGcR9G4Xb9pM
	HgV+tp/kVBqgPdcbuVyX9mCrbEBEr8ccMJ5nDtZ0hbNmHEwZrKZoVQY1kH3uzZS+Ycnee4CMm0w/l
	chz2mutSP2kK/npto/5m4CcSIxSHRSttZBNJmkX+di6H8tEg5ZJCnCxEqy3gpHtfSrgXgTjMi1U9X
	soEN/CMRyd5rEgTXoGIZboHaE6si/DGq0AGq3i9lEpAYx9l3joD896ZvxDRLH6M3AteMw2T1xiUY9
	QnyHJuD2JCzJ++z64IR+wnFf6xZ5nvY6Iz0VC8dTsvBCu+hfY/Y3yxkimtT5rhckfgx19mv2Rv8JA
	hY7nX6+R1iumlh6gipVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4ts-0005aK-5B; Wed, 25 Mar 2020 12:12:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4tk-0005Zr-Tj
 for linux-mtd@lists.infradead.org; Wed, 25 Mar 2020 12:12:42 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E40AD293500;
 Wed, 25 Mar 2020 12:12:34 +0000 (GMT)
Date: Wed, 25 Mar 2020 13:12:32 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] mtd: Convert fallthrough comments into statements
Message-ID: <20200325131232.46053ff8@collabora.com>
In-Reply-To: <20200324222538.16446-1-miquel.raynal@bootlin.com>
References: <20200324222538.16446-1-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_051241_087952_8C7C424E 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Joe Perches <joe@perches.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 23:25:38 +0100
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Use Joe Perches cvt_fallthrough.pl script to convert "/* fallthrough
> */" comments (and its derivativs) into a "fallthrough;"

			^derivatives

> statement. This automatically drops useless ones.
> 
> Do it MTD-wide.
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
