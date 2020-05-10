Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056111CCE3E
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 23:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDKpapGq/+5f+NbkKvfGA9jYR+BRjTZ9mjTqemjXZ3Q=; b=vEESgXXW6pfyGk
	S7gkdaZ4WTaPi8idIwd4+QOL/yyQuEj7IQjyMsQZoy9JtaBCYZUqDotWS6qWtNoagG24UDfmYhUgJ
	hinYDWs5PQR9J7i0GfPs29Rr+wobL6NiRd676LWVHYPAzugY4trpJdnAeciUsyMVZX2P+qfsW0Q/B
	rACA9+wpI2BtFCj1gM50koTNMy8lbW/OIWaJLRH3eU6J+bxXScj+h0iopOnmj8GHCrjcv8aolUeeb
	FNsGlDHl+idbu+jKqgsiIarXq1CWQqcrCXsJXCaqhx8ooEP+iswB0fu20n7EGxYLhxacMFeO7G2tB
	ZjiKAxWDjsu6HRucTfrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXtlA-0008Bc-KU; Sun, 10 May 2020 21:45:20 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXtkz-0007He-RN
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 21:45:11 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 00ABA200003;
 Sun, 10 May 2020 21:45:06 +0000 (UTC)
Date: Sun, 10 May 2020 23:45:05 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 18/19] mtd: rawnand: cafe: Drop the
 cafe_{readl,writel}() wrappers
Message-ID: <20200510234505.0a211295@xps13>
In-Reply-To: <20200505101353.1776394-19-boris.brezillon@collabora.com>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
 <20200505101353.1776394-19-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_144510_042398_9BBE28A9 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Lubomir Rintel <lkundrak@v3.sk>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Tue,  5 May
2020 12:13:52 +0200:

> Given how long this driver has been there we can safely assume that
> nobody cares about PIO support. Getting rid of these macros allows for
> easy register name greping.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Suggested-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
> Changes in v2:
> * New patch
> ---

I don't understand the need for this kind of macro really...

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
