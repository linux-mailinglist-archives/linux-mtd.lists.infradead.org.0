Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE3D18D8EB
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Mar 2020 21:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NmPUbmDQjwejmwvO+92y8N44DgAjtpBOvjEnm3oUS5o=; b=fUZ
	NtnjYWNzrsVSnnnr5GfWjLDjMmKhiKT7CG149FjJYm0zoptjBoeYKZLaFj/7jOXNPiBFZqJVF5/7X
	aw9iu2DmARah+nnt1YxZAbBKWRHVAxaq6suw8VZNvZMtbp5pb0E2vEJY3290bO+op4KU9ekWnbo/r
	cpKqjbRnhN/uZrSRmisWBAOWSZwAlJ/ozHOsP2VWwU2qg0uQJ573VYYEoLoxKwHLILplGU2NjCkzS
	8qdKnjRfziOgeM1eih88av4pVCp7CtFeF1lnUoIvsMZp5R5rNXKNDZ+Nc73+ai6Aaj5Nn3JG5Wog9
	XQx06Sw2ASghCfL6tD7NybKImXId5xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFO9f-0000Fu-No; Fri, 20 Mar 2020 20:22:07 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFO9W-0000FX-4i
 for linux-mtd@lists.infradead.org; Fri, 20 Mar 2020 20:21:59 +0000
Received: by mail-ot1-x344.google.com with SMTP id 111so7243946oth.13
 for <linux-mtd@lists.infradead.org>; Fri, 20 Mar 2020 13:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bAKLsk79MfbDU+8bgYncdTYRGIojaGJPT8x8ZSlk32M=;
 b=hDmXRJ1EXXZBXAh20vDfIGuq2cUddKo+hBv5Wh22YQvKxhHhdhWqZhVagD1bcWBSI1
 52pVPuVedBRCL72064cDj8PDQagbJQ96fkSwsieLHGcpn++guvYXTtbneT6J/ZvoM/kP
 yz7izMn/O07rava5JLHYs08eZAa8leg7uEyNAKhI/fx+zfxI+9w8jukyHPE1SgNsBViG
 vHN4p3JGNLgHtLOasxNQAD5QzGuQUmKKAFbuY2M8FLDgSF8OFQ4jNGVfyE8abN/Pz3NQ
 fVr0hKTDrvZOX538L2W1/Yw4Ut3QoqM0Bcz2KnPzVsGla4rZ4vBTP+id5VcQ6XI3Jpgj
 n+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bAKLsk79MfbDU+8bgYncdTYRGIojaGJPT8x8ZSlk32M=;
 b=UaBkE5w23GIEBifu7a5AWtvNqTuwohrp4TQvzkFKJqsU7ZDRPTtb/wbOm/QtcPjFcf
 VZPDvRMMdyyMS/kypNIo9FAs6C5YvckGirgK8fR6t5Nk3IqzcbZmN731m2QF8+rysrzG
 wn2nv16NXsN5ul+imDj71PaHs1V2QVKyyCaRj4nLcXC+Eh8b8O44Y+S3HARPUAPU7IAl
 zQnXGR7Ik1tcWSaU6KYkOvcqQVPfYuTpnBoGFkb/N8b4WvPqzIBw/XsG+1hpgYYoVNMX
 xogpmTdD+rZrfmhcwqgY303rTh2Oe7RpD59gAXLgLm/sCWcuYQ1jeAiSoCNsfgkgqYMx
 /llg==
X-Gm-Message-State: ANhLgQ12x1MrXslDB1oWaLWJCYyxAUiuVpN0ajHLGMt/QUjZMOeEFWxx
 ntufpld9qVoa21FBf50jzWhRauNmOBIcExVZ+zY=
X-Google-Smtp-Source: ADFU+vua3D2LnGiPPPRkPSUZ5YDqHmmLal/2aFQkGjkDRJPyvezFmcZmhgwK6PZe3tqW4qXaXbqRT9tBsMq0p1jVKqs=
X-Received: by 2002:a9d:414:: with SMTP id 20mr8629135otc.300.1584735715177;
 Fri, 20 Mar 2020 13:21:55 -0700 (PDT)
MIME-Version: 1.0
From: ron minnich <rminnich@gmail.com>
Date: Fri, 20 Mar 2020 13:21:44 -0700
Message-ID: <CAP6exYL889zuXgDhLE3SdwzC4idZ6tbe2oqXQRpZT2M6SrRbFg@mail.gmail.com>
Subject: [PATCH 1/1] mtd: add | as a separator after mtd-id
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_132158_218816_B1F0948B 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The MTD subsystem can support command-line defined partitions
for one or more MTD devices.

The format is:
 * mtdparts=<mtddef>[;<mtddef]
 * <mtddef>  := <mtd-id>:<partdef>[,<partdef>]

The ':' currently separates the id from the partdef.

The mtdparts can define more than one part, in which case
there will be more than one <mtd-id>:<partdef> component.

The problem comes in with newer systems which have MTDs
attached to a PCI device, which has a PCI name including
several :'s, e.g. 0000:00:1f.5 on an Intel chipset. Although
this is largely an x86 problem at the moment, PCI is coming
to newer ARM systems, and they will hit this issue in future.

There are two : in the name alone. strchr is used to find
the <mtd-id>, and in this case it will return the wrong
result. Using strrchr is not an option, as there may
be more than one mtddef in the argument.

This patch defines a new delimiter, |, to seperate
the <mtd-id> from the <partdef>. | is rarely used
in device names, so seems a reasonable choice.

The code first searches for | and, if that fails, searches
for the old :. Eventually, it ought to be possible to remove
the support for : entirely, but since mtdparts are also defined
in FLASH in the device tree on many ARM boards, wholesale removal
is not yet practical.

This code has been used on real hardware and allowed us to use a
squashfs in SPI-NOR flash as a root file system, with partitions
defined on the cmdline.

Signed-off-by: Ronald G. Minnich <rminnich@google.com>
Change-Id: Ifce3627cb03247bf9e54c8b19d24b60baeed2ec3
---
 drivers/mtd/parsers/cmdlinepart.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/parsers/cmdlinepart.c
b/drivers/mtd/parsers/cmdlinepart.c
index c86f2db8c882..eca8ec026d89 100644
--- a/drivers/mtd/parsers/cmdlinepart.c
+++ b/drivers/mtd/parsers/cmdlinepart.c
@@ -223,7 +223,14 @@ static int mtdpart_setup_real(char *s)
         mtd_id = s;

         /* fetch <mtd-id> */
-        p = strchr(s, ':');
+        p = strchr(s, '|');
+        if (!p) {
+            /*
+             * ':' is the older separator, which conflicts
+             * with PCI IDs T:B:D.F; too many  :'s!
+             */
+            p = strchr(s, ':');
+        }
         if (!p) {
             pr_err("no mtd-id\n");
             return -EINVAL;
-- 
2.25.1.696.g5e7596f4ac-goog

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
