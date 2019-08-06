Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B21E828CC
	for <lists+linux-mtd@lfdr.de>; Tue,  6 Aug 2019 02:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=psHkqwiKIqUnC5vBWwJICuWgSIRErf1ex8255MpRgYA=; b=HrRM8qjHlZoXkoen2pq8rfvqYX
	eYtApmxHCF0pU9n15ymW3ReY8E91GmGrHugE9nO+fdoDRsJKqjGd2uDViRbiYJIiXhKAvc0i84zuo
	SfOsneb/Cf516KLEPAfHf4qPMMh3ClVApGCVuq1SAp3jRsnlrkX/8Wuq/BvW8llfZx7QU+UZqRV9K
	kzJXjXhiLAQZcHjeSRo60EI+WuUKQqaMY8qGQJ8vDzVkArh/xJk19BE+vv4Rt52KFvjbvbo0+NrBf
	0FlnEEFS/XjB5yzSunmjbiBkoXt98j5FE3j08CtIeZ9piWTX0Qf5AaQj0qrq7rLbMVmwZFJM0bAL3
	6l8dn7pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hunZJ-0003Bi-8U; Tue, 06 Aug 2019 00:43:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hunZB-0003B4-D8
 for linux-mtd@lists.infradead.org; Tue, 06 Aug 2019 00:43:06 +0000
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBEF82147A;
 Tue,  6 Aug 2019 00:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565052184;
 bh=SmCk9Jxx0eyOZMYeH+bhxGPUDYdk6K+0WiR24RN7Bec=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:
 References:From;
 b=1bfTG4i6PGVgo+k4mc2OVDocFXEraNLusc8izOPNg7z6K2wqfBhq0+VU5qnv2taQX
 R341mrmxSlGmf7ETxW66AYjU0EojsHqV4iMqOXKECOAO7jcFVJ4eUA5QQ12KoL3e4d
 krjQ7RaU9CckTi1WIVRC11D4f9ouAXXE/EYuyM7c=
Date: Tue, 06 Aug 2019 00:43:03 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Tokunori Ikegami <ikegami.t@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v8 1/9] mtd: cfi_cmdset_0002: Use chip_good() to retry in
 do_write_oneword()
In-Reply-To: <20190805190326.28772-2-ikegami.t@gmail.com>
References: <20190805190326.28772-2-ikegami.t@gmail.com>
Message-Id: <20190806004303.EBEF82147A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_174305_481183_56146767 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: , Tokunori Ikegami <ikegami.t@gmail.com>, stable@vger.kernel.org,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.2.6, v4.19.64, v4.14.136, v4.9.187, v4.4.187.

v5.2.6: Failed to apply! Possible dependencies:
    4844ef80305d ("mtd: cfi_cmdset_0002: Add support for polling status register")

v4.19.64: Failed to apply! Possible dependencies:
    4844ef80305d ("mtd: cfi_cmdset_0002: Add support for polling status register")
    d9b8a67b3b95 ("mtd: cfi: fix deadloop in cfi_cmdset_0002.c do_write_buffer")

v4.14.136: Failed to apply! Possible dependencies:
    4844ef80305d ("mtd: cfi_cmdset_0002: Add support for polling status register")
    c64d4419a17c ("mtd: cfi_cmdset_0002: Change erase one block to enable XIP once")
    d9b8a67b3b95 ("mtd: cfi: fix deadloop in cfi_cmdset_0002.c do_write_buffer")
    ea092fb3ce66 ("mtd: cfi_cmdset_0002: Fix coding style issues")

v4.9.187: Failed to apply! Possible dependencies:
    4844ef80305d ("mtd: cfi_cmdset_0002: Add support for polling status register")
    c64d4419a17c ("mtd: cfi_cmdset_0002: Change erase one block to enable XIP once")
    d9b8a67b3b95 ("mtd: cfi: fix deadloop in cfi_cmdset_0002.c do_write_buffer")
    ea092fb3ce66 ("mtd: cfi_cmdset_0002: Fix coding style issues")

v4.4.187: Failed to apply! Possible dependencies:
    4844ef80305d ("mtd: cfi_cmdset_0002: Add support for polling status register")
    c64d4419a17c ("mtd: cfi_cmdset_0002: Change erase one block to enable XIP once")
    d9b8a67b3b95 ("mtd: cfi: fix deadloop in cfi_cmdset_0002.c do_write_buffer")
    ea092fb3ce66 ("mtd: cfi_cmdset_0002: Fix coding style issues")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
