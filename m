Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D6B139E50
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 01:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okKdTS1Ew58YH+W0g811ju6pT5K8eXrkF5gy0nurT/o=; b=guftMyX2nUc+av
	zKI+XVLWbiAyQo4Zo0TGAuS79a1BM9lOpr4vPAdIanylR9pzmVsYt13KVnlAHIBdVYL+xPNYsqisS
	HPs57/VUSJJDFgcMiPHTB+KHLHcJgXdxQKLpbPO9puIBs8HFWYmHB0kerkAR0FVJgyv1C2Ols/ZsX
	zth15WmXNvp37oOsAW2OqDYfZfVGWthZKDgziQbTnPEwsZ8jVypgu02waZTSfa4LDIOD7STFdgVht
	uLHHm/bafbTvntxbue+Hyae/PYA8zl1kZFd8cCZBf5PvgSnrxD6gCOq3p1qOQYMtMA/OKPgIOK1QF
	SMeAD8UiZrrIG7Q/6HCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irA9R-0001RH-B8; Tue, 14 Jan 2020 00:33:45 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irA9H-0001Qz-SX
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 00:33:37 +0000
Received: by mail-oi1-f196.google.com with SMTP id 13so10151842oij.13
 for <linux-mtd@lists.infradead.org>; Mon, 13 Jan 2020 16:33:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fXJN2b85yGTyfLCLDYBimi22Hg8WM/nHD10wRzYfTm4=;
 b=iPA913ByHPS2uhGj4sMaYav7G2BuJVqC+y/zSbUjLGNlqajC3fFgBhycbl+KgPeWeK
 qPJpVExsPzifGC8VCQbmcttvrmN11gMD9xMG+xTDudhS2jtL25Z8nBEoGEb4X0NHhR94
 klzDSHfO/bquT2QlRA3nqxnMUTDC56gONmLGXRd2qbeTKEBtiXNzwc8QMBPOLQH2pnzv
 czyRgiGvd/2vlCIlevlgjwxD/ougjxPDqY/2P5+V/2KBjQuK8xT4u2+poV1k8+oZqX6z
 FlhQzUmp4RkIwuPCAtlK94Nm/lOYh6Y+RLhWVzaC+3sAnnZkXcgPHjXQilXPuGllvUFt
 /zLg==
X-Gm-Message-State: APjAAAVHe8nTlPivYU9Xg1T26GHQvUyLtmxTpiqsH15Ls7I1C6OPdfP8
 nlnkWiwMINXzshXvQYeBeknA4R/Dsw==
X-Google-Smtp-Source: APXvYqy+kgm20YISMpbbsXG50wgQyYVdtO25HiUgVL0s+NW1RwJP9i4jrJq4DgwcxcvZ5pZVJoL42g==
X-Received: by 2002:a05:6808:b37:: with SMTP id
 t23mr15045063oij.149.1578962014921; 
 Mon, 13 Jan 2020 16:33:34 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m19sm4767563otn.47.2020.01.13.16.33.32
 for <linux-mtd@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 16:33:33 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22198d
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 18:33:32 -0600
Date: Mon, 13 Jan 2020 18:33:32 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 15/17] dt-bindings: arm: add sam9x60-ek board
Message-ID: <20200114003332.GA3401@bogus>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-16-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578673089-3484-16-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_163335_923634_751AF22F 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com, vigneshr@ti.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, pmeerw@pmeerw.net, miquel.raynal@bootlin.com,
 lee.jones@linaro.org, linux-rtc@vger.kernel.org, lars@metafoo.de,
 richard@nod.at, ludovic.desroches@microchip.com, wg@grandegger.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 tudor.ambarus@microchip.com, radu_nicolae.pirea@upb.ro,
 linux-can@vger.kernel.org, robh+dt@kernel.org, mkl@pengutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 richard.genoud@gmail.com, nicolas.ferre@microchip.com,
 linux-spi@vger.kernel.org, vkoul@kernel.org, knaack.h@gmx.de,
 dmaengine@vger.kernel.org, eugen.hristev@microchip.com,
 Claudiu Beznea <claudiu.beznea@microchip.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 18:18:07 +0200, Claudiu Beznea wrote:
> Add documentation for SAM9X60-EK board.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
