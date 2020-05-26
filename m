Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF6A1CE8B6
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 01:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0W742NbPvMiL+/Zb/E1EnLzwN6aIpXf5mpoxIrUJfE=; b=oC3VxtjI2QVAVc
	eInK/bCCN9VR/j6XS4XuVh7/TbJQ2lRVKYuLjDx2tEisqt7P/L8bCrHR/Y8twuIYI3DpHLQhAqiAO
	GfLvwcp4rVQUklWjKXmJgL+CJMvcbewL/K7EgZ9fY5giIE4PQr/AQOt1Lm1SLwHDyOPR9J8pf6R6j
	+ah/uFpvCNLWV9zDyTghdYDsUDZ4c55yhTnHyFejrn5NCbiMLTxQmkt4nxp9UMwRNOMZiIrHppk4V
	Ht8tOhG1R9td9Q4gMlQeioUMiqyPBrSGoG/tb5fRLqk4d6hiONYts8igpOp5apFiv6rlBUdx+B4Mi
	XCSXEJdvSvkAPgWHd79w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHPu-00089r-MX; Mon, 11 May 2020 23:00:58 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHPm-00089T-5S
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 23:00:51 +0000
Received: by mail-ot1-f68.google.com with SMTP id j4so8985622otr.11
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 16:00:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R2FIzGJ36G+ksaMQBrNC7rs0zXCR6DoaIq7rGb+2bfY=;
 b=AlkFyQqgWtObjTzvmS33ml+kGnKhDTJeeqlhnIRJXYLiPW65jB3XCD3sf/pN9vB1fk
 9ro6YozcvEav7cE9JCT3ejtEmw8AZcqGDOczUYOLeuw0K+EA3sHCzClgd7hMp5ZCX1dF
 EOSZsNp17hdGIY2X6w8ro3mFVQZ89yNJzQZCC7R1HVXip2frq/P5SjdV5ti3Pp2HdXUi
 FUT79CtRQt6Kp7no3xGbXmne6B/xZ3aCjDPJHxPQRztPZU+Cx+kmfazgnejMvQMjf0Gm
 cY5iA7GsZagayocWWBvZzQUakfV+YxvpyBYIGHl+ua4cPkqh6UrSDma33gKw+Lm7NxAw
 +EZQ==
X-Gm-Message-State: AGi0PuaJCUJnk9rAPqZuJQMQqySwSiaHu0A8+oj+qmboyDuUxC6vXwKp
 5Dz9849G4hLD7KVHuEkjrQ==
X-Google-Smtp-Source: APiQypLIKWVpma3ZFGFIRQeE5SgL6Vd0dRhGSpaABZzl+NCkX37DvuxFgcB65JKK/JvD6gJaUgjqhw==
X-Received: by 2002:a05:6830:1613:: with SMTP id
 g19mr14466894otr.284.1589238049507; 
 Mon, 11 May 2020 16:00:49 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u197sm4933977oie.7.2020.05.11.16.00.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 16:00:49 -0700 (PDT)
Received: (nullmailer pid 11189 invoked by uid 1000);
 Mon, 11 May 2020 23:00:48 -0000
Date: Mon, 11 May 2020 18:00:48 -0500
From: Rob Herring <robh@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 6/8] dt-bindings: i2c: Convert i2c-jz4780.txt to YAML
Message-ID: <20200511230048.GA11123@bogus>
References: <20200426185856.38826-1-paul@crapouillou.net>
 <20200426185856.38826-6-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426185856.38826-6-paul@crapouillou.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_160050_203592_81095FA5 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, od@zcrc.me, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?utf-8?B?5ZGo55Cw5p2w?= <zhouyanjie@wanyeetech.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, 26 Apr 2020 20:58:54 +0200, Paul Cercueil wrote:
> Convert the i2c-jz4780.txt file to ingenic,i2c.yaml.
> 
> Two things were changed in the process:
> - the clock-frequency property can now only be set to the two values
>   that can be set by the hardware;
> - the dmas and dma-names properties are now required.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  .../devicetree/bindings/i2c/i2c-jz4780.txt    | 33 --------
>  .../devicetree/bindings/i2c/ingenic,i2c.yaml  | 83 +++++++++++++++++++
>  2 files changed, 83 insertions(+), 33 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-jz4780.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/ingenic,i2c.yaml
> 

Applied, thanks!

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
