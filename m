Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678DF44F90
	for <lists+linux-mtd@lfdr.de>; Fri, 14 Jun 2019 00:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlBsNKOyCmUywf5/5y/J2RqBUXT14YdxUyp3P2Qrwv8=; b=VHLZy8ddVaDOrh
	jFAJMGYY/HY1SmNPe9oO1JPE3OQGZgR8eGgHoebefnZ1Mxwxh5k71gw2Tv3q7orPR4YAFLt04KpNf
	JSLXknd2umQvsm/g1CJujwfFuzIr/HYlpXXqpVO7qDWhZajoAXI2M6HJ1OjYf3B0cSonnPmukEZHK
	rcSxoY6SZHHQ3o+zhSDbSNk/ihVUZwq1pvuNrmfnHHKnVKMpdFTKm2O8mZozwThjKZ9mcG/2Ugntb
	hwn+YcXpQpu16nXuEWRMUI8TMmxecWZ11qCHAf1IRfysEFayoTnsiK5xvw9IWA24KQ6SYiNQa+S0b
	5wEuODVtHNI1Dv2okqMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYZb-0002dI-H4; Thu, 13 Jun 2019 22:51:59 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYZQ-0002cy-Cc
 for linux-mtd@lists.infradead.org; Thu, 13 Jun 2019 22:51:49 +0000
Received: by mail-qt1-f196.google.com with SMTP id 33so344277qtr.8
 for <linux-mtd@lists.infradead.org>; Thu, 13 Jun 2019 15:51:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H1jLdvJZozzrqHX1esdeObu7Bz6wiJlvCPsfxGMitgE=;
 b=PfuVWWfjfvlIbF62vtYUvqnkn3pHatohJ+yLKY6/M+vdDu4i3E2yqNySmfYZKVFRZU
 pWA22kgkJHlFzojC2XTxmuJnFyTDn60FRzr+Gig+dLusKzsMqk7q55EtqIRJzFgMWA/4
 RD5A+yfkqHWvYCAMEX5/eqABlBXM5CqI2XTx5Vk2eaxOWK+R6MmnfP7uQk0X8Mf1pj3S
 L9Qr0w1sT/p8E7hHdh94j+8TSI3MIaTxSSlqFIqnvl16MpCyQlwlTbpwR9HaUnOvdKm3
 6CiDZdPtzAmunRdCT4esSyetGW35ocZzBfejvPFkjD7vbPRVHFQDaydW4VKLKb5LBe22
 7P2w==
X-Gm-Message-State: APjAAAWTtd3cyipBoz6ERyQfbtIy6W57opz+ujF804hEgV6z4CdXbWgR
 KjJrMxCeg4ZmxhzxokVIIA==
X-Google-Smtp-Source: APXvYqzem4zi3kuCmkw6IRou/aoStUJUuSg911SowZ5Ya3+lMo/6NDr6HMK6vxTNwt20ngySVoIIkw==
X-Received: by 2002:ac8:3345:: with SMTP id u5mr79299891qta.219.1560466307557; 
 Thu, 13 Jun 2019 15:51:47 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id g53sm548681qtk.65.2019.06.13.15.51.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:51:47 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:51:46 -0600
From: Rob Herring <robh@kernel.org>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mtd: brcmnand: Make nand-ecc-strength
 and nand-ecc-step-size optional
Message-ID: <20190613225146.GA17725@bogus>
References: <1558117914-35807-1-git-send-email-kdasu.kdev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558117914-35807-1-git-send-email-kdasu.kdev@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_155148_423511_116FDCD7 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 14:29:54 -0400, Kamal Dasu wrote:
> nand-ecc-strength and nand-ecc-step-size can be made optional as
> brcmanand driver can support using the nand_base driver detected
> values.
> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> ---
>  Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
