Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BCC145A78
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Jan 2020 18:00:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0ro4v/HlPFV56wus2KF2K+gU0wms4XtRjc4yV5oMdQ=; b=GdVytKCM+TWqVZ
	v/Pqc9Vc1kUe2W8I6tyz2zwRy7g3/3Nja7pGgEBZvAzqWbhkpX17ZrQVeIY9sSvz3CgVjBfYzYkPZ
	MAwIGlqrIjIleBMT9QO05AU6j1NHFMgHCxPX4fY7nDB1RDKa2WW4Cpt4K8rmo/BnzyHQDDttIkNIs
	Ys9PI5pmwoBWwioiizeePmdjNr8QV6RBOAjiqA+l3MTah4V4ZzHyPQO8+Opw67vRcLElsE0VPdpPc
	IAQXSn8YunpHk9yXGbczrlqzpKpqme4m+d5QD6ljMhg+knMzRNYz9gmKkwp0wYc575E/95u4Ef7qC
	of5xTLXIOg42ku5/Ylgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuJMV-0001o2-Lw; Wed, 22 Jan 2020 17:00:15 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuJMB-0001nV-7w
 for linux-mtd@lists.infradead.org; Wed, 22 Jan 2020 16:59:56 +0000
Received: by mail-oi1-f194.google.com with SMTP id c77so36467oib.7
 for <linux-mtd@lists.infradead.org>; Wed, 22 Jan 2020 08:59:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MDfiBL9hRIkQihktjqWJHDulsuoBJ4pn4Oh6gdd9G/o=;
 b=JCR1lg03BB5vJ1eaUJX+618CyvHPB3xeeXGC83Rtx3V6BMWfpTtYrdPA4UNS/La2ps
 uXjW+9Gns4AayetStPvCZSwDxznUQcySA1eIcrzIkNqowGTESpl3t2UPgBie8oNaDMxi
 qRs08MjBJSa3O4hkp1Fs11LHgGitR7M4NWEYSt2grSajsJ3amp0sHs3g/8Lx9HHqPmrd
 A6cGkqoqywkHy5EKHbDInP4cDZl8a8olndaVO/yuwqGuUIQn4u/P+h2rUjhkUyfilmVJ
 v+LZ1DqZ/bllrMKt8ojZfuOSF4p3+BDxRsIsFHUDXXwxO0WANsJFlAXFWKF+r+k3nPMX
 79bA==
X-Gm-Message-State: APjAAAVz/YTwjx5akgPtA3wSKXdt7BGachsTAxulr92XTcFBg0tQUYer
 A8y9fbcrj404iE5b0p4Osw==
X-Google-Smtp-Source: APXvYqy/buEH2irQzHZ7iB8zOrFJTgu/RpXFmiyIgGAQ/cqqf+k0u1vTUvftpZN1fotzOGFfgb9/EA==
X-Received: by 2002:aca:5490:: with SMTP id i138mr7622913oib.69.1579712394590; 
 Wed, 22 Jan 2020 08:59:54 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j186sm13213861oih.55.2020.01.22.08.59.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 08:59:54 -0800 (PST)
Received: (nullmailer pid 8001 invoked by uid 1000);
 Wed, 22 Jan 2020 16:59:53 -0000
Date: Wed, 22 Jan 2020 10:59:53 -0600
From: Rob Herring <robh@kernel.org>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH V2 1/3] dt: bindings: brcmnand: Add support for flash-edu
Message-ID: <20200122165953.GA7321@bogus>
References: <20200121200011.32296-1-kdasu.kdev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121200011.32296-1-kdasu.kdev@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_085955_286852_7C42111C 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 21 Jan 2020 15:00:06 -0500, Kamal Dasu wrote:
> Adding support for EBI DMA unit (EDU).
> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> ---
>  .../devicetree/bindings/mtd/brcm,brcmnand.txt          | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
