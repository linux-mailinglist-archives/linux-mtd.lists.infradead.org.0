Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1301360D3
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 20:15:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+dq0j/WcqhGjr+Xp+aB/SzGrtx9FUguJIwGjdu/Bps=; b=iNhKESBaFk9gzv
	bJpSLBXzZzxORL35AkC6p1pVE0Kj1L528k4oghJTL8xP5KVNOIjtc3tlZz3VTZMjQaQC+phl/70wo
	1eLVpuK8SeUcTMwo/STw4mSEJSyEybKMNs+BPSdlrDbLjTq5zFgwRNt7CB9itfBqmDxbssAefXYwg
	Dkl69GvizpJu19vsVopesmrmj5PRyrfj5o591TFsbZZEqyRbGLc21mFDoOY/eGPMD5WtNkNdUpO5S
	97cz10ZN6/pAEQ24Ekxpgi6LXgWD99zo+aKpBjX0bn3KmPJuYgA3Af0W8r4XrkhlrXP4GeyIroiN6
	CriDUjMm4rao5Hwsov9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdGz-00073w-5B; Thu, 09 Jan 2020 19:15:13 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdGd-00070w-19
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 19:14:52 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A6517200003;
 Thu,  9 Jan 2020 19:14:39 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH] mtd: sm_ftl: fix NULL pointer warning
Date: Thu,  9 Jan 2020 20:14:38 +0100
Message-Id: <20200109191438.10651-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200107212509.4004137-1-arnd@arndb.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: de08b5ac10420db597cb24c41b4d8d06cce15ffd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_111451_206032_B9214ACF 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Oleksandr Natalenko <oleksandr@redhat.com>, Wenwen Wang <wenwen@cs.uga.edu>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2020-01-07 at 21:24:52 UTC, Arnd Bergmann wrote:
> With gcc -O3, we get a new warning:
> 
> In file included from arch/arm64/include/asm/processor.h:28,
>                  from drivers/mtd/sm_ftl.c:8:
> In function 'memset',
>     inlined from 'sm_read_sector.constprop' at drivers/mtd/sm_ftl.c:250:3:
> include/linux/string.h:411:9: error: argument 1 null where non-null expected [-Werror=nonnull]
>   return __builtin_memset(p, c, size);
> 
> >From all I can tell, this cannot happen (the function is called
> either with a NULL buffer or with a -1 block number but not both),
> but adding a check makes it more robust and avoids the warning.
> 
> Fixes: mmtom ("init/Kconfig: enable -O3 for all arches")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/fixes, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
