Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFF81D2E78
	for <lists+linux-mtd@lfdr.de>; Thu, 14 May 2020 13:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=O9RCsDqaRlTinxjdkfZPDY8JGk1N1bXyucjusutNJD0=; b=dUO
	q4IImKiteqMXL5Q7CEy8zAO0GNFfAA03k+JT88UAfmc41m4PC8B/J+qJN9zsHDhrWIs9x26wrHuX4
	l5RjhiXjzqv671K3EBf/a3M0u8I+bzppaPFdLpu6t40ct3pO4Y87IaVW67+XVIetq2sVBZnUldS/J
	bsEoNF3WuIx9er06eYEEwsXTCPHMvx/YbNmvINLoemNfOtTNrrYb9a1fgvmAWN4JcY1dRhT9xwRJ9
	gf5Tu9ynUYua0W890Sw2XjNw/M05axHBEz+QhV3OcvL70+B1Xb51OhiPoHjDtxdj2NEZ/84NWf9kF
	pCC4RFxpHrOPJZnLR6ktdeXIXRWWueg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCB9-0004Cr-Ip; Thu, 14 May 2020 11:37:31 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCB2-0004Bo-15
 for linux-mtd@lists.infradead.org; Thu, 14 May 2020 11:37:25 +0000
Received: by mail-ej1-x630.google.com with SMTP id o10so2475617ejn.10
 for <linux-mtd@lists.infradead.org>; Thu, 14 May 2020 04:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=YKsV+lpXBLw7UdohT6iRD4vENKpR8u+Fq3734/Ni1hE=;
 b=b3EHUDXWHZ8kGGUE6r64j4QPHLdDW/56x0LwSk4YHe0ciTGxUr/g1OvjLEJrAY67XU
 0Iv82ADPvHRLLcuVSRCZGqxneRYh3UIFVZqwKSuxySLUbd6NfbQ4y6rGAW++ZcpaMLdu
 //qTfWwaPtp67ZASY8bHsNfFh3vX8zo9VhTpszOuxA7Sn0iVHhHUWVg9f46P2Nzx+9ET
 CF5y4HBy8EjkqJsiVfUQdvJhJLcN9RBxHz0FpMMCs2oQZ7lR4pIOEgzAmMOyz1NR3wGo
 sr8BBRI/qvVtb5iRmJL7tYCapt/hijQGsCgZpcqFsnYuU7X+9ScTNGSm2HkeW7F6P7KO
 KopQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=YKsV+lpXBLw7UdohT6iRD4vENKpR8u+Fq3734/Ni1hE=;
 b=CNib8rzeRkdsZMvvWFBd5oYWY2KjiDuw2sBS8ERDfb7XzrpTSKqoVeBX3R/5c2xot3
 c+SrujeqdgTQUGSF+yNdI0f57W9pqAepIpasMHt2M2oXioAPsVmy8v+ltC9VCs0uk4SM
 UafoGrK+pNgZ0fG+8C2sjr2De8jFTa7hq+2hwPp99UrlMs/XzJ1vQMtsmM5FW2B4J4mV
 R0pEqKn/tX0FmxDLIeqB5nxSRn5k83luPzn2bOXveAB6wz4ikOZZlnQ4JN0lN+RlaujI
 wQWVwqKG7j8gGSM4XQv3SsMOoY4GykUpxo/7ReXaYWe4h6JlYs7CnbmyqEZbNlHin9pB
 YrVw==
X-Gm-Message-State: AOAM532Ft1dseOEhHwXtJU7cBojsYSt04Ng8mdyAHkAt+ZijTsTPaGEb
 zu4NUB8YasKQC8ItQLM7HB9OS8lcOLaa+PpAenKZigWH
X-Google-Smtp-Source: ABdhPJxbQWKvFvFy8XnUoaUJXXbpbY4pqw46j19NPVuT64kS6miyS+o7s//J5mdCdAD6OCZNgSTuqPEWNo+TdFBpDdA=
X-Received: by 2002:a17:907:364:: with SMTP id
 rs4mr3291471ejb.311.1589456241453; 
 Thu, 14 May 2020 04:37:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:a881:0:0:0:0:0 with HTTP; Thu, 14 May 2020 04:37:20
 -0700 (PDT)
From: Jupiter <jupiter.hce@gmail.com>
Date: Thu, 14 May 2020 21:37:20 +1000
Message-ID: <CAA=hcWT7eQ5nXjqRyOG7jaH=K8OEa5w_AwbB_fTJ6JdM-=YDeg@mail.gmail.com>
Subject: Any UBIFS volume image installation command with selective ECC (DTB)
 in Linux?
To: linux-mtd <linux-mtd@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_043724_070308_A02DF25A 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
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

Hi,

I used ubinize to build a UBIFS image ubi.img, the image has three
volumes, dtb-volume (imx6ulz.dtb), kernel-volume and rootfs-volume.

To install u-boot and root UBIFS image to iMX6ULL NAND, I used a
zImage-initramfs to install the u-boot to u-boot mtd partition first,
then to install ubi.img in UBIFS partition by running following
commands:

flash_erase /dev/mtd2 0 0
ubiformat /dev/mtd2 -f /tmp/ubi.img

It was all fine, but after the installation, it cannot run ubi part in u-boot:

ubi0 error: ubi_io_read: error -74 (ECC error) while reading 64 bytes from PEB 3
83:0, read 64 bytes
ubi0 error: ubi_io_read: error -74 (ECC error) while reading 2048 bytes from PEB
 383:2048, read 2048 bytes

The problem was that u-boot installation requires a higher bit ECC, so
that zImage-initramfs was started with imx6ulz-kobs.dtb, if I change
to start  zImage-initramfs with a low bit ECC imx6ulz.dtb, that ECC
error gone away, but then I could not flash u-boot to NAND.

Are there any way or mtd / ubi command to flash ubi.img to NAND based
on a specific ECC / dtb?

Appreciate any your kind advice.

Thank you.

Kind regards,

- jupiter


-- 
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
