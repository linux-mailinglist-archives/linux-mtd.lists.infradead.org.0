Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D637714D1F5
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Jan 2020 21:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IMWJT+wkO1yx2TcEiaQbn9RejYrBMY6rGLQGvdNR9zM=; b=WB7AAJ6nVoturk
	9vPzx4JeOXnQx3V34e97oZa59Z5+Nx6B84oxalb/HD82VANaaaW8RKVM+b73H7OIzMfO4hlyVI216
	6dksKZITbWgzKCm301itJ1VXm6MGRYwZPUVn/hNzbp7DvECBB77sJCw9EPzp4V2DNt5daYXXPgma6
	CQYhRbrIje4/nTswgbH3uUt2Hyg6njMXO9uZytOSjuAo8NhfcLQIRZ+atUsZi4tgwaRkGR6aaPJk4
	pgEGaehXGFi/7PDJN+JxyFfpxypkDXMD34Qf4YE3QHa+MXMVIjBUPhlEtT1CXT6KkOAoIsdL0+qQe
	DUKEggJp/4BE0m9dtazA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwu1G-0001Mf-RC; Wed, 29 Jan 2020 20:33:02 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwu19-0001MO-6B
 for linux-mtd@lists.infradead.org; Wed, 29 Jan 2020 20:32:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id x14so782689ljd.13
 for <linux-mtd@lists.infradead.org>; Wed, 29 Jan 2020 12:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:cc:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=FANtmBNEQoAVJjMp2j4nitx0+mcsNhqJ/T8iSfBRuio=;
 b=LIn1KpBLrj5cH0VIffxSxPCut2DpvdXmZvCgu7LpDsygtgrM1hOG7jO+J3xaHR68k5
 wRbKDQojEWG6TRbD+gCzgOORiIHhe6Z4OPQcvcFxgtJg1q4u8D5r7YLfgWoTqi6w4oaB
 7ZfMgaoZwhp0TQzCgfZaQmh9st1BmEn6ADcUFMRuM+6IVilcMUbXVY9ZYMGjiS42e4S4
 PuOkI36S1ZmCnTD92/TL6aIOsE/EzLfLcCNoWpfrkElM0FNLCddGSbiYeZx5Sedb0E1y
 Xv1CxSwCDcFkrxFAL8eU6DK7CfxqLR3jITryYZl4hnYxVJHBVVJmVDy/z3I4wkwdb5sD
 R/5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=FANtmBNEQoAVJjMp2j4nitx0+mcsNhqJ/T8iSfBRuio=;
 b=ucZ6EvEDSJ4zJ6uOGPrSLPTcVK7mRNb6VEjdZJz7FrMVpW+KVxjcBdibsQnXUmesBj
 ZZsBGGRVeZ8VGk29wWM4nAT4qitlu1QzxFowAkg8vRCU0Qq4pzNQWE1w9vDGVxUJp3f2
 Y24lhSv7qVJz428huzv3C9Q1z/6czHFGk44vRHdJ2QzwRE9w4jIkZccmnPmxzqQdqzL6
 0D71tlcTe2QWZw1NS1Cx8w+6I6VPNAT98tO5J+Z3Xfh6Te0FtzAwp7ZAzb8tSST/1lSX
 dA84J/DO770YfctT0JC6Qi0QWNXj8acHB5S+t7F2fd+lpUwmTf5pW58JAt9HSZIa4vkz
 1rKw==
X-Gm-Message-State: APjAAAUv29RuaLevQHZt7p4JPh1UCiXe2L6ZVfUMtdWRwQWXwgKFU7DW
 xemqFelmIMts2JwQ+fxdmoZeMw==
X-Google-Smtp-Source: APXvYqw8yy1r4suQ3/l37l3m2wIXJXu2NMiuO+m8mGt9d48GdPbTbUzXaNuy5l8doCiH3Oq0Qyts/Q==
X-Received: by 2002:a2e:870b:: with SMTP id m11mr564908lji.93.1580329971807;
 Wed, 29 Jan 2020 12:32:51 -0800 (PST)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:2b4:78de:120:879a:3c09:8a9d])
 by smtp.gmail.com with ESMTPSA id d20sm1550998ljg.95.2020.01.29.12.32.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 Jan 2020 12:32:51 -0800 (PST)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH RFT 0/2] Add RPC-IF HyperFlash driver
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
Organization: Cogent Embedded
Message-ID: <fd1360ab-8872-f750-1314-77c6d432b413@cogentembedded.com>
Date: Wed, 29 Jan 2020 23:32:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_123255_409612_F211D790 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dirk Behme <dirk.behme@de.bosch.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello!

Here's a set of 2 patches against the 'mtd/next' branch of the MTD 'linux.git' repo.
I'm adding the new HyperBus driver for Renesas Reduced Pin Count Interface (RPC-IF),
it's a "front-end" driver using the main, "back end" driver (from drivers/memory/)
that talks to the hardware. Unfortunately, the HyperBus core posed an obstacle to
doing this, as it assumes too much about the hardware's capabilities, so I had to
move the direct mapping setup code from the core to the TI AM654 driver...

[1] https://patchwork.kernel.org/patch/11283127/

[1/2] mtd: hyperbus: move direct mapping setup to AM654 HBMC driver
[2/2] mtd: hyperbus: add Renesas RPC-IF driver

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
