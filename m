Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0316D14B
	for <lists+linux-mtd@lfdr.de>; Thu, 18 Jul 2019 17:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MZn/gBerlqxYmfWyv/4LNfwXlqdYBXvuOcJl0kuG0nM=; b=IGUWgpixSaswQRVVBQS5pyvHKe
	Lnrl9eUsad3XO4o5cKSbNEbdUOmukTLr/V3OgrSnP43tfv/gZRhvDtrEgkimNzsNVqaZsDF3keZyi
	Piqh3DhLa8u6pN55KIdVZHBD51ERiPBanRKJJR1Ci8dovDo88LHQH8mlrY3pmrshhv3UyeRFSH4Qo
	LztYuZY3Kk1zzjfsIidNe+bjT6TlfvStNhZHWevoZui93XFhnqfr8wKsLXwurFlPQo+TL/aJ2TDLh
	ZUuPhSRtmi1GOhNhOCUB33Gz0KhHHnOHqLmaK7xoPwBfJeQoAz7g0zRHEFvADcH5lalNxK1Kat/TQ
	jFx5GNbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho8bU-0008H0-Le; Thu, 18 Jul 2019 15:45:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho8b9-0008Gp-9Z
 for linux-mtd@bombadil.infradead.org; Thu, 18 Jul 2019 15:45:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=beUSWoZXSEseo18OGM8fyy0fbR5wLVgyQ97N7VlKnlE=; b=hNvZT9V5N2E+RzxuWYwVvh+QeX
 MlpOSJBgt5+S3mz8iayCbDY5ygRW3i4nxp+0VHq/k7pnAHpxzTs5OMbB96e6AACNwjKc21XMPzIMa
 6Gi5u1n8z1M/TEcQi154M9NJ4N5XAgkbKSTxJPgyFrOCl9G6ayweHrp4mr2wJfUa6MNYWoPTTSYi4
 XhBsHzAbyvYzDPt4Xfip+KrB3kHQb+ghbZuB7qsGHvu7yd1x8FBfAb5bfWnraTbSUP5xWvKjSX2iY
 KGp3ReyEy0xtmA9aqgdK/FpIRExp4j5AizWZMWe/Tl2j8kfNCqalQqGGomtJLwRXbqrbJ5Tte9adr
 3BaTgl6A==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=[192.168.1.17])
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1ho8b4-0004mG-6e; Thu, 18 Jul 2019 15:45:30 +0000
Subject: Re: mmotm 2019-07-17-16-05 uploaded (MTD_HYPERBUS, HBMC_AM654)
To: akpm@linux-foundation.org, broonie@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-next@vger.kernel.org, mhocko@suse.cz,
 mm-commits@vger.kernel.org, sfr@canb.auug.org.au,
 Vignesh Raghavendra <vigneshr@ti.com>, linux-mtd@lists.infradead.org
References: <20190717230610.zvRfipNL4%akpm@linux-foundation.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <4b510069-5f5d-d079-1a98-de190321a97a@infradead.org>
Date: Thu, 18 Jul 2019 08:45:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190717230610.zvRfipNL4%akpm@linux-foundation.org>
Content-Language: en-US
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

On 7/17/19 4:06 PM, akpm@linux-foundation.org wrote:
> The mm-of-the-moment snapshot 2019-07-17-16-05 has been uploaded to
> 
>    http://www.ozlabs.org/~akpm/mmotm/
> 
> mmotm-readme.txt says
> 
> README for mm-of-the-moment:
> 
> http://www.ozlabs.org/~akpm/mmotm/
> 
> This is a snapshot of my -mm patch queue.  Uploaded at random hopefully
> more than once a week.
> 

on x86_64, when CONFIG_OF is not set/enabled:

WARNING: unmet direct dependencies detected for MUX_MMIO
  Depends on [n]: MULTIPLEXER [=y] && (OF [=n] || COMPILE_TEST [=n])
  Selected by [y]:
  - HBMC_AM654 [=y] && MTD [=y] && MTD_HYPERBUS [=y]

due to
config HBMC_AM654
	tristate "HyperBus controller driver for AM65x SoC"
	select MULTIPLEXER
	select MUX_MMIO

Those unprotected selects are lacking something.

-- 
~Randy

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
