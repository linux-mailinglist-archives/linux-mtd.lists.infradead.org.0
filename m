Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055DA47038
	for <lists+linux-mtd@lfdr.de>; Sat, 15 Jun 2019 15:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzz14ZKaEqV53sQ61rYi3SvccnTFVpv9xRifXhYNk2A=; b=Hwks4RZck0CjbE
	QsDsxz3naCX7hezZAvY25XjoILJ0jfveaaD7p3iVu2kbJFRB8Gyn0uI+qba7B/sMCihZhCStWFE3F
	5NMPQP9g55OF73xB0JRLyDVF2z1d9XLANmXFbdnTf8rmOAR4P2jr1DN86EECIPTRo8Zpujd5uJLT9
	ZPP6ML/9PF3Bgh8O1yT2wXvVt8fc29XcYfgeRag0WsZEQFdhQB7Y5MGjl4gRERrN8W2g4iBjS4xhX
	J6GOFh6jlEiyoCQ7ABBJatlNZwV/MNaopziBq9+8mvsFGpjmvCHw3bgm0ErRXenrN95VEKNpA86Qa
	zkApu+xFBd2t9P44w5ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc8x0-0007P2-0H; Sat, 15 Jun 2019 13:42:34 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc8wp-0007Ob-TP
 for linux-mtd@lists.infradead.org; Sat, 15 Jun 2019 13:42:25 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5FDgGl6116980;
 Sat, 15 Jun 2019 08:42:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560606136;
 bh=BBTpWM5W/Hl2u1EIbVstFU/QA1xtLGYLdZ9XyfhWNVc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=WbVk6i8Uvi0O7PyieRmevaCSynEH2vHXrG5m/AanI69dEoXEs4LoEKgoRgQlMszQD
 X05HZoX5GyCwIPxK/zdAgwON5ojgNO6GNmRiLQqHgKdn+8gPbm6PzBahGvbleG3Act
 FV7LzsUJfepqlr6/THoJpR3XAwolYYayzVatzqhw=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5FDgGsU078266
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 15 Jun 2019 08:42:16 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 15
 Jun 2019 08:42:16 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sat, 15 Jun 2019 08:42:15 -0500
Received: from [10.250.133.146] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5FDgDhU116351;
 Sat, 15 Jun 2019 08:42:14 -0500
Subject: Re: [PATCH v6 02/11] mtd: cfi_cmdset_0002: Remove goto statement from
 do_write_buffer()
To: Tokunori Ikegami <ikegami.t@gmail.com>
References: <20190526153904.28871-1-ikegami.t@gmail.com>
 <20190526153904.28871-3-ikegami.t@gmail.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <3ae79920-9162-63f5-e761-80df3e836519@ti.com>
Date: Sat, 15 Jun 2019 19:12:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190526153904.28871-3-ikegami.t@gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_064224_038043_E1C8909E 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org, Fabio Bettoni <fbettoni@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 26-May-19 9:08 PM, Tokunori Ikegami wrote:
> For a maintainability by reducing the goto statement remove it from
> do_write_buffer().
> 
> Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
> Cc: Fabio Bettoni <fbettoni@gmail.com>
> Co: Hauke Mehrtens <hauke@hauke-m.de>
> Co: Koen Vandeputte <koen.vandeputte@ncentric.com>
> Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> Cc: linux-mtd@lists.infradead.org
> ---
[...]
>  drivers/mtd/chips/cfi_cmdset_0002.c | 46 +++++++++++++++++++------------------
>  1 file changed, 24 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
> index 348b54820e4c..ca41f47c00c1 100755
> --- a/drivers/mtd/chips/cfi_cmdset_0002.c
> +++ b/drivers/mtd/chips/cfi_cmdset_0002.c
> @@ -1887,40 +1887,42 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
>  		 * We check "time_after" and "!chip_good" before checking "chip_good" to avoid
>  		 * the failure due to scheduling.
>  		 */
> -		if (time_after(jiffies, timeo) && !chip_good(map, adr, datum))
> +		if (time_after(jiffies, timeo) && !chip_good(map, adr, datum)) {
> +			ret = -EIO;
>  			break;
> +		}
>  
>  		if (chip_good(map, adr, datum)) {
>  			xip_enable(map, chip, adr);
> -			goto op_done;
> +			break;
>  		}
>  
>  		/* Latency issues. Drop the lock, wait a while and retry */
>  		UDELAY(map, chip, adr, 1);
>  	}
>  
> -	/*
> -	 * Recovery from write-buffer programming failures requires
> -	 * the write-to-buffer-reset sequence.  Since the last part
> -	 * of the sequence also works as a normal reset, we can run
> -	 * the same commands regardless of why we are here.
> -	 * See e.g.
> -	 * http://www.spansion.com/Support/Application%20Notes/MirrorBit_Write_Buffer_Prog_Page_Buffer_Read_AN.pdf
> -	 */
> -	cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
> -			 cfi->device_type, NULL);
> -	cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
> -			 cfi->device_type, NULL);
> -	cfi_send_gen_cmd(0xF0, cfi->addr_unlock1, chip->start, map, cfi,
> -			 cfi->device_type, NULL);
> -	xip_enable(map, chip, adr);
> -	/* FIXME - should have reset delay before continuing */
> +	if (ret) {
> +		/*
> +		 * Recovery from write-buffer programming failures requires
> +		 * the write-to-buffer-reset sequence.  Since the last part
> +		 * of the sequence also works as a normal reset, we can run
> +		 * the same commands regardless of why we are here.
> +		 * See e.g.
> +		 * http://www.spansion.com/Support/Application%20Notes/MirrorBit_Write_Buffer_Prog_Page_Buffer_Read_AN.pdf
> +		 */
> +		cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
> +				 cfi->device_type, NULL);
> +		cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
> +				 cfi->device_type, NULL);
> +		cfi_send_gen_cmd(0xF0, cfi->addr_unlock1, chip->start, map, cfi,
> +				 cfi->device_type, NULL);
> +		xip_enable(map, chip, adr);
> +		/* FIXME - should have reset delay before continuing */
>  
> -	printk(KERN_WARNING "MTD %s(): software timeout, address:0x%.8lx.\n",
> -	       __func__, adr);
> +		printk(KERN_WARNING "MTD %s(): software timeout, address:0x%.8lx.\n",
> +		       __func__, adr);
> +	}
>  

While at that, could you convert this to pr_err()?

> -	ret = -EIO;
> - op_done:
>  	chip->state = FL_READY;
>  	DISABLE_VPP(map);
>  	put_chip(map, chip, adr);
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
