Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A4E1A47F7
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Apr 2020 17:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z/xF1MZ03HTVbRAOAogBOownewVjrIasxCYqp4hVrf0=; b=QndUItQN6o6zcWC+uXLrhAx+8
	7KHQTBh75FctqIroB0jV65wynYfD6pa7MQhxr/jqQBurnMEX7sMFEwlpFhvysin0okerWytN+oabR
	bwbwORP/mAhbs0HNIRsQdNlgRcHsm58b4DXGrOnRrzKvDYFXixXGS3/Eba49WUh3AdLh163JwmRpU
	e4rodh1YW1ym15VfH5/B8yaLR1je3HZ1h+hDJveshebedJCkHOPrflaTdGnaEizqd+Hgt0qQhxBe2
	1ZhkCKga9sPjDSp9KwLhQ7RXLEq8C5HWzCYEQ4rSHrIQiGySZWlnL8BcJCyiEmHcUM5och7sGupii
	jV1aef4aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMvt7-0004Zl-No; Fri, 10 Apr 2020 15:48:13 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMvt0-0004Wq-IU
 for linux-mtd@lists.infradead.org; Fri, 10 Apr 2020 15:48:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1586533680; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IgVzhPly5FEi+c3/GGjWqSgSoJN2sPkkou5rqDHSXY4=;
 b=OZ2HJqEEtWwhfmX3D0AqVtwR8TtRxEWyUxcPFGX/d7O2fix7LtZqz+OxvPvuBKzrlxGo5Q
 nnVelxkYbjUP4C2xPckbwXhJ79ekHhdjZBkqOZ/f+WVeUasNkFSubV5xkkzB7lmnF1XtdM
 qJtUtLNxsd2/DdH1H/dJPX4pbnNfeD4=
Date: Fri, 10 Apr 2020 17:47:50 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH -next] mtd: rawnand: ingenic: Make qi_lb60_ooblayout_ops
 static
To: YueHaibing <yuehaibing@huawei.com>
Message-Id: <Q7XK8Q.LJL60QVBDX02@crapouillou.net>
In-Reply-To: <20200410115121.11852-1-yuehaibing@huawei.com>
References: <20200410115121.11852-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_084806_792859_D1A78584 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: vigneshr@ti.com, richard@nod.at, linux-kernel@vger.kernel.org,
 harveyhuntnexus@gmail.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

Le ven. 10 avril 2020 =E0 19:51, YueHaibing <yuehaibing@huawei.com> a =

=E9crit :
> Fix sparse warning:
> =

> drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c:105:32:
>  warning: symbol 'qi_lb60_ooblayout_ops' was not declared. Should it =

> be static?
> =

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Paul Cercueil <paul@crapouillou.net>

Thanks!
-Paul

> ---
>  drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c =

> b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
> index 935c4902ada7..e7bd845fdbf5 100644
> --- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
> +++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
> @@ -102,7 +102,7 @@ static int qi_lb60_ooblayout_free(struct mtd_info =

> *mtd, int section,
>  	return 0;
>  }
> =

> -const struct mtd_ooblayout_ops qi_lb60_ooblayout_ops =3D {
> +static const struct mtd_ooblayout_ops qi_lb60_ooblayout_ops =3D {
>  	.ecc =3D qi_lb60_ooblayout_ecc,
>  	.free =3D qi_lb60_ooblayout_free,
>  };
> --
> 2.17.1
> =

> =




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
