Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4171B464B
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Sep 2019 06:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QQ3BNT3+pPrHIM80xnSDJPblVqbsKY+PVN/1GhFmLM4=; b=RFOUjUB9XSBLJB3mNs8ccRkoKE
	VIA1KCmXDBsU8APDUc04w5HUlh3+dPjL1nqyBmKKeQbWF6TeiAS+CSFcgadZCYhu6O7i7R559UaZT
	q+U+Q1DqkowmUm3WGSBTfrw8H+stXor7yKQ64dftswzGC9ZTwTUd1bdJ/fwoSRpKjvg3s87+v1I9J
	HuGgUA1LHG0XNxtx5z1JmXBr82SE2oEHetjtD67FdreVdhkvcstPEV4mqLWFHe9OVjlEErLckiBo6
	tTpi452k6awy0Ag3Wh4PxF5AHRoNtm+fjg0Orse7U2o4flhmKt0y2fFCj4hk2jTJG8eRGk/nCH2yv
	UmFrzRLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA51r-0002EN-PG; Tue, 17 Sep 2019 04:23:51 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA51i-0002Dx-7w
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 04:23:43 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8H4NQPS000941;
 Mon, 16 Sep 2019 23:23:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568694206;
 bh=iMINKBJy7DMf/H6NfcMaDPvcgrCm4/QoVJXgFVSbzdY=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=bSMCJXrrqc7VQgt1SrvmEOfbC+Ur9nfs8g25hNN0aLot34PygFqY24KGQ8PREds9P
 OoW+/F/107GlWiPpF9NSWhthYjo653x+xnOJMvj6+k+oFBji+W/vf5iBe/EW1U4PFN
 ZDkxtkkSV2v6UlIl2TRGfW7JU+E8i1AB3NZWayK4=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8H4NQCo105570
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 16 Sep 2019 23:23:26 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 16
 Sep 2019 23:23:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 16 Sep 2019 23:23:23 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8H4NN5b101751;
 Mon, 16 Sep 2019 23:23:23 -0500
Subject: Re: [PATCH] mtd: chips: gen_probe: kill useless initializer in
 mtd_do_chip_probe()
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, Marek Vasut
 <marek.vasut@gmail.com>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Richard Weinberger <richard@nod.at>, <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
References: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
 <e17f9477-19b4-0572-9df6-86a06695111a@cogentembedded.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <f6a46843-fc65-74bf-0559-2267025f9fff@ti.com>
Date: Tue, 17 Sep 2019 09:54:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e17f9477-19b4-0572-9df6-86a06695111a@cogentembedded.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_212342_368703_7209EAB4 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 04/07/19 1:56 AM, Sergei Shtylyov wrote:
> The 'mtd' local variable is initialized but this value is never used,
> thus kill that initializer.
> 
> Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
> 
> ---
> Thi patch is atop of the 'mtd/next' branch of the MTD 'linux.git' repo.

Merged into git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next

Thanks!

> 
>  drivers/mtd/chips/gen_probe.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Index: linux/drivers/mtd/chips/gen_probe.c
> ===================================================================
> --- linux.orig/drivers/mtd/chips/gen_probe.c
> +++ linux/drivers/mtd/chips/gen_probe.c
> @@ -20,7 +20,7 @@ static int genprobe_new_chip(struct map_
>  
>  struct mtd_info *mtd_do_chip_probe(struct map_info *map, struct chip_probe *cp)
>  {
> -	struct mtd_info *mtd = NULL;
> +	struct mtd_info *mtd;
>  	struct cfi_private *cfi;
>  
>  	/* First probe the map to see if we have CFI stuff there. */
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
