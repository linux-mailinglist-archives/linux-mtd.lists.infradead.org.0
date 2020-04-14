Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC96F1A7494
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Apr 2020 09:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqaiLKjPVrd/ncvJ1/s0P7Wb1u6gIrKUhJqdiuOBVsA=; b=mVB+RFptw+WQb1
	2+bmNjByHFUdXp/2TvCv9ooPzzaVTioQKNTVMnxOIFVYfzRNXgALm2Q6mP8gxpzZd7bgSN6z/OCaw
	nW/aMs6esD856Evx0hV/KhvhiP044+uY4UoQDWYB8ZYa2JDpbj1PmNl7RsdHwu9En4mwOl4tezaWC
	2HbFOhsdzyPDLEtObpNbLoMiMhJ7OE0obCAAgb2XPkIUrOPvaP02H0uSOQsGXKtEjRwYaSqmRxvx+
	QmEd3d6DVHvgz2z+xDSqif+xbJbGI3A/9rhfwkiXezs03NwlbCbzqucMNxznqC2z9M4sxhPzy3Pyx
	Ne/nZRr3mg4Bz7vlAAyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOFtI-0001ic-Fo; Tue, 14 Apr 2020 07:21:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOFt4-0001iA-QW
 for linux-mtd@lists.infradead.org; Tue, 14 Apr 2020 07:21:40 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 147262A14A0;
 Tue, 14 Apr 2020 08:21:37 +0100 (BST)
Date: Tue, 14 Apr 2020 09:21:32 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ramuthevar,Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v1 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200414092132.525053f1@collabora.com>
In-Reply-To: <20200414022433.36622-3-vadivel.muruganx.ramuthevar@linux.intel.com>
References: <20200414022433.36622-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200414022433.36622-3-vadivel.muruganx.ramuthevar@linux.intel.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_002138_984295_FE303574 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 andriy.shevchenko@intel.com, anders.roxell@linaro.org, vigneshr@ti.com,
 arnd@arndb.de, richard@nod.at, qi-ming.wu@intel.com, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com, tglx@linutronix.de,
 masonccyang@mxic.com.tw, piotrs@cadence.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello Ramuthevar,

On Tue, 14 Apr 2020 10:24:33 +0800
"Ramuthevar,Vadivel MuruganX"
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:

> +	lgm_host->chip.legacy.read_byte = lgm_read_byte;
> +	lgm_host->chip.legacy.read_buf = lgm_read_buf;
> +	lgm_host->chip.legacy.write_buf = lgm_write_buf;
> +	lgm_host->chip.legacy.select_chip = lgm_select_chip;
> +	lgm_host->chip.legacy.dev_ready = lgm_dev_ready;
> +	lgm_host->chip.legacy.cmd_ctrl = lgm_cmd_ctrl;
> +	lgm_host->chip.legacy.chip_delay = 30;
> +	lgm_host->chip.legacy.dummy_controller.ops = &lgm_nand_controller_ops;
> +

Seriously, what's not clear in [1]? Okay, let's say you overlooked this
comment, isn't the name of the field explicit enough? We received a
few other drivers implementing the legacy interface in the last few
months so maybe there's something to improve on our end (update the
doc, move legacy drivers to a legacy sub-dir?).

Back to more constructive comment now: please implement ->exec_op() to
replace those legacy hooks.

Regards,

Boris

[1]https://elixir.bootlin.com/linux/v5.7-rc1/source/include/linux/mtd/rawnand.h#L987

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
