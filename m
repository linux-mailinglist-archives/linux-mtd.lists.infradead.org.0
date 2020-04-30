Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F4A1C0880
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Apr 2020 22:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iLVf/r3yc3MlvYP3XjrC8tIc38QeX7pr9Fw3sVg+79U=; b=ta/iXT5Mh1xLsq
	W3F9EBkgYR3qC9xp3ioDNH7oVtr+NqLZcZnrbTSlFiV5fm1zDvxQVmNNPj0jliaAtUz0znduxUfmH
	p4JIG/u2QGcAS+2g14x6T0I0Q3y/YGY1c9gXprWBlAkRCfozjYNi7NYXaubxqIPVdtVcNm4UqjyHi
	9WMCtq+kk1JYexPy4UeV0xGJ9xFzequOzn73QkmPTUWjeveOeDjrKhRlQPuQwtuXVcMp5/fifZ65g
	S6csRuTBWPE6gxURqXnbCScvtwPOtnkyeyzggq0bjADo0BmBSJnDQgp75+tNC3pLcgH0dYdepDbzP
	rU8JWXAwuP4NcEiGVCFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUG3i-00073B-9U; Thu, 30 Apr 2020 20:45:26 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUG3P-0006t6-BT
 for linux-mtd@lists.infradead.org; Thu, 30 Apr 2020 20:45:09 +0000
Received: by mail-lf1-x129.google.com with SMTP id b20so2112868lff.2
 for <linux-mtd@lists.infradead.org>; Thu, 30 Apr 2020 13:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:cc:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=BmSBD7h3njitpLi5QsmTDnHJWiGkucDb02pMa3UrBRI=;
 b=BByDysgPi+X1do2xqrwAOLh0HEdR2agc0tWWki02+6dJfEOyJdv7UB5MrlBL/7Ixey
 NfLIPqu1ByMfCl6/2xN9VH0fkOplnQDTYEpGsU7Tu+L+W+EDW1K80ELxTMUUKMOLxD99
 GM1eUFRgDXM1iEyyoqyNVnuk2JP6x6gcm4Ow/yDgunn2DxN7Ft8DTpwRg01d3631C2oY
 q8O4Qh8HE8XTf7DcBZiJ8la5isNoejM/gkmlSBnxwpM3LySpf8H5gUYTNPpH9WfllVHA
 /Dpav8Z+v7kaVD2qRJ+/cL6OI02Ypflw0/gl3zqItuzkmZR79Y1vFOi6d0A2ya4V6Hij
 kw4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=BmSBD7h3njitpLi5QsmTDnHJWiGkucDb02pMa3UrBRI=;
 b=M+6Pm+ihVEwYaXXIT67p3sNmaa7/vBmLKo7GouyfHqpX+cG/4wLx/85LEzMgL6CB9q
 Ec+iBseJok086/YMXQrVHuV2ywRbm/Z01F6s3Vk9lTvfdZY/hHy3WoYcVNMpQHI52UAp
 RJhnv3Xnoy0m9DFtyHncM/4RWNuSBSiTTy1q2VH+L40caPbHvLor8tn3rJQc2s2s5eRI
 07Lhs+ey0RDXMr1zak+RnF2TjGHp8JUTaUXZ9KyvTnIuC5SUetd0NDMiWaihpMI6FPYp
 oD/84QPX4n/b8hK7EzD+rKOvylev75FjaOPscS6wBhCuVOraaVO6zjhRLjTrw05t3Czq
 iDOg==
X-Gm-Message-State: AGi0PuYa+nURyCfHf+OIgAixfdMKccpGvldSFGhtqASftftMSI9bcCkZ
 aeAbH5D2nAzRrwkewEg9LnuxkCD8Yzc=
X-Google-Smtp-Source: APiQypI0RQNqWlNHDVtNIFy45lDwuwOyMBSNaVaz8UyZAB4gxqzn881PlNEa1qMPlbNBmRRjX79/bA==
X-Received: by 2002:ac2:5988:: with SMTP id w8mr304392lfn.75.1588279504553;
 Thu, 30 Apr 2020 13:45:04 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:880:89c5:86ed:91e3:4d28:af08])
 by smtp.gmail.com with ESMTPSA id i20sm650562lfe.15.2020.04.30.13.45.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Apr 2020 13:45:03 -0700 (PDT)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH v2 0/2] Add Renesas RPC-IF support
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Organization: Cogent Embedded
Message-ID: <812e6e58-d13f-3f44-5f55-22266b690c57@cogentembedded.com>
Date: Thu, 30 Apr 2020 23:45:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_134507_607169_B387215F 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:129 listed in]
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
