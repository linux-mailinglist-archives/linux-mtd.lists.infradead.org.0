Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD5F63B71
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jul 2019 20:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raEOgWAGnNsAQnpb/Da/52VREtghL18Gm23m1yfisSY=; b=pKsvN7qCexsR5A
	sDO1dRZREriGG0TdYK0UQo5V4ahkJdhYcUh5o7QE99c8feeCa65uhNd4DEiacSzlvi/VesrCK2wyp
	7erQ8teRDCgLBhEvjXKNbsrhc3JGTK1upS8FWQ0ScONqZFzTmaBowt3F+R6+DlikBsBHjZnLzX6VD
	470pMemwWibCxS85XCdnhS2CmZvaDLqp2hqkZO/f3VUysE2MEcnNXt9wr9neT10LIjvYTf8/EHv/h
	l+6CvC5w8s6czH0ulYnb9toBs8/Ni27+HkjUJ6xY9bXAwRSxlFjGe6+JqPwjgL2t6gbycSfvIxHbH
	w+JO5Y3xkDyg7+9LuOcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkvFo-0000Ng-6C; Tue, 09 Jul 2019 18:54:16 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkvFf-0000NJ-D8
 for linux-mtd@lists.infradead.org; Tue, 09 Jul 2019 18:54:08 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 6B5465C072A;
 Tue,  9 Jul 2019 20:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1562698445;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LK+Adb725ZjH4DbihgZdbmF2ZTqv6ZhFTilAQoLTCrc=;
 b=JxcVs2SqjAMcJLrzHV4oGC+s74UqUO4yFkFvkPbThzdylyV+bKGi1MSAWjys/oR+tPlo6S
 c9VsSgxTTya8QISWeT+uOEYE8pAXuuY9JHzlqk6Bo8HH6o/chKPZZwQUgFabtTckFO+YX3
 Mi3tQweENDmgWQyAR8Da5ZWbKROveHU=
MIME-Version: 1.0
Date: Tue, 09 Jul 2019 20:54:05 +0200
From: Stefan Agner <stefan@agner.ch>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] mtd: rawnand: vf610_nfc: Add of_node_put() before goto
In-Reply-To: <20190709170837.13315-1-nishkadg.linux@gmail.com>
References: <20190709170837.13315-1-nishkadg.linux@gmail.com>
Message-ID: <d28641662420b0a10fbf2a238a3dd056@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_115407_597123_EA544D31 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vigneshr@ti.com, richard@nod.at, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 2019-07-09 19:08, Nishka Dasgupta wrote:
> Each iteration of for_each_available_child_of_node puts the previous
> node, but in the case of a goto from the middle of the loop, there is no
> put, thus causing a memory leak. Hence add an of_node_put before the
> goto.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Looks good to me:

Reviewed-by: Stefan Agner <stefan@agner.ch>

--
Stefan

> ---
>  drivers/mtd/nand/raw/vf610_nfc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mtd/nand/raw/vf610_nfc.c b/drivers/mtd/nand/raw/vf610_nfc.c
> index e4fe8c4bc711..6b399a75f9ae 100644
> --- a/drivers/mtd/nand/raw/vf610_nfc.c
> +++ b/drivers/mtd/nand/raw/vf610_nfc.c
> @@ -862,6 +862,7 @@ static int vf610_nfc_probe(struct platform_device *pdev)
>  				dev_err(nfc->dev,
>  					"Only one NAND chip supported!\n");
>  				err = -EINVAL;
> +				of_node_put(child);
>  				goto err_disable_clk;
>  			}

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
