Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B640B1CE830
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 00:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSAqSLSA+uQX5ag3cTS2vg4HYqzQj6QIznXHNDkMzOI=; b=m0RnAOC+GAUbu7
	L3li60LX/hdU9ERLs72DMnIrVe65nQ35hyJG1Pp8qcySdZBoZleZ0/zQMiWYHp7lFlQm/3jCyxifo
	kGTIzZdQcGOB+Yh1ESgdcwNMpW+bBbwNBg7uxFI/OJ+5HwFBwS8U3VAThILk2u2UeQFgwoPnQdZVm
	MO8D8F/oHNr85ce5OSQi99WXqy7E7IjHRMxL98/DC8R2Y+8HXOhgyDh25P71h7A6LmrDCpliiuFuc
	2U80cj7pIMSDkl2BYCVLay1UXZVd6NBh0txX9kRl1ZqT6777bG9eUvqoN8zhgsqL2GvtHlIc4VeCb
	GlZXMlpwqF+h2q8gDegg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYH0l-0005Pk-3v; Mon, 11 May 2020 22:34:59 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYH0a-0005PP-95
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 22:34:49 +0000
Received: by mail-ot1-f65.google.com with SMTP id z17so8962851oto.4
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 15:34:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eEYJO787L4hFdfVmppGJoURsIfu4v30oXYj733amcm8=;
 b=JIl7YmM8EW7GlO6MW8S/2RVfEvelkHL5LulMXkR1Gp7MYRFVzwf+IXzqAsHS10OgTI
 a46QyA2UoGPPmQY4JQL1OC7HJUqWB0ANHQindwZpVD7tMW6oLPGa9ECrKnpFeFDQQWQ8
 n+ldmLxzp4fJUCuw+r7q/xYI2EBini4a28pmylTrGtDlSFDO6lUAAa00hNO4fKHki9Lm
 ts4erFmNACmVJnanNCCA+npM/sgsOt5mFyXCknyQn2gXvooVGXgJ6Zq6Xksn53ekddM4
 4fORIVn4rZq8tfpGi8sE6CBjBqM2RrgfjFQP/3JquhNaG6eQQvrwQ4VHAZ4/ijBIn7lf
 ZGZw==
X-Gm-Message-State: AGi0PuZnMok25dI5KX63MT/ac2iYqm3rZ1dS/jJdhYNfWD70uG/zqhAa
 JCpk0e/Oklpn/Z+sVfGT/g==
X-Google-Smtp-Source: APiQypLtT/X05M8l7zBdEA0gsanAJHzjfh1Fbw4ZKIwZebB4QlF353Lej8+d2MpNzUXHB7tUhCMpfA==
X-Received: by 2002:a9d:6ad0:: with SMTP id m16mr13613165otq.122.1589236487268; 
 Mon, 11 May 2020 15:34:47 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n23sm1231572ota.37.2020.05.11.15.34.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 15:34:46 -0700 (PDT)
Received: (nullmailer pid 7417 invoked by uid 1000);
 Mon, 11 May 2020 22:34:45 -0000
Date: Mon, 11 May 2020 17:34:45 -0500
From: Rob Herring <robh@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 2/8] dt-bindings: intc: Convert ingenic,intc.txt to YAML
Message-ID: <20200511223445.GA7357@bogus>
References: <20200426185856.38826-1-paul@crapouillou.net>
 <20200426185856.38826-2-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426185856.38826-2-paul@crapouillou.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_153448_320687_3ED6BA37 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?utf-8?B?5ZGo55Cw5p2w?= <zhouyanjie@wanyeetech.com>,
 linux-gpio@vger.kernel.org, od@zcrc.me, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, 26 Apr 2020 20:58:50 +0200, Paul Cercueil wrote:
> Convert the ingenic,intc.txt doc file to ingenic,intc.yaml.
> 
> Some compatible strings now require a fallback, as the controller
> generally works the same across the SoCs families.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  .../interrupt-controller/ingenic,intc.txt     | 28 ---------
>  .../interrupt-controller/ingenic,intc.yaml    | 63 +++++++++++++++++++
>  2 files changed, 63 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.yaml
> 

Applied, thanks!

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
