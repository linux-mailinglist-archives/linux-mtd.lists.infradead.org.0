Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC761D6D75
	for <lists+linux-mtd@lfdr.de>; Sun, 17 May 2020 23:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9q+Zx9siB8V5tzUPWkaBgDa674mNMQcFGbaFqokDhKg=; b=dyhn2UaYTU3sex
	vfs4oxC6rmjAKsnTdPN4HZaOsAii837QJh0aCkA4uJYfH/Glt0zmj7qvZX6so8IBD2+BCDKOSVd1y
	DVerHOJNnrcvA+FUtobsFYA8qkrBIFoXFMiqsSDyeHD4NOulqASEucB97xuS6iQDawKhvPbqBP/vy
	XCGyzo5tsY6vDbfBqslRkBV5MYyhfxOYu49uu/nvO4JLdSu+pvWCSIk6ojnySgfYNoSYEly8O7v4P
	7lY4FVb+voW+fOWNvj/9zL8cRi56YxeDBB8HjIYV91vCm5DNo2rZlyCfWS1ctYFDvbhoUpq1YLb+2
	RDdNyA5cIVyDqKkUwPvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaQps-0007Br-St; Sun, 17 May 2020 21:28:40 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaQpg-0007BS-Jn
 for linux-mtd@lists.infradead.org; Sun, 17 May 2020 21:28:30 +0000
Received: by mail-qv1-xf41.google.com with SMTP id z5so3818811qvw.4
 for <linux-mtd@lists.infradead.org>; Sun, 17 May 2020 14:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hR8L+XxeH3eijW5vNzyrWdQNDdMZfBNndiSBWjJ9E9Y=;
 b=k5SQL9l64XRJm084jCUKZf8PbsK9aKPWl4wq4kHcJk6GpH0dL2cQY4E2rr24QBTto5
 vxFGhb1Jo7MaSZ2SJTXbBj2OH+DW1VEQrrAbtreWtXC6yFEHlZNr0+gSru0t7b5aHUDC
 +3X7r0eDj7B+eAlX1/pVw+1zUKzCfvAUDUMjL1BikivT+7rz8lcfKkSPfxXWXgo2iAII
 BMOkFOiV4uMV0EBz9yhay+lBomjVL0QV3U7knqgxKky34FvIhMMj3R6a6tbqytKwOiOr
 EDixRJxY7LZUtJPcRamwbqjUFq6myCfZQ8uE5Hrc/1YXr5x1V5s0/9E/JIRz6VKUubjQ
 xQdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hR8L+XxeH3eijW5vNzyrWdQNDdMZfBNndiSBWjJ9E9Y=;
 b=ucCKjOchy9XpqRBXWF5ncdcLeH2+wtNdfyK5L2LtUGnmZCTgaTMqyjQp8bE7w6LYV7
 ngbsjKRLHyxNvSzwNrajJ/JbT4V4zqnGuqcuS/NoX4T2fNbDfdkyWO4za0S7iSCP0CNF
 JImbFklRbo2yXx2S2Qo6hO21NWSuw7hpFF8/a1Sw66DTEf8jZhkwxbxA1tWEgkoYNUVB
 v9d5btFgJGtv1QgStoAI5f6Q+L7M8LIKjQxhzu45drEnVaMik3w2wJDA5WAI2Rp3Wh1O
 6V/rSbzQQ11PeHZoG0w0L5vIdifo+mw7sZLKpglrEXkfCxhjKPgzKkTOmYRFod59HTCk
 HPfA==
X-Gm-Message-State: AOAM53330vdJQm7Po2fzvjvYHBUdFX6lg2PlJAtaJAW/mLXw1JHAtIr1
 HGtOcRrqHqK21vkYJeO+HNtQhF+8pIFqzKtU2CA=
X-Google-Smtp-Source: ABdhPJy76x1/A9z4b36Wr9pYv62HSn+NArnOEG9qqCSPVmVnSjPcgL1AJZoP11JnTLCCROQslCNA/Cinc8vpFj8Jads=
X-Received: by 2002:a05:6214:1265:: with SMTP id
 r5mr12686299qvv.171.1589750905120; 
 Sun, 17 May 2020 14:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200513131029.15603-1-miquel.raynal@bootlin.com>
 <20200513180943.63efe337@collabora.com>
In-Reply-To: <20200513180943.63efe337@collabora.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 17 May 2020 23:28:13 +0200
Message-ID: <CAFLxGvw1L=VfvcBXo05EOPKPRk=yknzOUB0zoQ=-r=XCAce4vg@mail.gmail.com>
Subject: Re: [PATCH resend] mtd: spinand: Propagate ECC information to the MTD
 structure
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_142828_698329_39F2626B 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, stable <stable@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 6:09 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Wed, 13 May 2020 15:10:29 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> > This is done by default in the raw NAND core (nand_base.c) but was
> > missing in the SPI-NAND core. Without these two lines the ecc_strength
> > and ecc_step_size values are not exported to the user through sysfs.
> >
> > This fix depends on recent changes and should not be backported as-is.
> >
> > Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Applied, thanks!

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
