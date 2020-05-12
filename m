Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F04291CEC5B
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 07:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eqhqxSTnDa1VmSRnBwJme+ZpNFqgccEDUe1iczqDSU=; b=tbhVL3nVx/Mp0/
	TKB9CewjTJW7RoRdl+4SaYr6YHUFNOz4n/Xn2jJOfN2rED2uAoOkhR3HN0YGLXRsRmS7Fl1SKNNWA
	wNTwX0D4xIRGqch5Bq5mU4/qJOe4vLyxynCytSobpWVHlUtULSjizXAnCexFEaqFSSp/UY7PCFCtt
	CDMNvvFXrRWZOjAtVIbvFp5ApFxUEjZBgdMTrsf6WQocBDtOxdznHfvgw8xrVuqpnWQya4SZAnfBD
	2crvPQkZmjkYoMZ63dfQ5P79VdBLsqoL7svbzf3SkWEVTGFsXfbJ9GaH9SdJUNeponFYJBLvBx3/+
	e1lzTKdwRjnFuyu1oEAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYNGE-00009Q-Se; Tue, 12 May 2020 05:15:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYNG4-00008w-Pe
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 05:15:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id u35so2627156pgk.6
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 22:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hkw/Z63xQHG8uMp0IH/cCnzDA8TYdvaGr2m+4SY43mQ=;
 b=NxeO0LEOxjSFPTHG2C8P6nGRpFSnOQS4nM0rEMQT5Qmce3eP8ATPEFQ5t6N0YnCvl8
 uXPC4uUm7iPJ23kuR7NeQ4LaqrZf6uLqsdv01pHYCOWKmjyZkdJs4+ayMsSqDgwMW4Al
 okZIIW6hD7YscBdv3SDXPH1XadUmgOOLWh5As=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hkw/Z63xQHG8uMp0IH/cCnzDA8TYdvaGr2m+4SY43mQ=;
 b=V28IWllTOMKx6nqTvOKUr9upRVkcgsOTrdNNdZzd6mfFkVp4tjsuB20MlOWBj5fmVU
 HvlAYi72PRvcdWVcM8QdyQ44c0b8X+GtMrQC1Ifx7zhfEXENOBOigJtsFlSKkjJ9mqeU
 uUACj7khOWCT3i8/GALNiAwt+0Z6hIhJElaKHTyNiyH/igMF1It93SsGZrYlxrNujisr
 mCkoYfXJf0QujuQiP+ygiRVPJlo76+NeXBAZm3UplJi9gTYRaozTgTBVyZdIXK8WPL4t
 R7JViepxlDmUlCWT5QlbWvCFO3uV1QjxdDtRWeKNJyeDpaMTfnVNpu5iQYCkVO2Otc2n
 CDyA==
X-Gm-Message-State: AGi0PuZrLCXU3ase7J0Up7tZG+Zo9rIcJKX8RbWMblXdXaupB9/Yf+wp
 3F64o/KMDt1NtYTIlaUEqQstCQ==
X-Google-Smtp-Source: APiQypLHR8TY4hZJxKV8zGV9lZbtbRZMhdgZf2g/71c4CVlnO4S4AhYYCUHD5RLGcmuTYmodJ37Qhw==
X-Received: by 2002:a63:4665:: with SMTP id v37mr17003825pgk.297.1589260512040; 
 Mon, 11 May 2020 22:15:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t188sm10768564pfb.185.2020.05.11.22.15.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 22:15:11 -0700 (PDT)
Date: Mon, 11 May 2020 22:15:10 -0700
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v8 01/11] pstore/zone: Introduce common layer to manage
 storage zones
Message-ID: <202005112212.2E75B83@keescook>
References: <20200511233229.27745-1-keescook@chromium.org>
 <20200511233229.27745-2-keescook@chromium.org>
 <a9d47bf1-7498-1d07-a943-29dd0b0ef2e1@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a9d47bf1-7498-1d07-a943-29dd0b0ef2e1@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_221512_833688_0AB79BE1 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Tony Luck <tony.luck@intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Anton Vorontsov <anton@enomsg.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Colin Cross <ccross@android.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 11:55:20AM +0800, WeiXiong Liao wrote:
> On 2020/5/12 AM 7:32, Kees Cook wrote:
> > [...]
> > +struct psz_context {
> > +	struct pstore_zone **kpszs;
> > +	unsigned int kmsg_max_cnt;
> > +	unsigned int kmsg_read_cnt;
> > +	unsigned int kmsg_write_cnt;
> > +	/*
> > +	 * These counters should be calculated during recovery.
> > +	 * It records the oops/panic times after crashes rather than boots.
> > +	 */
> > +	unsigned int oops_counter;
> > +	unsigned int panic_counter;
> 
> oops/panic_counter is designed to count the crash times since the
> linux kernel was installed. pstore/zone lookup the max counter from all
> valid kmsg zones when recovery and saves them to oops/panic_counter.
> However, they are unable to get real number if we remove files. It's
> not serious, we can fix it after this series.

Since the kernel was installed? I don't see a kernel version check in
here? Or do you mean "since ever", in that it's a rolling count?

> And since pstore supports "max_reason", should pstore/zone count for
> other reason?

For now, no. I opted to try to keep this as simple as possible a port
from dump_oops to max_reason for now.

> > +static inline int psz_kmsg_erase(struct psz_context *cxt,
> > +		struct pstore_zone *zone, struct pstore_record *record)
> > +{
> > +	struct psz_buffer *buffer = zone->buffer;
> > +	struct psz_kmsg_header *hdr =
> > +		(struct psz_kmsg_header *)buffer->data;
> > +
> > +	if (unlikely(!psz_ok(zone)))
> > +		return 0;
> > +	/* this zone is already updated, no need to erase */
> > +	if (record->count != hdr->counter)
> > +		return 0;
> 
> These codes is to fix bug that user remove files on pstore filesystem
> but kmsg zone is already updated and pstore/zone should not erase
> zone. It work for oops and panic because the count number is increasing.
> However, it's useless for other reason of kmsg. We can fix it after this
> series.

Okay, sounds good.

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
