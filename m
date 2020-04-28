Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261DA1BB681
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 08:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vun0J76vAYdBj7UGYAYvTmGio2jC2cB3i4azsWe6ddU=; b=q4LyA+hs8CXVr5
	h6ZPz2v/dJRIcJ4scwXmjWUIxLjZhxtu2JLXd0CkPOdYaF2kOUeQgXh+qkQq81IZKtKEH+yJOR1od
	JPrpRSCCI/4Bcz6y5evKDNtulAH+DXuOoZGsk6x49MNSbnlBZg9AvElH65UY6k/qwrt/TFzlcuFy2
	iZW6GDQVkS+JI4mj444mmHYLVgq6Z1BDFw26ast+fVTOvR6BLfoOs0ZGqkVsW1Yb3MgBIUJasWkl6
	rKBt2w6fBAbEc3E1xG5r9shpo3z7gPDrB3IYoDFb8l3j3ZBPZn/YyOf7IvzC7yxhm58KiiX3g9QKE
	0SbRJyq5s18AFhLOHHag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTJgC-0006VP-Rb; Tue, 28 Apr 2020 06:25:16 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJfs-0006U9-VD
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 06:24:58 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1063126D046;
 Tue, 28 Apr 2020 07:24:55 +0100 (BST)
Date: Tue, 28 Apr 2020 08:24:51 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 15/17] mtd: rawnand: cafe: Adjust the
 cafe_{read,write}_buf() prototypes
Message-ID: <20200428082451.01e8cd98@collabora.com>
In-Reply-To: <20200427220055.723a4de6@xps13>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-16-boris.brezillon@collabora.com>
 <20200427220055.723a4de6@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_232457_130790_6E3767D1 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>,
 David Woodhouse <dwmw2@infradead.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 22:00:55 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Mon, 27 Apr
> 2020 10:20:25 +0200:
> 
> > Replace the uint8_t pointer by a void pointer and make the length
> > unsigned so it matches what's passed through the nand instructions.
> >   
> 
> Nit: I prefer NAND than nand in plain English.

Will fix that.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
