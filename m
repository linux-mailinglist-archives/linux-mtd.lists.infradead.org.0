Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAE780B3C
	for <lists+linux-mtd@lfdr.de>; Sun,  4 Aug 2019 16:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiIHda0zdNDpIdPo/CDMpYjAIlyueL1kSslnWk5025I=; b=Pdl3H4mMkNVhrT
	q7NKGrjyJxPDZ/qwpsjrZHhNROAZdfiZLAsq3llZEywoDByk8QtP4DFRXvcKEV63a260i9Lq7WyeF
	n3JC6dhRPSyXd1yaISh/Xuwc+FlezMbBp9PPqO1cyHzkd7I54g/i6by4ZoTH0LeEFE4Km+yGEQb33
	wQ7bwa4ROzeTPWKi0Igzpad6/HRWkt6fq1cByOcPYSWLOBDIgGTpEToN1BqHn7TSvVtUhoq4zGqYm
	yvejajhi/OzOAtchpigVguwy4MzKOKRdJKGqwbZcTonhKceEKAuveqcK2n95S8kg1JCcm0XPtGu1i
	TF1oGqAelOBZTBEZ2rOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huHcg-0005Pb-7g; Sun, 04 Aug 2019 14:36:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huHcY-0005PH-RG
 for linux-mtd@lists.infradead.org; Sun, 04 Aug 2019 14:36:28 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x74Ea95C075291;
 Sun, 4 Aug 2019 09:36:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564929369;
 bh=8BzlrKnj/hLUiH+Pk7bowEUPEEAYuQSat8sKNXt0UCU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=oD5jehUM3TY4WdrKiVlJ7cza1+WFPLQvez4n6S+gKwPS3XVrUQI9RGOq8P4Vtgen4
 xhvvvLb3PItlHbFm7KULgbqSlGFLqF0aa9qiR7F27ZFe+WCI0lgYNd78IJfBaZdshB
 pXxRwWAwsMxueG1vH4xC9y/buffwlRf/DbCHDTWc=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x74Ea9KF058453
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 4 Aug 2019 09:36:09 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 4 Aug
 2019 09:36:09 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 4 Aug 2019 09:36:09 -0500
Received: from [10.250.133.238] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x74Ea6R8120595;
 Sun, 4 Aug 2019 09:36:06 -0500
Subject: Re: [PATCH 6/7] mtd: spi-nor: Rework the SPI NOR lock/unlock logic
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>
References: <20190731090315.26798-1-tudor.ambarus@microchip.com>
 <20190731090315.26798-7-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <21112f0c-abf0-2b86-5847-2ad7676a29be@ti.com>
Date: Sun, 4 Aug 2019 20:06:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731090315.26798-7-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_073626_992968_5C492E84 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: richard@nod.at, linux-kernel@vger.kernel.org, boris.brezillon@bootlin.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Tudor,

On 31-Jul-19 2:33 PM, Tudor.Ambarus@microchip.com wrote:
> From: Boris Brezillon <boris.brezillon@bootlin.com>
> 
> Move the locking hooks in a separate struct so that we have just
> one field to update when we change the locking implementation.
> 
> stm_locking_ops, the legacy locking operations, can be overwritten
> later on by implementing manufacturer specific default_init() hooks.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
> [tudor.ambarus@microchip.com: use ->default_init() hook]
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

[...]

> @@ -1782,7 +1788,7 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>  	if (ret)
>  		return ret;
>  
> -	ret = nor->flash_is_locked(nor, ofs, len);
> +	ret = nor->locking_ops->is_locked(nor, ofs, len);
>  
>  	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
>  	return ret;
> @@ -4805,6 +4811,10 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	nor->quad_enable = spansion_quad_enable;
>  	nor->set_4byte = spansion_set_4byte;
>  
> +	/* Default locking operations. */
> +	if (info->flags & SPI_NOR_HAS_LOCK)
> +		nor->locking_ops = &stm_locking_ops;
> +

This condition is different than how lock/unlock ops are populated
today. We would need to add SPI_NOR_HAS_LOCK to all SNOR_MFR_ST and
SNOR_MFR_MICRON entries to be backward compatible or keep the condition
as is.

>  	/* Init flash parameters based on flash_info struct and SFDP */
>  	spi_nor_init_params(nor, &params);
>  
> @@ -4819,21 +4829,6 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	mtd->_read = spi_nor_read;
>  	mtd->_resume = spi_nor_resume;
>  
> -	/* NOR protection support for STmicro/Micron chips and similar */
> -	if (JEDEC_MFR(info) == SNOR_MFR_ST ||
> -	    JEDEC_MFR(info) == SNOR_MFR_MICRON ||
> -	    info->flags & SPI_NOR_HAS_LOCK) {
> -		nor->flash_lock = stm_lock;
> -		nor->flash_unlock = stm_unlock;
> -		nor->flash_is_locked = stm_is_locked;
> -	}
> -

[...]

> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index a434ab7a53e6..bd68ec5a10e7 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -425,9 +425,23 @@ struct spi_nor {
>  	int (*set_4byte)(struct spi_nor *nor, bool enable);
>  	int (*clear_sr_bp)(struct spi_nor *nor);
>  
> +	const struct spi_nor_locking_ops *locking_ops;
> +

Also, to be consistent, document this new member.


>  	void *priv;
>  };
>  
> +/**
> + * struct spi_nor_locking_ops - SPI NOR locking methods
> + * @lock: lock a region of the SPI NOR
> + * @unlock: unlock a region of the SPI NOR
> + * @is_locked: check if a region of the SPI NOR is completely locked
> + */
> +struct spi_nor_locking_ops {
> +	int (*lock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
> +	int (*unlock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
> +	int (*is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);

checkpatch does not like uint64_t. Please changes these to size_t

Regards
Vignesh


> +};
> +
>  static u64 __maybe_unused
>  spi_nor_region_is_last(const struct spi_nor_erase_region *region)
>  {
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
