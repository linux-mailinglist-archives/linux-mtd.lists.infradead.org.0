Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4555614AFF6
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Jan 2020 07:54:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvZYK6XuU6M6AiEyH3yBs+O8z5p1/v3zfUundhBG/cw=; b=KCwB72Q46cEjbs
	Hn2wCW52503JzRGwqEbvka+3rUMmGAULJulAMDNrFioWfkPNkcMvHKnNFG8QR4jD39l/VJqYxkNWI
	fGouhh4ikksBou0sqBe8qhevCnF6nJF2jQeG732jta7rsz0i0GxupF3YDdCYKklcrOITtK9wlBLGH
	TAMPaypT1g/F01Gcg6N/yVtQs7/kZQoc5gv9Ii+lg9a3HjNBjebvWCdscBHySaV6Sikw8m7DpGSJ6
	VZvpZocCrhBNRNuNPuwRzzUZE6soxi7Gh8M24UFuwYbI3eQGPwkp7uw2MpRAc4AXaNVcRD6sKF4Oq
	4erkG/IN6B3cjN4xqD1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwKla-0002Ku-RV; Tue, 28 Jan 2020 06:54:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwKlS-0002KY-2D
 for linux-mtd@lists.infradead.org; Tue, 28 Jan 2020 06:54:23 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BBFC12852C3;
 Tue, 28 Jan 2020 06:54:20 +0000 (GMT)
Date: Tue, 28 Jan 2020 07:54:17 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] mtd: nand: Rename Toshiba Memory to Kioxia
Message-ID: <20200128075417.0fb68e10@collabora.com>
In-Reply-To: <20200127165148.1f8ef0f7@xps13>
References: <1579766643-4983-1-git-send-email-ytc-mb-yfuruyama7@kioxia.com>
 <20200127165148.1f8ef0f7@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_225422_239590_105F8373 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>, linux-mtd@lists.infradead.org,
 vigneshr@ti.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 27 Jan 2020 16:51:48 +0100
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Yoshio,
> 
> Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com> wrote on Thu, 23 Jan
> 2020 17:04:03 +0900:
> 
> > Rename Toshiba Memory to Kioxia since the company name has changed.  
> 
> I wonder how much this is a noisy change compared to its benefits
> 
> I would like more feedback. Richard, Boris, is this the first name we
> run into this situation? Ho was this handled in the past?

I don't think that's really useful. Maybe just add a comment above the
NAND_MFR_TOSHIBA definition stating that Toshiba and Kioxia ID are the
same. If Koxia starts producing new chip under the Koxia brand, new
files/structs/funcs/... can be prefixed with koxia instead of Toshiba.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
