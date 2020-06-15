Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FF41F94F5
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jun 2020 12:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h60ZZtLsqg92ENGTmsqOLt2+FYKaZ7LFtgsDsgkgx1w=; b=Te+fBBwMjWqRjv
	9EJvfLI7ER/ozAtg5jC2XwfGIv037ujKMPxg9JR+BZtXDFkb6pdpHcxiV6IDJFHyOkW58NbFaUHYG
	Hxm5lDnSo3CDSzeG5JGIxzg0iCuOP+weA1khfM8HRLZkBjD3sSKt2qdLEFD+TwKpqpH0tdyySWD2s
	G0Djd8fcR2/pneyycRnifJ7rG6uhy4AezqwWa51F+pPT8hs9H1MJ3nJXg+eMOtUzqV9JCrlIFNCDE
	VoswAREauTw0AQmvV0uavzNxoliLaFf0uf5y9vbJXymCMomtzq2qRpdl4MHfMEwrFmFGZ6o1pnq1A
	qT7UVrUCYzuhFpHVF2kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmn8-0006sQ-UY; Mon, 15 Jun 2020 10:56:38 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmmu-0006s5-3K
 for linux-mtd@lists.infradead.org; Mon, 15 Jun 2020 10:56:25 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05FAuCCi076822;
 Mon, 15 Jun 2020 05:56:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592218572;
 bh=NbHajkPt5NiVktN3K0S4DRGJzGYkz3UHibYONS9iDP0=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=IrR6wa++jAXjdYVV7WJG/XOuubJQ/W95SWq/I4BY3hGMeMcekmtPiUs9nX79V2SuK
 ZixtOLOcVFMHmhdA4SPKbPM+vjW22eXYrDH77v4DcTyTxS6ZK2q4sKYQmCDCLQ7jfM
 8mriy+ds8eNtepneguise14NijtQC1cz+SqangZ0=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05FAuBS0029368
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 15 Jun 2020 05:56:12 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 15
 Jun 2020 05:56:11 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 15 Jun 2020 05:56:11 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05FAuA6h033053;
 Mon, 15 Jun 2020 05:56:11 -0500
Date: Mon, 15 Jun 2020 16:26:10 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Yicong Yang <yangyicong@hisilicon.com>
Subject: Re: [RFC PATCH v2 2/2] mtd: spi-nor: Disable the flash quad mode in
 spi_nor_restore()
Message-ID: <20200615105608.g6j7a2owfjod44xg@ti.com>
References: <1589282819-42358-1-git-send-email-yangyicong@hisilicon.com>
 <1589282819-42358-3-git-send-email-yangyicong@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589282819-42358-3-git-send-email-yangyicong@hisilicon.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_035624_225845_7FC75795 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: vigneshr@ti.com, sergei.shtylyov@cogentembedded.com,
 tudor.ambarus@microchip.com, richard@nod.at, me@yadavpratyush.com,
 john.garry@huawei.com, linuxarm@huawei.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, alexander.sverdlin@nokia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Yicong,

On 12/05/20 07:26PM, Yicong Yang wrote:
> If the flash's quad mode is enabled, it'll remain in the quad mode when
> it's removed. If we drive the flash next time in SPI/Dual mode, then
> problem occurs as the flash's quad enable bit is not cleared.
> 
> Disable the quad mode in spi_nor_restore(), the flash will leave
> quad mode when remove. This will make sure the flash always enter the
> correct mode when loaded.
> 
> Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
> ---
>  drivers/mtd/spi-nor/core.c | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Pratyush Yadav <p.yadav@ti.com>

Small nitpick below.
 
> diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
> index 72e8d8b..564de02 100644
> --- a/drivers/mtd/spi-nor/core.c
> +++ b/drivers/mtd/spi-nor/core.c
> @@ -3004,6 +3004,9 @@ void spi_nor_restore(struct spi_nor *nor)
>  	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES) &&
>  	    nor->flags & SNOR_F_BROKEN_RESET)
>  		nor->params->set_4byte_addr_mode(nor, false);
> +
> +	/* disable quad mode */

I don't think this comment is needed. IMO the line below makes it pretty 
clear that we want to disable quad mode.

> +	spi_nor_quad_enable(nor, false);
>  }
>  EXPORT_SYMBOL_GPL(spi_nor_restore);

-- 
Regards,
Pratyush Yadav
Texas Instruments India

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
