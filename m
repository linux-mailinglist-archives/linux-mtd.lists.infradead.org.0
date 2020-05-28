Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2501E6D90
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 23:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1An206rVotgEfZuV0FNjEJTCyKuFZc5aHfWBx47NUGA=; b=oth32RsHITICPX
	g5c+hsB/Cv/KjMvACtrNH8hK47KEKV5kMS5zbOLVQ4cvoLldD9uYYcBDz9d5JZJ625G2uRcwU4Q8O
	EJYXq98lDfGnNJ1D/2kAgN7/ddWJRG9OzEBZOi/EIxzXrjQ47V5hTWWu7xvvgNpA0GRhNV5JCSxiI
	fDBRbGs9veiFAkx0rM0OkdolzsyrjjybzuqMQDsnlC58vyo7gv+y6M2o7KK/b7nKklZHSAyKlgfQu
	X0Q6hN3lXQY1ab4NrOXhQsIzAXBkslHTVW8yasZZi1aH52roaguckEP6Vqu3A9HDElZYfDvXelFRq
	+cqvEdWMNSeE+CYPKjNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePyk-0007QR-Ml; Thu, 28 May 2020 21:22:18 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePya-0007Q7-4A
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 21:22:09 +0000
Received: by mail-il1-f193.google.com with SMTP id l20so375726ilj.10
 for <linux-mtd@lists.infradead.org>; Thu, 28 May 2020 14:22:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=To0MImAwjvqag3VAUNXV0DUtWR10A9REtHprkgmtmDY=;
 b=VdbthW0WhzxbWpivVym25+4MRpypBgqa3BQwTSLdzqshJUO62HbH42n1EMz7BZwyH2
 3bN191jR9EKEYrkzPVTMzYRDhYUvFb5le0QrwRas/wACtLtv+e24/J+BoHe1G4pmuFjf
 3LgyxJHb3Oyves0fJStDfLyT+2JWKcaUbwOtmqPXlS2WAc5B7jq5z6hNtdLV96r9MLbM
 h6t2B3Sr4GqjYDWjQwvX3PZ7IMFNyeSuPgBBe9+TYEEDhvF1ft5o2tO1/FzFq+yWuL3F
 yXDI6Sy43c/4SoI0S1gSEm8AYy5cLHPwhaZZ0nouKXVkWNbu0oKSgHz4eREpgNTAXGmv
 2XRw==
X-Gm-Message-State: AOAM533hf3IxN7djDS6SGBbLQHLdMboCpEn03i51JTQYC0GaDwfPCQkP
 VH+7DElusMvgPYPEgkqIyw==
X-Google-Smtp-Source: ABdhPJxPQCBhqRbh6yY1Y0SKjEPh0cgrS1kldGfVcUomDpSrOeTHfsYVtZpMp1cbWsXyfhkhQ9Tm+Q==
X-Received: by 2002:a92:d449:: with SMTP id r9mr4794314ilm.166.1590700927426; 
 Thu, 28 May 2020 14:22:07 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id c70sm1216409ila.42.2020.05.28.14.22.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 14:22:06 -0700 (PDT)
Received: (nullmailer pid 708257 invoked by uid 1000);
 Thu, 28 May 2020 21:22:05 -0000
Date: Thu, 28 May 2020 15:22:05 -0600
From: Rob Herring <robh@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: mtd: nand: Document the generic
 rb-gpios property
Message-ID: <20200528212205.GA708162@bogus>
References: <20200519232454.374081-1-boris.brezillon@collabora.com>
 <20200519232454.374081-2-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519232454.374081-2-boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_142208_168060_F25CF81D 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Paul Cercueil <paul@crapouillou.net>,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 Harvey Hunt <harveyhuntnexus@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 01:24:52 +0200, Boris Brezillon wrote:
> A few drivers use this property to describe GPIO pins used to sample
> the NAND Ready/Busy state. Let's make it part of the generic binding
> doc.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
> Changes in v2:
> * New patch
> ---
>  Documentation/devicetree/bindings/mtd/nand-controller.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
