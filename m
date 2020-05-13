Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443181D1BE0
	for <lists+linux-mtd@lfdr.de>; Wed, 13 May 2020 19:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X21IelYyIfFU/BkD1ZOBWWOKVl5vtiwCx/980z0JXNg=; b=E1CgEYu87rG1+U
	4Yvf7XvcVL1UZBDTF+g4dSooTHozAKGzVAMf9HienEg4RlOM842g2TAsm7lSeGOga5CHZaJETCiPT
	T+ESlsa+h8IcqQU0LQ/swwXI3/yDtdSaHad+QBtbHQGgob261SLhTmaVCGQfJrcG0d6bVyOREohCM
	/ACDdk81k++IltO41+caz7atjQjCk7PO0L88Zg/hH5Tac8Wywdoov9vlv6Lx+kORBVTp0U8aND3/8
	QsXU6NKfpDALUepclRRVUpSNKJp/CnVMY9f6f0IGf5Ciwo89jQ+IQIhNm2HR3eV6l3vSiI5gkqKet
	jq5gUr8T2Bzo5JDLahYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYupY-0006W4-CC; Wed, 13 May 2020 17:06:04 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYup9-0006N4-LG; Wed, 13 May 2020 17:05:41 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 29FCB2A28FB;
 Wed, 13 May 2020 18:05:36 +0100 (BST)
Date: Wed, 13 May 2020 19:05:33 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Robert Jarzmik <robert.jarzmik@free.fr>
Subject: Re: [PATCH 1/2] ARM: pxa: remove Compulab pxa2xx boards
Message-ID: <20200513190533.2b737434@collabora.com>
In-Reply-To: <20200513170132.1446-1-robert.jarzmik@free.fr>
References: <20200513170132.1446-1-robert.jarzmik@free.fr>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_100539_826832_2899300E 
X-CRM114-Status: GOOD (  10.40  )
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
Cc: Mike Rapoport <mike@compulab.co.il>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 19:01:31 +0200
Robert Jarzmik <robert.jarzmik@free.fr> wrote:

> As these boards have no more users nor testers, and patching them has
> become a burden, be that because of the PCI part or the MTD NAND
> support, let's remove them.

Thanks a lot for doing that.

> 
> The cm-x300 will for now remain and represent Compulab boards at its
> best in the PXA department.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
