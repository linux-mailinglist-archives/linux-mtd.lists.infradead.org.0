Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4CD14A44F
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Jan 2020 13:56:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TYSRMQkWi9pxBqv2JBa9k0f59ZCz6XHCL4ngIU+pDkk=; b=bGIPg/kIh8wnoa
	1QuQ2HC/g5QtK8KYhXS1/q0kthHAUcg+XIb2go9xt5VtphyV8wQ672/GrkOwEYpLjMHVHkTPA846r
	Rte1d8NX4eumsKjVp51GzCmhDQ3WOOWxKmKFgqmJm32z+CjzvZgO1qrEdI4jMOH4UgWK2hvuNJTiS
	/7cBVQ8gwGKqd0+rhlu54PsfdA69q+JnLNd3XseapXsCzXQ8gpc5VH8IFSyQKKnWIt18liVP2ZKMa
	tM+4+zEsHiDMo+ULG4WfaGnW4FTkzFNKR0gdRMnA/xLizYHtKCsxjjro/D2tfIDddLcjG8rupMQGR
	VoBLoLYDLPKeWvfpQ+dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3wK-0007Iy-QC; Mon, 27 Jan 2020 12:56:28 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3w9-0007Ie-0a
 for linux-mtd@lists.infradead.org; Mon, 27 Jan 2020 12:56:18 +0000
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 00RCu2Du025439
 for <linux-mtd@lists.infradead.org>; Mon, 27 Jan 2020 21:56:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 00RCu2Du025439
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1580129763;
 bh=dGCJAhJbUqKnSgxJYoXM3jsc9acDTx2CkDjtkeQlhGU=;
 h=From:Date:Subject:To:Cc:From;
 b=GLhdlobXtHz2mq06vtVXyy12ZSIMD3eIAwNIuHFhH7mp/cJ4wepYqbAJCF8H8onWN
 yVv0pogud67uu92EzzHEyHit4h0uPDsa3inLCSM27aCnRBQXNa/z9JO9cOnpFkgGmb
 5PxdB+d1UFdUMN4b2jJWuOS3GJjN1gWhRRgXnG85SrJzOjW44/nozwNLFvpqjmvMud
 3FrbLNJpkUVijQIst1JnbfYWYSX/oG6roeRiHv+y4TGtTImIiU7fVO0MdgQNiw9Sac
 96AIRBm5mhpEUGZ8quPTgS9U1ToKHWUhX5bAziM5XxWxHUgSoh0zDx4W1fTNEX/sU8
 57FZU4zO3grZw==
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id i4so2593903vkc.3
 for <linux-mtd@lists.infradead.org>; Mon, 27 Jan 2020 04:56:03 -0800 (PST)
X-Gm-Message-State: APjAAAUtbPopy95Vd8MwjKI63h7QHh1vzskcnqa/RvYwznIyQswqulPw
 i7FTxOe9ROTRuNR21hXlKa6R7BHwqvKA1/jUnvo=
X-Google-Smtp-Source: APXvYqwvFOtz0RrJXzHK0X5fA15DZBprq5KVq/jc9f0H9xTNVNDkQwuKFzXCjMZmCjtSJC5i1PziAy9UPHv6VzZxTwE=
X-Received: by 2002:a1f:1bc3:: with SMTP id b186mr8870779vkb.96.1580129761632; 
 Mon, 27 Jan 2020 04:56:01 -0800 (PST)
MIME-Version: 1.0
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 27 Jan 2020 21:55:25 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR0FemABUg5uN5fhy5LRsOm7n5GhmFVVHE8T57knDM9Ug@mail.gmail.com>
Message-ID: <CAK7LNAR0FemABUg5uN5fhy5LRsOm7n5GhmFVVHE8T57knDM9Ug@mail.gmail.com>
Subject: How to handle write-protect pin of NAND device ?
To: linux-mtd <linux-mtd@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_045617_307170_D1130A16 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi.

I have a question about the
WP_n pin of a NAND chip.


As far as I see, the NAND framework does not
handle it.

Instead, it is handled in a driver level.
I see some DT-bindings that handle the WP_n pin.

$ git grep wp -- Documentation/devicetree/bindings/mtd/
Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt:-
brcm,nand-has-wp          : Some versions of this IP include a
write-protect
Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt:-
wp-gpios: GPIO specifier for the write protect pin.
Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt:
         wp-gpios = <&gpf 22 GPIO_ACTIVE_LOW>;
Documentation/devicetree/bindings/mtd/nvidia-tegra20-nand.txt:-
wp-gpios: GPIO specifier for the write protect pin.
Documentation/devicetree/bindings/mtd/nvidia-tegra20-nand.txt:
         wp-gpios = <&gpio TEGRA_GPIO(S, 0) GPIO_ACTIVE_LOW>;



I wrote a patch to avoid read-only issue in some cases:
http://patchwork.ozlabs.org/patch/1229749/

Generally speaking, we expect NAND devices
are writable in Linux. So, I think my patch is OK.


However, I asked this myself:
Is there a useful case to assert the write protect
pin in order to make the NAND chip really read-only?
For example, the system recovery image is stored in
a read-only device, and the write-protect pin is
kept asserted to assure nobody accidentally corrupts it.

But, I am not sure if it should be handled in the
framework level with a more generic DT-binding.


Comments are appreciated.

--
Best Regards
Masahiro Yamada

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
