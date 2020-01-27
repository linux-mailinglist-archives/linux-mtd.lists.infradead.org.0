Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C230814AB1C
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Jan 2020 21:24:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9SsZMEMnwZ3/zafwhvaUq/kNFSeUh7w72gW1fNK1beg=; b=s5updPkhOFAKL+
	RCdyxsC80ccQN6wXKCk6nkA9oK9BsDIpxZRMmTKJSRP5fHdO6BZfHvuTbnr1xpKH0AUUpWFs4vass
	Hyz8Jkx+lyeGHAD82TJUIdu/7YppOWa/vGLF0LvKlkKBCfHOx3SrcqN1rEdPTU0rIR5ZOWyoVkOMM
	2HxXrwBHgeQLa5NX8CWkemnnLlTX7aljRgCUnedBzZwOs6W8gUc0qLDYVdjrH9pcvw6MhVFgHeu4E
	QGcUFbGOiI5hTjfU3JoMqfOIUuwG+B51GhsMmNkGBhb0iITGJpTH6asngvy9e/zpjr3tCBpn7EU4p
	8SHd84ew9QwLcUqMl2/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwAvN-0002CN-85; Mon, 27 Jan 2020 20:23:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwAvF-0002Bn-W5
 for linux-mtd@lists.infradead.org; Mon, 27 Jan 2020 20:23:51 +0000
Received: by mail-lj1-x243.google.com with SMTP id r19so12336513ljg.3
 for <linux-mtd@lists.infradead.org>; Mon, 27 Jan 2020 12:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=13J+b2VOmDQG7OJdkSeTX2kFAKorpe+KA5LU3wgch9M=;
 b=abxQROV5Vx4VAkO6Xs0uhyJGyAERc3+hIMSoDlBpjTsW4O+mgtuzTzrMEQx+GWSvag
 RFzw7+YAXX9XsfVteLAinlmWke0uGHv5KxKs0sdgaYoHp9L/P5obqdhA6+yWxgnIxnWF
 ecyLmb5lyIF6FtGB56mkl/GEJckIgMXaMoDWDKEPPlRouiNv3OQ7nACj2HM3Kc7MIzQ0
 R4xuKOPaCnP0UnzdVmGA9tdSlgs7beiM+58uKIhmVw9sQ7VYO5wLNkWaee8ryCel0tJV
 j64rJr+BsEFKCTtPSdSN6UJs8MzH4kHvdQDC88UZLLM7lGY7pYfWpHmg7zqlTZOGPwby
 eOLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=13J+b2VOmDQG7OJdkSeTX2kFAKorpe+KA5LU3wgch9M=;
 b=UmoskzVOua531ipvg43KEa2mLj2NBo1r8duJ5Zp5wyiDyqm59YLMBz4U/uyAAj5ZL/
 zrZggdnI8aoki3xopGMEtATSPNmlyJf49DdFGoLMPH9flZlsiIbvJbY2kwuD+kcTNBWq
 XrB3sseWtmUCZ/QXtjXQUz4HF51OXrL3S1YKB33XJeJBN9M70+oxQD7b3des6kYnmIhq
 UTv9Sqc61+W9VrdO8kLf7OVeEz7NrUoUK9TEZ64UsmvhyeWnID3Xgh7o+QyH+1GKb8ff
 9Lgqta9j3966TKJx+2nQWTbo0hqPQPWy/Gn/JyOOTeGk4Fw6bdyqhSGzmVfWcF7rkdrw
 6Jxw==
X-Gm-Message-State: APjAAAUgrPJH3BG97GepEQs2nqghzi3CJe+2vo/veIwCtx7KGthk4o24
 7285V9zJUllRdVLqJdpKtX1uZB+jTwo=
X-Google-Smtp-Source: APXvYqyn1NshH92/xmYuMOWqh0NC16cels7xD8RtB56wnnBN6GfkT53X1d2VuZK59ZKO1dzq/k0EIw==
X-Received: by 2002:a2e:7207:: with SMTP id n7mr10003263ljc.242.1580156626576; 
 Mon, 27 Jan 2020 12:23:46 -0800 (PST)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:848:32ac:5845:9fa3:1634:7984])
 by smtp.gmail.com with ESMTPSA id b13sm8542595lfi.77.2020.01.27.12.23.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Jan 2020 12:23:45 -0800 (PST)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH v4 0/2] mtd: spi-nor: use spi-mem dirmap API
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
Organization: Cogent Embedded
Message-ID: <5143a90d-fede-7025-9eaf-142414c803c3@cogentembedded.com>
Date: Mon, 27 Jan 2020 23:23:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_122350_034373_2BF4DF10 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Here's a set of 2 patches against the 'spi-nor/next' branch of the MTD 'linux.git'
repo. We make use of the spi-mem direct mapping API to let advanced controllers
optimize read/write operations when they support direct mapping. Previous versions
only had a single patch, in this version a preparatory patch was added.

The previous posting had garbage in the subject, so resending with this fixed...)

[1/2] mtd: spi-nor: split spi_nor_spimem_xfer_data()
[2/2] mtd: spi-nor: use spi-mem dirmap API

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
