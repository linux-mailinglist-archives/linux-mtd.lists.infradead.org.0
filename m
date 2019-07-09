Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1191163B50
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jul 2019 20:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZuUuLkPfZHrkxXWQ6fK7Q23+HflB1btDx3SMLpsZLs=; b=XcN/zNXWlCjjip
	Ql2H/pT0I0JToJ0cedDhD6Liuw9i9qujFYl20rGdkcC9TA+aE4bbiO/6UTbIn8szQYrEi7e3M8DQY
	0PBgg4rZq4cB2PYPpjcjQbHnSAH6CkBJy5lIDjs60wMPlbaFhFwen2NCP7gB8mqd5N7gr904LgmKL
	B/AB+z8r0264DhgZlKAPj2jMx1jSsXwbE4jgNQO8kL9bxMwyl8OXRcwZMZjbRmqHj/p8kgC2HMjQx
	GCPlk1s7CMVyow7HR76UwshFUG+5mVsx9qnnRf1XKDCjWKSXgeUxbyIKXXjTyGtJj9/lQDKgY3MuE
	1PJt6xRomia16tQAhKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkv59-0004jQ-S1; Tue, 09 Jul 2019 18:43:15 +0000
Received: from unicorn.mansr.com ([2001:8b0:ca0d:8d8e::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkv4s-0004aA-3L
 for linux-mtd@lists.infradead.org; Tue, 09 Jul 2019 18:42:59 +0000
Received: by unicorn.mansr.com (Postfix, from userid 51770)
 id 636F21539B; Tue,  9 Jul 2019 19:42:48 +0100 (BST)
From: =?iso-8859-1?Q?M=E5ns_Rullg=E5rd?= <mans@mansr.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] mtd: rawnand: tango: Add of_node_put() before return
References: <20190709171316.13451-1-nishkadg.linux@gmail.com>
Date: Tue, 09 Jul 2019 19:42:48 +0100
In-Reply-To: <20190709171316.13451-1-nishkadg.linux@gmail.com> (Nishka
 Dasgupta's message of "Tue, 9 Jul 2019 22:43:16 +0530")
Message-ID: <yw1xtvbvf3rr.fsf@mansr.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_114258_337137_7F921E8A 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: vigneshr@ti.com, marc.w.gonzalez@free.fr, richard@nod.at,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Nishka Dasgupta <nishkadg.linux@gmail.com> writes:

> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a return from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the return.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/mtd/nand/raw/tango_nand.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/mtd/nand/raw/tango_nand.c b/drivers/mtd/nand/raw/tan=
go_nand.c
> index b3f2cabcc7c0..9acf2de37ee0 100644
> --- a/drivers/mtd/nand/raw/tango_nand.c
> +++ b/drivers/mtd/nand/raw/tango_nand.c
> @@ -659,6 +659,7 @@ static int tango_nand_probe(struct platform_device *p=
dev)
>  		err =3D chip_init(&pdev->dev, np);
>  		if (err) {
>  			tango_nand_remove(pdev);
> +			of_node_put(np);
>  			return err;
>  		}
>  	}
> -- =


Acked-by: Mans Rullgard <mans@mansr.com>

-- =

M=E5ns Rullg=E5rd

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
