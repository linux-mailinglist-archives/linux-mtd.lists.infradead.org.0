Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D69B139D3E
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 00:23:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9v5ezVjHxSuMTckZvE/ZOJBpiASloUBBLrgL74+Xak=; b=aXVXdAg04eXdI2
	0aYRzX+RGXqYCkYA21ctVuXJP30kETdyRxFp/KmypJyiB9jsq0THsgKf9V2agtbeznafC4mSyGKgI
	6D7xa4/WsiAniYeF4yv0pl2iDGNpWJZmeC9eR6V9ONWrOncLk6k0oKx8leju6PX/nDdPglVb+JMxt
	gMjC3M1Qr+v4fSJCLH0z8SnInhtpad99Q4Cvzd9hqq63NS7sEaMi9vjgIA4umvfGjmMYk+LpwF7jT
	IdOj5ce2+EG2Q29NRyeqO8RRSyP7L/RGZuiWhnB3JNrkMVSgdvPRNML2DEgxk3lK+Fr/uyggq2X1a
	MiY33tZ9ZLFRYtbgwFpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir93O-0001Wd-0w; Mon, 13 Jan 2020 23:23:26 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir93D-0001WB-AX
 for linux-mtd@lists.infradead.org; Mon, 13 Jan 2020 23:23:16 +0000
Received: by mail-ot1-f65.google.com with SMTP id 77so10725690oty.6
 for <linux-mtd@lists.infradead.org>; Mon, 13 Jan 2020 15:23:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7d1TijNzzm5olBqQ6BOPTTjVLO96fK38vWoVBLQU76w=;
 b=fv8d+O/fRrcYMK/5buAAXF5+vl1ZuHgd5MTwekDyHdLKqhU5910/YiLXOFT0bxLTUH
 vqfrhS7LoEWIhbSkfaVrn25CExozlUyGb2hyKai/tJc0vm7spvSDnjbMXqZ4l+ncU/yc
 Sxaik7nsOkOyzdIj7WxIbOryq+IhtDx8aVyXwwNOvihjTDQOFhswCdpTtmKYQDCHgMF4
 Ck/vO4por9kJXP+3dR0jw6z2/Ggieg0fb6dPqwqZLmq8QrQkvtm8o+m8/j1Ms5gim6jL
 VKqJPInFLrTmFn48Tff3JZXbfXeVEekDpKzZjcNjb68/z7qodb2ML/tmQfIdvV1/MmK1
 61eg==
X-Gm-Message-State: APjAAAX7pEkvdstgR229LTYQpEn9bOYLt26kP2SqPTG6Wd30P+bAi1lF
 y3JsGeUhTJynTM719fqlSi99R/iKIQ==
X-Google-Smtp-Source: APXvYqzYoenxKfFggPmjH4gzg6i8RgsCUuOmGsuaGvAEAD4wgdC3srdmE9Q8TG/NGLtfi9h50k8YEw==
X-Received: by 2002:a9d:65cf:: with SMTP id z15mr15366324oth.238.1578957792557; 
 Mon, 13 Jan 2020 15:23:12 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l17sm4769978ota.27.2020.01.13.15.23.11
 for <linux-mtd@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 15:23:11 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219d0
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 17:23:10 -0600
Date: Mon, 13 Jan 2020 17:23:10 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 02/17] dt-bindings: at_xdmac: add microchip, sam9x60-dma
Message-ID: <20200113232310.GA30698@bogus>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578673089-3484-3-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_152315_365528_25712737 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Fri, 10 Jan 2020 18:17:54 +0200, Claudiu Beznea wrote:
> Add microchip,sam9x60-dma to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/dma/atmel-xdma.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
