Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7F5155161
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Feb 2020 04:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2V5qrWfVhmBm0lkbf4SHKUNISsnLiXhxXn/Pd+8sBxM=; b=g95Cg+e6LKX8e8
	izJNfXy763mjRE55Q5CI6jRD3eS1jLCmD0rVmAxWI2YeuerK/OMXBYwmkzfRz5e0YS+2jD8SjcJIx
	2lU3/pNFeHl3uK2/OvDeAIPnoMjzVwpYIH6mZ7XRaIKcIRgb/XMTdiRIqEeo4V/FAJ8xEATN44Pxe
	LY3bpDGdi04ILybVbPkp3MThb0kDHeMzF8ngrsczdmEGcB/KoOfJhC6QciRGSwoLUdMgmw6UqFpxM
	7hyjpUbgyqnmsFhEHO3mABHySVahlk/ef8LMoZmB+ORX9a80WKiiGJot9/kRdrHIQFtEAjNkGEQzh
	AZIPEQy9a8IJYUqlSFIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izukC-0003cs-B3; Fri, 07 Feb 2020 03:55:52 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izuk3-0003c3-Qf
 for linux-mtd@lists.infradead.org; Fri, 07 Feb 2020 03:55:45 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n96so348722pjc.3
 for <linux-mtd@lists.infradead.org>; Thu, 06 Feb 2020 19:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0N77ceutI7QygxgKxPcCKSSScXs1nszws9/Xg7GcwLI=;
 b=Q/+qvOc0RLFn9IjORYKzBa6Wd9gWr8cpyP5d3uFmdnKmLpFcK0oJPjP5R84JhnPuD9
 Gr2xz2CqOo+CpsJQ56g8sNS3A5hhgFeFnl5/9nWK6z6QZv0+64nv2xhW3b2tohblewoK
 X8Bw5w65qmNB3imWC/7TztjVqc5t7+2izXumPUrbOEUtjv9C7QGLjlQ+8EAIqxxrY+V1
 jPBXrLMmGrFsAxvrCfJ/UYwwP4zf19zhrz5MGrt2Eb6fH+dmjh7AQVUOymnmooqdjrhX
 9jkWx2kI8a2f9+aSaoqm5MkXgBhrLB0gK/CY2kGat6zhZDgyySnJW2QJ6WevOfjw5Cs3
 zLZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=0N77ceutI7QygxgKxPcCKSSScXs1nszws9/Xg7GcwLI=;
 b=eHVXi+ioFSu5HlOckXIqXEyacpsuw3mTM+wpaNaJ429Nb+cam67HExrZzFMCDNo74x
 vAXuzCLBbv1ugTMxKFcUHGDak7yemZGGD8y3FOqasDxB/BmGEaXUDiRtx50VR6IQpTft
 OmIdDFa+dkhhxYaFMxX15MynGURL9m4QRNF41vpK9+EtD+SSoO89ftnlybYrLvjeSMtc
 U+WTRtSF/jeByC3SkybgDaoMl5F4JifcXulANBdfz6O1PMpTeKuTANdxNLsKFVJvML/Y
 Yhj+SdZg4tar88RF9gO6olkthMnp8/NdYgUyRU71EFVDKRpQ2Q3SJUUkGEC3mhxar+dj
 IcUA==
X-Gm-Message-State: APjAAAVf4ZslL8uGVS28QbW2N4xmx3ozc7FC/A3L1cGOyu7W+iItxjip
 8qmx+eVz7cvc8IkYW6SnWaA=
X-Google-Smtp-Source: APXvYqyRp7q3bHXyBkTpzrHtMc+RyaOLGt9DH3/fQo7cf+mSZCLWS3g0Q/tnPnybBzlR34nHxqV8KA==
X-Received: by 2002:a17:902:6ac3:: with SMTP id
 i3mr7627362plt.111.1581047740631; 
 Thu, 06 Feb 2020 19:55:40 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 n15sm855879pfq.168.2020.02.06.19.55.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Feb 2020 19:55:39 -0800 (PST)
Subject: Re: [PATCH] MIPS: c-r4k: Invalidate BMIPS5000 ZSCM prefetch lines
To: Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org
References: <20200206193037.32041-1-kdasu.kdev@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <ffdb9b0d-578a-dfb7-020b-27c5b1646a2e@gmail.com>
Date: Thu, 6 Feb 2020 19:55:39 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200206193037.32041-1-kdasu.kdev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_195543_891780_1ECB0594 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Vignesh Raghavendra <vigneshr@ti.com>, Paul Burton <paulburton@kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linaro-mm-sig@lists.linaro.org,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 James Hogan <jhogan@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 2/6/2020 11:30 AM, Kamal Dasu wrote:
> Zephyr secondary cache is 256KB, 128B lines. 32B sectors. A secondary cache
> line can contain two instruction cache lines (64B), or four data cache
> lines (32B). Hardware prefetch Cache detects stream access, and prefetches
> ahead of processor access. Add support to inavalidate BMIPS5000 cpu zephyr

s/inavalidate/invalidate/

> secondary cache module (ZSCM) on DMA from device so that data returned is
> coherent during DMA read operations.

Just a few nits, see below, with those addressed:

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> ---
>  arch/mips/mm/c-r4k.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/mips/mm/c-r4k.c b/arch/mips/mm/c-r4k.c
> index 5f3d0103b95d..2d8892ba68ab 100644
> --- a/arch/mips/mm/c-r4k.c
> +++ b/arch/mips/mm/c-r4k.c
> @@ -901,6 +901,35 @@ static void r4k_dma_cache_wback_inv(unsigned long addr, unsigned long size)
>  	__sync();
>  }
>  
> +static void prefetch_cache_inv(unsigned long addr, unsigned long size)
> +{
> +	unsigned int linesz = cpu_scache_line_size();
> +	unsigned long addr0 = addr, addr1;
> +	int cpu_type = current_cpu_type();
> +
> +	if (cpu_type == CPU_BMIPS5000) {

I would re-organize this and move this out of the prefetch_cache_inv()
such that platforms which do not require that operation can have it
optimized out, see below:

> +		/* invalidate zephyr secondary cache module prefetch lines */
> +		addr0 &= ~(linesz - 1);
> +		addr1 = (addr0 + size - 1) & ~(linesz - 1);
> +
> +		protected_writeback_scache_line(addr0);
> +		if (likely(addr1 != addr0))
> +			protected_writeback_scache_line(addr1);
> +		else
> +			return;
> +
> +		addr0 += linesz;
> +		if (likely(addr1 != addr0))
> +			protected_writeback_scache_line(addr0);
> +		else
> +			return;
> +
> +		addr1 -= linesz;
> +		if (likely(addr1 > addr0))
> +			protected_writeback_scache_line(addr0);
> +	}
> +}
> +
>  static void r4k_dma_cache_inv(unsigned long addr, unsigned long size)
>  {
>  	/* Catch bad driver code */
> @@ -908,6 +937,7 @@ static void r4k_dma_cache_inv(unsigned long addr, unsigned long size)
>  		return;
>  
>  	preempt_disable();

	if (current_cpu_type() == CPU_BMIPS5000)
		prefetch_cache_inv(addr, size);

> +	prefetch_cache_inv(addr, size);
>  	if (cpu_has_inclusive_pcaches) {
>  		if (size >= scache_size) {
>  			if (current_cpu_type() != CPU_LOONGSON64)
> 

-- 
Florian

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
