Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AFD139DEF
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 01:17:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V89o4Y3jzpl8fabR4zEnGiM9SgKvRGSRgk4MXSkbSwc=; b=EvqxuJ/KHkGX2J
	L1iRz4PlQFQ0T2LJPaYLmmM1yUZmkaL4ki4O/aKsIBjUhsR0KialxLMQ72V+4lsDPj9JjeRGkQPQd
	v5T4aENoqtCohILHazFYtvkA8Xeb3m1av3mP+qbVTm4f+v6gdUZ3xs/mtso9eoQflgfIV6b3+iEpP
	mVu851Qhe4l4TzDob5XxWUzmLxv1+ca8Qnem9vTvmMpqBwF3p5RE0AvmUOW+lyFkVeHaAa6MUCOmX
	QdzdHDLyZtN6rN1S8DliFA2E7Ky5BiGBvdEmkxGOd+hSY4G/RfgRHXfylubmDJEODXddPaGY0jRXQ
	Kd/IW+bIB/5eZYGPQLVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9ti-0000sK-5q; Tue, 14 Jan 2020 00:17:30 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9tY-0000rS-Da
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 00:17:21 +0000
Received: by mail-oi1-f196.google.com with SMTP id c77so10141008oib.7
 for <linux-mtd@lists.infradead.org>; Mon, 13 Jan 2020 16:17:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PuZkmizV0FjMntSV+5swUbzzYgbKg4dX9XcvnF9x9qQ=;
 b=SEgh/TlPy/9qKSCvD9teaWl1eo2emP8CyZisUb0dTJvBbmB6QIxtLqoQz/1/ATpcKU
 x6DP/v/E+HnLzJNbhACi6+YVt78CpUNqB5emcKe+8g2XGozSsFVBV82NUyOUs6WBKb6K
 zjmL930hLrRjCpHv796kuq/TUg6aQKlKGiU/F91nKtz8z5xkCDGXZflF0/JI6MQMVfIa
 S11ubkDcpj62WaieSEhidJ8KysezCDekB5DL22LGQ8xuaoPXBA1d0ikGSnE8MAkIWeyc
 FOnOdGLTs8TZrPeUgy4TGTSsAEmD4oDiBi7t4mOY4OAPdR4j6qd51hb8udunB+zBpp6B
 AJZA==
X-Gm-Message-State: APjAAAXn8qdZpIuIiPLQuQkf5SilOnnDkdGdeHg2WWp5lXMVN7+JEAIy
 DJ6yvhG0T3J5eDLP3azbDzc/DQfvEA==
X-Google-Smtp-Source: APXvYqyj6JceZdcwV4IRMQHLJysxjwBWqo+/c9vbNKneIH40xIcN1Sw2zhmd6yq3By//kbpAUIYldg==
X-Received: by 2002:aca:50cd:: with SMTP id
 e196mr14749038oib.178.1578961039291; 
 Mon, 13 Jan 2020 16:17:19 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q13sm4742957otc.5.2020.01.13.16.17.17
 for <linux-mtd@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 16:17:18 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 223d55
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 18:17:17 -0600
Date: Mon, 13 Jan 2020 18:17:17 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 09/17] dt-bindings: atmel-sysreg: add
 microchip,sam9x60-ddramc
Message-ID: <20200114001717.GA11996@bogus>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-10-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578673089-3484-10-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_161720_459344_6C06D7C7 
X-CRM114-Status: UNSURE (   8.74  )
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

On Fri, 10 Jan 2020 18:18:01 +0200, Claudiu Beznea wrote:
> Add microchip,sam9x60-ddramc to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/arm/atmel-sysregs.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
