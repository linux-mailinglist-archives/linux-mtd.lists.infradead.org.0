Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F4713A48E
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 10:55:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjLjCH/h9ZScyxpGJonGKd0BO22CrAsv3OOCARYpd0g=; b=oD4/sa/ZCEnlO8
	VPokjUCYC262FNg0MrmNT+7ZKeMxnKkndQwS53kAwX9VY6w6BMXpaoQHPCUSoYpj6QoXVjQb2LdVM
	/SZogObtpIaeoCTQk7AFfM93EVAnibPntE0jbPczC5sUnr1JmymIzscwMsP3/MM4ack7x5OjxBbby
	rvcSfGu1koZEW4RVwstUuYQnesDC3L7vjEaddLppup/dsDUrNIQgrKv7vB7qx0ctun7bkduXrOun/
	0xvcYfdaUvuORulAf+wxYusM6WrNLB7iLXI+xj7y1wIYVDkR3maypTr08qa94024BH7oq9i0CXXa/
	2IM7XiWjkazDFY39rr7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIui-0006La-Vt; Tue, 14 Jan 2020 09:55:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irItg-0005gc-79; Tue, 14 Jan 2020 09:54:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pk/PiezUZIuYIE6cHFIFXJrI8qZxFepgsS2M0P93iYY=; b=wOnVUBNr3piZipq6fQb0jGTOo
 J0vu/ap1CmpN1xay2rTgVdZiQkUuGD97Gg5Ut/V3N1k0ydFn7jrBLUG3im4vUDWoSlrTrPEOFYYR6
 TLkE3MXTk4k62LMhYo6gMZekkHTgyTnw1gwePZOYRKHt61t+UV5Lb2AHSAoktKt2nmhHlUFA7pii+
 v7UOmWttMe8dUth13EMvMUuxFJ6H0g+KXSm1OgkahPdBTzYpf7xbfjmolQVKnuxPFqFBjti1hzFUK
 eV1PHw+OpW6cy8o7hpTN1EAnXAFCikda5/8TdP+5iAIGyGYYRaRFEGd5uQ5mqukEmM+L57DMdeiwO
 jyRDmUkcg==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIu0-0006j2-1T; Tue, 14 Jan 2020 09:54:28 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id AB574E0008;
 Tue, 14 Jan 2020 09:53:15 +0000 (UTC)
Date: Tue, 14 Jan 2020 10:53:15 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 07/17] dt-bindings: atmel-matrix: add
 microchip,sam9x60-matrix
Message-ID: <20200114095315.GG3137@piout.net>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-8-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578673089-3484-8-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_095424_094260_CC14F9A0 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, vigneshr@ti.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, pmeerw@pmeerw.net,
 miquel.raynal@bootlin.com, lee.jones@linaro.org, linux-rtc@vger.kernel.org,
 lars@metafoo.de, richard@nod.at, ludovic.desroches@microchip.com,
 wg@grandegger.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 tudor.ambarus@microchip.com, radu_nicolae.pirea@upb.ro,
 linux-can@vger.kernel.org, robh+dt@kernel.org, mkl@pengutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 richard.genoud@gmail.com, nicolas.ferre@microchip.com,
 linux-spi@vger.kernel.org, vkoul@kernel.org, knaack.h@gmx.de,
 dmaengine@vger.kernel.org, eugen.hristev@microchip.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 10/01/2020 18:17:59+0200, Claudiu Beznea wrote:
> Add microchip,sam9x60-matrix to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/mfd/atmel-matrix.txt | 1 +
>  1 file changed, 1 insertion(+)
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
