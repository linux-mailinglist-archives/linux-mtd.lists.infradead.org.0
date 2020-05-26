Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089311DDBFD
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 02:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ivFFVTVYUkff050N+qdx8iiEbO9XV9LMdXmo3+uRVlY=; b=GNGV1xuN/UcGgxzf1OYo++Wgnn
	BtAAB/b4lsDqaOIvTMXkwJ6WeATNqVFBX9/ac8qrALtFhySadKFdwcJLrE8jmPXKrWBobvTMAzX7C
	j/5zg8eF8ekNuHcO9FY4BTcYUZ5QAcCbn3Mnbx2MYf1hKE6Bab+uwnDa/yd68Xl6SlAfdO/3S7lCj
	l1bMS2icwzM/qM/TPjinSnUHsInmEgbjMmRxq8N0O0qId55KA7SiSezdvAml7i74gYkb0ADJzpbVm
	BzE9pr6FVm6gRbjipLS+K9KI5YMezs6GvysUAVoE3zAq8uTA1pmKuFH9WcAWDvpaVwqWUVGKfUzVT
	Gbjnkmkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbvLZ-0004e4-7Y; Fri, 22 May 2020 00:15:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbvIn-00081I-Vm
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 00:12:44 +0000
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C1B420874;
 Fri, 22 May 2020 00:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590106361;
 bh=WOiqB0GpcVWMKmnet1Sc0/6IqMPI2nyLCQayz4Y0Ccw=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=shXL14aIJY516IgdQpOqo9DvswkPQPQS6fMp+EnFYbK+EB+au+HNdAjeaoTmEJLOq
 orZx5IQL/RLGJepwYV7L/XMHJiOKUK7ewoywhdMOW0dg5mIsY5x8bcukGGCXfhTMEp
 RwYoheVtM1vRd13u47K3oZYXybpYYWv0lEMAIjP4=
Date: Fri, 22 May 2020 00:12:40 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH v2 33/62] mtd: rawnand: orion: Fix the probe error path
In-Reply-To: <20200519130035.1883-34-miquel.raynal@bootlin.com>
References: <20200519130035.1883-34-miquel.raynal@bootlin.com>
Message-Id: <20200522001241.0C1B420874@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_171242_579868_9409286C 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: stable@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag
fixing commit: d44154f969a4 ("mtd: nand: Provide nand_cleanup() function to free NAND related resources").

The bot has tested the following trees: v5.6.13, v5.4.41, v4.19.123, v4.14.180, v4.9.223.

v5.6.13: Build OK!
v5.4.41: Build OK!
v4.19.123: Failed to apply! Possible dependencies:
    59ac276f2227 ("mtd: rawnand: Pass a nand_chip object to nand_release()")

v4.14.180: Failed to apply! Possible dependencies:
    02f26ecf8c77 ("mtd: nand: add reworked Marvell NAND controller driver")
    256c4fc76a80 ("mtd: rawnand: add a way to pass an ID table with nand_scan()")
    39b77c586e17 ("mtd: rawnand: fsl_elbc: fix probe function error path")
    59ac276f2227 ("mtd: rawnand: Pass a nand_chip object to nand_release()")
    63fa37f0c512 ("mtd: rawnand: Replace printk() with appropriate pr_*() macro")
    97d90da8a886 ("mtd: nand: provide several helpers to do common NAND operations")
    98732da1a08e ("mtd: rawnand: do not export nand_scan_[ident|tail]() anymore")
    acfc33091f7a ("mtd: rawnand: fsl_ifc: fix probe function error path")

v4.9.223: Failed to apply! Possible dependencies:
    24755a55b01f ("Documentation/00-index: update for new core-api folder")
    4ad4b21b1b81 ("docs-rst: convert usb docbooks to ReST")
    59ac276f2227 ("mtd: rawnand: Pass a nand_chip object to nand_release()")
    609f212f6a12 ("docs-rst: convert mtdnand book to ReST")
    66115335fbb4 ("docs: Fix build failure")
    7ddedebb03b7 ("ALSA: doc: ReSTize writing-an-alsa-driver document")
    8551914a5e19 ("ALSA: doc: ReSTize alsa-driver-api document")
    90f9f118b75c ("docs-rst: convert filesystems book to ReST")
    93dc3a112bf8 ("doc: Convert the debugobjects DocBook template to sphinx")
    c441a4781ff1 ("crypto: doc - remove crypto API DocBook")
    d6ba7a9c8b5a ("doc: Sphinxify the tracepoint docbook")
    e7f08ffb1855 ("Documentation/workqueue.txt: convert to ReST markup")
    f3fc83e55533 ("docs: Fix htmldocs build failure")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
