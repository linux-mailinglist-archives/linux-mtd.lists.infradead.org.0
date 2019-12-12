Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F72011C667
	for <lists+linux-mtd@lfdr.de>; Thu, 12 Dec 2019 08:31:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGvpAlKDNZ9k4Y2Ldnwk3S0jj8+cN99sCtwUUrTtKeU=; b=kWMsxMFvws7WO+
	JZXqMmNTRvZpFWPErQMJciYywFq6zt0EuIS28r3CCMT53LdUqw0TBwEGpGQpV2YVBrOICvo6EK+M8
	2DxFVGX+mRWb77cSbr6wpv1viE7tYAbdWYQQLRWKT3Jv6OlHGnvD78/as9uOUe0Ou2c/v0v+vMPTr
	bo/bAwQ9CTWdqqRbqs9UyqhczTAuJ8z+qjKufl9IVSevQbYMfIkgiHKMVSrb2Ml6bb+dYRagId1L0
	jI328wGBLBE2N11q3A2l6ct+MO1U5LjAsI15lm41f6iR7sZcnsPZsPGYxXaXzm8Emzbqma9maz2Jz
	udMpaPgWNFJ681YKtHcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifIww-00087M-He; Thu, 12 Dec 2019 07:31:50 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifIwm-00086w-6k
 for linux-mtd@lists.infradead.org; Thu, 12 Dec 2019 07:31:41 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBC7VQQh072778;
 Thu, 12 Dec 2019 01:31:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576135886;
 bh=haW2fs/1/sUuQpF8Y3YpZnBRlXcDpUlKfXo5LXqv/OI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=uGHf5HOo/y3rmRn0ytwmvZZww9niyfwPMg5JlFrNKgDCtqbXwoO+5yFTiPgkODcA5
 pN8QO0cNKEH1QsRZ4qOwblX4SG3JOnJ/WCHD0aiXKvnD9az0FhQGI41pkKAItl6+3T
 nLnAytAxL+JlPnjLQJiacGA2TLZH91y58v1AyhzQ=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBC7VQBY006953
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 01:31:26 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 01:31:25 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 01:31:25 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBC7VMHk027359;
 Thu, 12 Dec 2019 01:31:23 -0600
Subject: Re: [PATCH 3/3] mtd: spi-nor: Add USE_FSR flag for n25q* entries
To: <Tudor.Ambarus@microchip.com>
References: <20191205065935.5727-1-vigneshr@ti.com>
 <20191205065935.5727-4-vigneshr@ti.com>
 <2d931347-d927-4674-86ff-7eb285624bfc@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <fec29113-e048-bd47-595e-3d1f6e3955e0@ti.com>
Date: Thu, 12 Dec 2019 13:01:51 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <2d931347-d927-4674-86ff-7eb285624bfc@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_233140_371868_99BF54E0 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: richard@nod.at, john.garry@huawei.com, Ashish.Kumar@nxp.com,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Tudor,

On 10/12/19 10:11 pm, Tudor.Ambarus@microchip.com wrote:
> Hi, Vignesh,
> 
> On 12/5/19 8:59 AM, Vignesh Raghavendra wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> Add USE_FSR flag to all variants of n25q entries that support Flag Status
>> Register.
> 
> On a first look, all Micron flashes define the Flag Status Register. Do you know
> if there are any Micron flash that don't support FSR? If not, would you be
> interested in doing some documentation work to check this?
> 

n25q and mt25 series support FSR but older m25p/m45p parts don't have
FSR.  I don't know any easy way of finding out if flash part is m25p type.

> I think we can do this more generic, always set SNOR_F_USE_FSR for micron
> flashes, like below. More, if FSR is specific just for Micron, we can get rid of
> the USE_FSR flag too.
> 

AFAIK, FSR is definitely Micron specific (other flash vendors have
different registers/bits providing similar information though).


> Thanks, Vignesh.
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index f4afe123e9dc..fe10beea60c3 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -4595,7 +4595,7 @@ static void sst_set_default_init(struct spi_nor *nor)
> 
>  static void st_micron_set_default_init(struct spi_nor *nor)
>  {
> -       nor->flags |= SNOR_F_HAS_LOCK;
> +       nor->flags |= SNOR_F_HAS_LOCK | SNOR_F_USE_FSR;
>         nor->params.quad_enable = NULL;
>         nor->params.set_4byte = st_micron_set_4byte;
>  }
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
