Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16EC1DA67A
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 02:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CKqPDGSNPPuHG8hF0UKKcrFDlpCkKLDLvY+neUexhB0=; b=G1KEzX6BOscR+2dHkm5mJlqcO
	qnyTiZ+EFRIruQz4TG2bmbzIONulndptx5GxC0X42glkvtpYFbAR0Sp/zPnxLlsWkZDuwe+qXNaOZ
	tOWrn5x3tioOTb+xc0cSkfOM1Xb0Dayf7UG+cTqHE00o7JAcOGfYSRxxQpV/REfCGkFtlj5Lx6GbZ
	sR9ZZ2tH6J14HJ9Mhr3w5RpJLmvD5tuu6cYpRlvDKFwKWPyE6pnxohxtfXl1IQIdyYJHJVnJF3Dbw
	dm43yMXby+lg1cmoYxUMz7nsvp1YM4ZYc3N7nVjsnaVKXlhOZImgIU4hzI1EZpU0uMsUpWEBH9pEc
	EjGK5Ot8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCYB-0007b7-Fh; Wed, 20 May 2020 00:25:35 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCY0-0007af-C3
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 00:25:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1589934322; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I7AwvCtB1QUal3/NGWrqtWi3IGaVg+1bWt/HFkMKu/E=;
 b=ruGAnAg3O7kRyBRXucEQgxm2vw3f7nstuQn1Dx6Q63V6jqQ3A8orguyJz+I61tAQI4DTB6
 cp8ITtjx2l1yFQ6qX4fOb92vzgu+NV3XmYHLLWWh1FRP1xgG0ZS5Nl6Ee875RDW8wy68WB
 8DWma5botrwtX4Yc/KC+36gSN6aieI4=
Date: Wed, 20 May 2020 02:25:12 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v2 1/4] dt-bindings: mtd: rawnand: ingenic: Clarify the
 active state of the RB pin
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-Id: <06TLAQ.BLU7G36K5D91@crapouillou.net>
In-Reply-To: <20200519232454.374081-1-boris.brezillon@collabora.com>
References: <20200519232454.374081-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_172524_599070_78E1D54F 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 Harvey Hunt <harveyhuntnexus@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris,

This .txt file is going away, so there's no need to apply this one =

patch.

I Cc'd you on the V2 of the patchset that drops this file.

-Paul


Le mer. 20 mai 2020 =E0 1:24, Boris Brezillon =

<boris.brezillon@collabora.com> a =E9crit :
> Let's make things consistent with other bindings and clarify the
> expected active state.
> =

> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
> Changes in v2:
> * New patch
> ---
>  Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git =

> a/Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt =

> b/Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt
> index c02259353327..4cbe13f94564 100644
> --- a/Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt
> +++ b/Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt
> @@ -30,7 +30,8 @@ Optional children node properties:
>  - nand-ecc-strength: ECC strength (max number of correctable bits).
>  - nand-ecc-mode: String, operation mode of the NAND ecc mode. "hw" =

> by default
>  - nand-on-flash-bbt: boolean to enable on flash bbt option, if not =

> present false
> -- rb-gpios: GPIO specifier for the busy pin.
> +- rb-gpios: GPIO specifier for the ready/busy pin. The active state =

> (ready)
> +            should be high unless the signal is inverted.
>  - wp-gpios: GPIO specifier for the write protect pin.
> =

>  Optional child node of NAND chip nodes:
> --
> 2.25.4
> =




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
