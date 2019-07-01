Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A854187E
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Jun 2019 00:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhmBAnUg2sXyYeTbgQTh3uYLp5pmcY9ls4wcpOzNQiM=; b=D18MVYTUEQGW/V
	ReaS32BCH9IecZMjXxv83bQSsMDhcrcDURJP48zXgcf1PT9BtdDhtCuxiNiRVMj6ued/ywbfmp+fd
	41a4VzJdloXAuls/0UxBDxmTZue7yKUQ2J2Bb8BNJbPFSeRJYkHhopRlNTcOfgKVN6sW5ldUHTP1C
	XnAhQ9yKxjF7O3dfXg4ydM+XiYd/sn/z8vunOx/cB+16BOi6cO64ibVIA+0maaQ5Tjc80gC301u1V
	WxDuto2uU8MBVVRmRTJSkAzFeOjGvyl0NG7HGXPLY528GSAdHcvZ0NxoIoPH4n6sf90t5KZJRnbPu
	SZmzyCzUCjtkIC3qm1LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hapiO-0004W2-Qx; Tue, 11 Jun 2019 22:58:04 +0000
Received: from mail-it1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hapiH-0004Vf-EJ
 for linux-mtd@lists.infradead.org; Tue, 11 Jun 2019 22:57:58 +0000
Received: by mail-it1-f194.google.com with SMTP id r135so7596324ith.1
 for <linux-mtd@lists.infradead.org>; Tue, 11 Jun 2019 15:57:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lmkaxpGfKDXdssVFFm0WWQxz39RGTvG0gTf4Y0p48n4=;
 b=ey/OJoNOxVlpyjkApPGi7NGUq5sj67s6U+2lRRc2IxSNzzbNaF7ue393iQ/eFHAhHh
 BDYQKPeA5teZ8ahl+brhuDzsBMqxvfJKUdI95xVGIhXcMkHQBrDsUhrXZ7k3Ow6JOLpw
 NHXyBhGOui3UNBfXfK5ej3QxJEZST5ugi5JJj+OYtUDUJR5nW94y72ZtGhyZqoN0pKGt
 cJtCxyLOT1Zqmwxx3e7DHFw9ArIFY2rFsHQcJnR+VJw4Y9D5YyLswyy0lX/ITiZsVj8m
 Em1OWsUoTTWA+tLHW5OIXR8fVT9uvpTRVPPcKpKm0HzfwBVYxnVNIOt9X2LR/SXVuM6O
 FaHg==
X-Gm-Message-State: APjAAAUIIZ37R7rUpqg2aoLdGtKoZYIVct+cKle3LpgC/HCXphtJ4kis
 tYKPH/Bzv693FqoP1Q3pb4g1igg=
X-Google-Smtp-Source: APXvYqy0UyFUp0HcLidZZWaQ5Q2AZiuaGZqJRpMxMPnJHYbuAh+2deI17/ywBiA06Z4WubiGaiFzdA==
X-Received: by 2002:a24:c3c5:: with SMTP id
 s188mr20349397itg.168.1560293876746; 
 Tue, 11 Jun 2019 15:57:56 -0700 (PDT)
Received: from localhost (ip-174-149-252-64.englco.spcsdns.net.
 [174.149.252.64])
 by smtp.gmail.com with ESMTPSA id r127sm2202388itr.7.2019.06.11.15.57.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 15:57:56 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:57:53 -0600
From: Rob Herring <robh@kernel.org>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH v2 3/3] dt: bindings: mtd: brcmand: Add
 brcmnand,brcmnand-v7.3 support
Message-ID: <20190611225753.GA29277@bogus>
References: <1559659013-34502-1-git-send-email-kdasu.kdev@gmail.com>
 <1559659013-34502-3-git-send-email-kdasu.kdev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559659013-34502-3-git-send-email-kdasu.kdev@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_155757_479466_8F0D6CDB 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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

On Tue,  4 Jun 2019 10:36:31 -0400, Kamal Dasu wrote:
> Added brcm,brcmnand-v7.3 as possible compatible string to support
> brcmnand controller v7.3.
> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> ---
>  Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
