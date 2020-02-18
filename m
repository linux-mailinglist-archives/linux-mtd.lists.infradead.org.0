Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DA1162128
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 07:52:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3krC8Sry643NZsqU02W3xx1IXYnPescbVwlKKAb1gqs=; b=FmhNOTA9RQ6sWF
	+ptrzH4alLqZQrN1uaEvcNZqyTukYeH1+vz9tPo23jxJbKPKr4qy4t6FV6g0QvFSihPqkvo1G5CHR
	kvPmScvdxSPvbzTirl48IuQYyGXWhwXbepT1REB5Glh6WcjkUPimg5oaG5AJhuxpiYV6dLNn/u6vf
	GDu9ONYfidPK851mR+pKhuTYonhF/asMqqmYfDgjCKgTwkoaORikHAZjRz1kBTvymP9kh+eHU0JaQ
	8Gj9OEyZ5GPMGhPDnGBYm1ncSFkjGql0rHtvdfI4Odx2fiaH9Ywa+A31P3qOShREa3jlCLYiHDPsj
	Py5wdPSofcd8pWIY/tww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3wkO-0004hj-EL; Tue, 18 Feb 2020 06:52:44 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3wkG-0004hK-Od
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 06:52:38 +0000
Received: by mail-il1-x142.google.com with SMTP id o13so7485985ilg.10
 for <linux-mtd@lists.infradead.org>; Mon, 17 Feb 2020 22:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=r0gJ4CmibCzOnUMxvLDm+ENFpaK28O+17XZqjlVk9uQ=;
 b=QuL2MkH7pWFbk16MZcEkADSCIxinwSqSgeARuCIgYwDQdNIMhfe5pb3Ow8MooTWf1n
 ThRp3K5KbaR7/xWyCYsFX7OOkuU3FMZK53eoDJRAL6ePKU4dif8ssczQTa7Lf69CgQi1
 wFEPgTd6V3o7BCVWZ4wId3KeoSo3y9WfqRkoce46BY72UZacVV5X7ToQ1Rkflqnu5Rxa
 bL6i2qDlqsu4D2rzq4fMQC8EKXY7mPZ7r8tFrfFnyCDgI5OeJHWPwdmFkC0M4bUQDVdb
 qjjotZA+EG4c+pUfDAEvGHxyJfVXP6dMmhWs8b65H4FEpWHF6d9FAtTFwqExDLSNvfnN
 nOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=r0gJ4CmibCzOnUMxvLDm+ENFpaK28O+17XZqjlVk9uQ=;
 b=j5U6jOJctfNJFNMOfA6Y/NJbAjMmHcUhrlmjIDV5kOQftfnbC2tk7vopOQ03Fb5qdB
 a2poJ0fe85Lne+fcXgQMD2co+4Az6D0+qA2pSx+3aPpx306GJH1AbLBr6QLMz1WPrPvU
 ka28ara29uKlIu1UG7/TOtDBlAWxc95Y0pqqDgNv7RGUSaTGfzQJDmqXRVVouyyUnLCz
 oB6cyH1jMblVbu25iRSoKYrMO2jKc0O6pksN6ocrobyj+A6JIOmT8ckmqmu8Noq/cf98
 P30JnEkA/4px2DUXBfCI+KVeKhPMwb0b/t0ZNpsek/je+KJ2tNC055deawttv7ojWsOm
 94Ew==
X-Gm-Message-State: APjAAAWOjziirArvewu5qBZTOWHOhSSsHln5QxLtQJIbhYHdlToDlrqo
 tf8kQ8uW9ddxUA8kShSdmCzr0Bn0Yo9PjpZX+oKruQs5
X-Google-Smtp-Source: APXvYqxQ0yGazQAGbuMutTIZ2X6wwAzcagGb8j3uk07ufANqPX+nsmMlZlzRj+GJkNBNDgNVygWTkae+fx6zIF/TyUE=
X-Received: by 2002:a92:ce85:: with SMTP id r5mr18629174ilo.301.1582008755526; 
 Mon, 17 Feb 2020 22:52:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Mon, 17 Feb 2020 22:52:35
 -0800 (PST)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 18 Feb 2020 17:52:35 +1100
Message-ID: <CAA=hcWQBEbO865h2qZEs6DfK8FrDYhMpw+EzPyQ8-g22H7ykug@mail.gmail.com>
Subject: u-boot saveenv corrupted other MTD parttions
To: U-Boot Mailing List <u-boot@lists.denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_225236_831702_39C65285 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Meta Freescale <meta-freescale@yoctoproject.org>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

I have three MTD partitions, the mtd2 storage installed UBIFS volumes,
first is dtb volume, second is kernel volume, third is rootfs volume.
The saveenv was configured to save environment variables to NAND
ubootenv.

gpmi-nand:1m(boot),1m(ubootenv),-(storage)

There was no issue to run NAND boot, but if I called saveenv in
u-boot, then I run bootcmd again, it could not boot from NAND any
more:

Bad Linux ARM zImage magic!

The saveenv does not take any parameters, how did it work to write to
the NAND 1m(ubootenv)?

=> saveenv
Saving Environment to NAND... Erasing NAND...
Erasing at 0x5e0000 -- 100% complete.
Writing to NAND... OK

It looks like that saveenv overwritten to the storage, is 0x5e0000 RAM
or NAND address?

Where was that address defined?

How do I know it was the NAND 1m(ubootenv) address?

Thank you.

Kind regards,

- jh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
