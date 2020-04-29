Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A06E1BE124
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 16:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKGuLE6xHKSyx+uO0SyV7UFI4JiKOS/2F778nf55Txc=; b=aRj0T4Ax41VEw8
	Ji3CeHh2QVjJl7vtMtRmvZ9aLH0rM+e+eeU4T8H1YIslq+aEusaZi7mBPJFS2ZrnWBnbsBxIjAQh6
	OdUiaRK5NzK3Msvz0V++GsnDe8+YelKEsrmD8SwVSqMavQUKYTqJUvCrn/Rw2K8ujxpvApfj576ZV
	4EbE0dxiLeqVvR5fl2QGV9lqOHJ8rJrSncYoAqAG6mjjBRfqNrMG1EYl77DyU6/amx9CT+VGFUsXC
	0gc3skMSIo/2HtMKSR4BK97peVlLF8TPan9ohRNh41xCPv44FeUWY0BlrrMyK5Xtu9w44OKTZnSYE
	fhL3sqU6D9hDhgP7CP8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnmi-0008AQ-20; Wed, 29 Apr 2020 14:34:00 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnmS-00087J-2l
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 14:33:45 +0000
IronPort-SDR: s8baJqd9I0NabHorYF/P2FmWEtPr40zUqReZhZTcbBlEyCAZfxVzShDSi7o9eb/cnyOf+vTggN
 LrKU4nRFUS/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 07:33:43 -0700
IronPort-SDR: GgDxLw7T5eFCu4vUB9yydCrksnAKVNlira8kc0/Yy/F1rwk2KwAWiigEPmqzDOKtRVtUrdmN2Q
 0tx2QchLc9Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,332,1583222400"; d="scan'208";a="257977442"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga003.jf.intel.com with ESMTP; 29 Apr 2020 07:33:42 -0700
Received: from [10.255.166.42] (vramuthx-mobl1.gar.corp.intel.com
 [10.255.166.42])
 by linux.intel.com (Postfix) with ESMTP id 8B1DE5802C8;
 Wed, 29 Apr 2020 07:33:38 -0700 (PDT)
Subject: Re: [PATCH v4 2/2] mtd: rawnand: Add NAND controller support on Intel
 LGM SoC
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20200429104205.18780-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429104205.18780-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429162249.55d38ee8@collabora.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <9d77c64c-d0f9-7a13-3391-d05bf458bdb1@linux.intel.com>
Date: Wed, 29 Apr 2020 22:33:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200429162249.55d38ee8@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_073344_146942_9EDAED4F 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: vadivel.muruganx.ramuthevar@linux.intel.com
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 masonccyang@mxic.com.tw, anders.roxell@linaro.org, vigneshr@ti.com,
 arnd@arndb.de, hauke.mehrtens@intel.com, richard@nod.at,
 brendanhiggins@google.com, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, tglx@linutronix.de, qi-ming.wu@intel.com,
 andriy.shevchenko@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris,

On 29/4/2020 10:22 pm, Boris Brezillon wrote:
> On Wed, 29 Apr 2020 18:42:05 +0800
> "Ramuthevar, Vadivel MuruganX"
> <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> 
>> +
>> +#define EBU_ADDR_SEL(n)		(0x20 + (n) * 4)
>> +#define EBU_ADDR_MASK		(5 << 4)
> 
> It's still unclear what ADDR_MASK is for. Can you add a comment
> explaining what it does?

Thank you Boris, keep review and giving inputs, will update.
> 
>> +#define EBU_ADDR_SEL_REGEN	0x1
> 
> 
>> +
>> +	writel(lower_32_bits(ebu_host->cs[ebu_host->cs_num].nand_pa) |
>> +	       EBU_ADDR_SEL_REGEN | EBU_ADDR_MASK,
>> +	       ebu_host->ebu + EBU_ADDR_SEL(reg));
>> +
>> +	writel(EBU_MEM_BASE_CS_0 | EBU_ADDR_MASK | EBU_ADDR_SEL_REGEN,
>> +	       ebu_host->ebu + EBU_ADDR_SEL(0));
>> +	writel(EBU_MEM_BASE_CS_1 | EBU_ADDR_MASK | EBU_ADDR_SEL_REGEN,
>> +	       ebu_host->ebu + EBU_ADDR_SEL(reg));
> 
> That's super weird. You seem to set EBU_ADDR_SEL(reg) twice. Are you
> sure that's needed, and are we setting EBU_ADDR_SEL(0) here?

You are right, its weird only, but we need it, since different chip 
select has different memory region access address.

Yes , we are setting both CS0 and CS1 memory access region, if you have 
any concern to optimize, please suggest me, Thanks!

Regards
Vadivel
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
