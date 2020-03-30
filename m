Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACD0198832
	for <lists+linux-mtd@lfdr.de>; Tue, 31 Mar 2020 01:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99hoHckcwPVx5eBwubB4hI4tKgSTb2Es1PgaUQLmq08=; b=pK+v/6jVYQBAUR
	MF9dEEDJkwYxGhDn61DwQcOvfVhnEt2bZgaJTHbsMKCgj/pUyUgSv0lH+rdybD/Bk7j4ciMXorUHm
	Y8Nrts0owpEmGDZWc6uD8Kvk0QNzrI6bgHfRMMPI3CrmIru9h8UPxa+9E6qmARn/7vIfv/g38Ar3n
	xm5wKAEByy1zl3kojyv57SZznn2zqcVNPJlOKS1QLTQQAanF17Gm5Fp/kwTYPW+7HGX/9oggoHRZf
	pK4XUjiiKIJdm+JviFgyEmEm+9g448ow3KpMLH7w+DXyrvlFpXAgFRJSqRqVbLTKXCYLTcmFEOzz7
	ixvEnJ/GJwuzqO+UhIXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3m4-0004Zc-9H; Mon, 30 Mar 2020 23:24:56 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3lw-0004ZB-BF; Mon, 30 Mar 2020 23:24:49 +0000
Received: by mail-il1-f194.google.com with SMTP id j9so17686798ilr.7;
 Mon, 30 Mar 2020 16:24:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CC29pPEJVsj/olmXrYwrrs1WbFltwLCfY/YhyQ6LBi8=;
 b=GEaNX1crmTvCXwoJbw4TrmhW1tndPR9o6C5Hy/7vqmYEt2u4FM2O6wJPznEDKEq6p5
 N7SbxuSK926V/l4T+xBYWYRI0VANoVcPk8miZL5LwZyNicm576HQpVzesD2TSKml/wCl
 PFAXJb3kAR2BPZWqZyP/65/PfeewRG+X+tKlKcVpX+icVzQXXeqWoZNyW/SaxEVPzbIi
 R0202DJpu0/EESmzrUQVYwfa9jKuFn2yTihkPk5P0PcapcNTKqcXY1EP+sHa4RfrKnwL
 MvTzru5vON1mQ5UCIk3Zr/Caknp7S41NrR2i4FystfnPfu9vHDOyqhMaVM2WIlc/SPVi
 okag==
X-Gm-Message-State: ANhLgQ0CzSaSf+YJ/PcH90TdA06ZHeoMxZRiWSBYi94CDg/JAkEkkhRA
 zPMiLdND4eWQ1SWcjP3lv/4BaB0=
X-Google-Smtp-Source: ADFU+vuZfs7W/SJxu9kQbH23CnLKgJC2K3wVUSRDfLJApSEDT2u2swu66HFmJR+6eW7vByOZ1Qmgxw==
X-Received: by 2002:a92:8cc7:: with SMTP id s68mr14150833ill.268.1585610687740; 
 Mon, 30 Mar 2020 16:24:47 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id g69sm5372067ile.3.2020.03.30.16.24.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:24:47 -0700 (PDT)
Received: (nullmailer pid 22917 invoked by uid 1000);
 Mon, 30 Mar 2020 23:24:46 -0000
Date: Mon, 30 Mar 2020 17:24:46 -0600
From: Rob Herring <robh@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Message-ID: <20200330232446.GA22844@bogus>
References: <20200320093342.15470-1-yifeng.zhao@rock-chips.com>
 <20200320093342.15470-3-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320093342.15470-3-yifeng.zhao@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_162448_385705_76406F02 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, vigneshr@ti.com, richard@nod.at,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 20 Mar 2020 17:33:41 +0800, Yifeng Zhao wrote:
> Documentation support for Rockchip RK3xxx NAND flash controllers
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v4:
> - The compatible define with rkxx_nfc
> - Add assigned-clocks
> - Fix some wrong define
> 
> Changes in v3:
> - Change the title for the dt-bindings
> 
> Changes in v2: None
> 
>  .../bindings/mtd/rockchip,nand.yaml           | 101 ++++++++++++++++++
>  1 file changed, 101 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
