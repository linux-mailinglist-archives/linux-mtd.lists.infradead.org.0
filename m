Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A91561D892B
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 22:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iLVf/r3yc3MlvYP3XjrC8tIc38QeX7pr9Fw3sVg+79U=; b=Z+DXaeR20uWZ1I
	QZcRu8G2tCg8O89kLAJw0UqTOA9MIlNpUOhoq6kj+y30wD9jk/aMzyVC8Lj+fdbSF1fbQSNs5OCff
	3RvRV2tWoh1ta0PsUepEiVl6yyBS76crZePy8OIbsrDi9juL9bsUuA9Yo42jCllrLxcw684z5hQqy
	qg2niHLHdL3e8fz60qFx6YpFIx9nEmXXS4oHr/NBwzifVEsW8YEAET/90mmXfgfI1vhUTkCmuBVHM
	PxiDeFneXPzWvwtwK+5NmYEnQimVtQMRs5qB8fzGEpQePsHB7r2Ulmr65a68eeSpbv+kRgTpooj5U
	PT3xdFVaV2vWOvEqrjKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jamQc-0006Yy-Or; Mon, 18 May 2020 20:32:02 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jamQV-0006Ya-8f
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 20:31:56 +0000
Received: by mail-lf1-x133.google.com with SMTP id a4so9245410lfh.12
 for <linux-mtd@lists.infradead.org>; Mon, 18 May 2020 13:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:cc:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=BmSBD7h3njitpLi5QsmTDnHJWiGkucDb02pMa3UrBRI=;
 b=S/V2meIHX6iNtfRVQH6gN/h2Lyp5uwDpI0DvK0EGXJdBE8jiAkFT97P5mkXdh2m3qW
 ubkAh6O+D9ZIP0TmMu3wEF23N+L0d1FbplsFxsXfmJkWqBx/FecsnSOhqcbJSZalCmSX
 ab2E8KVO0NHXnv45BislI93lru50zeVPdIXNKU8o7U2BmVysz3A37I1k07XWaEjHG9tt
 QCNMsjiHo9N9IDnZAKrkwUP4eE2k4MJ0+/P7m2/02hKLGgbf1HVZsvZVfuDJpKcGOkeU
 V3Sm5fQgFuy8ce7soIHMMb1eQvOblNhAIkIaWlcnoPIUqVXoXZ0WnYTvkon9naCb3Zky
 fmmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=BmSBD7h3njitpLi5QsmTDnHJWiGkucDb02pMa3UrBRI=;
 b=Xi+pp4UJ2zh7k3EUc5KgBdbk4MTXypupSjEXTAoeWmus3H0o2Si0xWqSv88Ov5fozX
 TKQur4CKarx955YdktCayM0obBDrRWLze0Yo/Ad0vTHTdpdRlK3pyh22ZG63P6Sqj7wR
 GIzoVciobDSYFrA+pxr3IFGZk7nOgAp8f/lqWwjka9Gh11rQiLTLsE0y7YyOz15ViHK7
 /i+0rNgXzy2dMubR3pbeaqA8/gzdsOL6+j0O1+I/g7zcQc4kXxQcAGOZ6BhZcQsC3vbU
 d3nwecAiuJbP7o/L6/ZHeGfJhQWgDtazpJNAb1DREpiln7etyLj57aRaETJoNPb9a4p9
 Rsgg==
X-Gm-Message-State: AOAM531EB6tM4bzsEL3dmhouLqcI9bhxrgWupvfVCdK30ZRf06HJIcb8
 L729Chj87Fq5euFxBXKYb93kv/URL54=
X-Google-Smtp-Source: ABdhPJwbeRgWCUksn3Rp9PyliuSUUrgdtDgGrHAVgDph+uCNv8e0tKIc/Q6nrbUUHFC0gCY5cMqmTg==
X-Received: by 2002:a19:990:: with SMTP id 138mr7817351lfj.135.1589833912488; 
 Mon, 18 May 2020 13:31:52 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:4650:c10:49f1:792f:a411:29a7])
 by smtp.gmail.com with ESMTPSA id z17sm7136988ljc.81.2020.05.18.13.31.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 13:31:51 -0700 (PDT)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH v3 0/2] Add Renesas RPC-IF support
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Organization: Cogent Embedded
Message-ID: <26faf5e8-26eb-cceb-a500-f0fd64609737@cogentembedded.com>
Date: Mon, 18 May 2020 23:31:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_133155_453201_07152172 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chris Brandt <chris.brandt@renesas.com>,
 Mason Yang <masonccyang@mxic.com.tw>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello!

Here's a set of 2 patches against Linus' repo. Renesas Reduced Pin Count
Interface (RPC-IF) allows a SPI flash or HyperFlash connected to the SoC
to be accessed via the external address space read mode or the manual mode.
The memory controller driver for RPC-IF registers either SPI or HyperFLash
subdevice, depending on the contents of the device tree subnode; it also
provides the abstract "back end" API that can be used by the "front end"
SPI/MTD drivers to talk to the real hardware...

Based on the original patch by Mason Yang <masonccyang@mxic.com.tw>.

[1/2] dt-bindings: memory: document Renesas RPC-IF bindings
[2/2] memory: add Renesas RPC-IF driver

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
