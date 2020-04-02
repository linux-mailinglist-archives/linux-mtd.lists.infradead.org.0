Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C2719CC70
	for <lists+linux-mtd@lfdr.de>; Thu,  2 Apr 2020 23:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b5otli2AGz4wtDF8OSpwIY/E+78pXXBHtoCrSU5dxuI=; b=lMSM7nbQ3BwV7+
	SNH7kQsH8WZ3RzNzLrO6jJxNixrOfmaOz8kiSQMLa4x3IQrP7/B1niRloR2uqiS5qHl+7ZCfLRA0L
	J2LdpyWRBgyoxc2uRcExqOev+EL21aP9gemv3LgHyrXmY9L+i/QCMFkX2HT+zLaRCcTsKZ5ULw7mB
	PW5Q+/Rh2n7+xx7WDU9cXsj0snT02NAhlvxIt6JfMOBr+zRsmPCuOHz9KFieRtiCOqySCpuPaVb6z
	Ih6gcvXmlzV6+slO9uzSBEVZbsRKM+ziTxggzcOwPFQezlxykRzo1NVZfvPNFiSuDu8mMwqHVVBmk
	rMYts5kJksla3yxNE8Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK7VL-0006Hf-Cj; Thu, 02 Apr 2020 21:36:03 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK7VE-0006H5-J8
 for linux-mtd@lists.infradead.org; Thu, 02 Apr 2020 21:35:57 +0000
Received: by mail-lj1-x244.google.com with SMTP id p14so4839594lji.11
 for <linux-mtd@lists.infradead.org>; Thu, 02 Apr 2020 14:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:cc:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=+CxOhu+pFWBDIdguaGLgp9m4PZZ22kPViTa/U1SaLXs=;
 b=xtZ1MUyen5qytUGGIdsM/Z6+qVb3ViIBP5x5dPsNwhKgUV3gxA/4C7hm3x80U8IrHN
 KkrXmPzNdfq7iPUpyV87RioIGHOgdhxFe0E/CqE1GFlbUW+1Uj6hYe5dwHySAHQ+djxV
 d4139EGZyQkXMslfF5Yyeqwpz+JD7J/Ku1MJrQIgf4lT1PrLPgiIqCAGuVpFrNxd+cKe
 9Lm8h6cVa0URGaR/uCKMsgNJdxgCgLlbOW2Jg7oXSXDVezJGGAVF+h5BOT4jexRquYpW
 NYwTkk2LhysMuw5vBFlxdxrkDs+hbmVEDp4/luy9gQvYNoCkL7m6DKl1RSlO57P+Lfk5
 L/IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=+CxOhu+pFWBDIdguaGLgp9m4PZZ22kPViTa/U1SaLXs=;
 b=lBKemQdm6DlOshR/rEpb73EyCewGPD+Arfx0UNmn0B2i6kl95qn8o8Os3hSc7TL3No
 ZMpiqR+Ayg6+LJKhatzJ1M2HQggbCMXkg2ZPoddb0N75Aa27z3WOjjerxRZQWxj5anYJ
 azXR0wvGyl0rkDtZbzWwxCmyrZp/asdRg1r+ESYL4ZKpexghOlH4I2YimExDg8g3l0az
 DbwmcJXzu0HhGHF+6yp2Yi2K/e7XTb4PYuVAyl6JRn9KQEfu6HLfq6l2xgtqjaL27ISa
 1He/LfpSrI0GUXBAZxA/+NYr80h0QKvbEZ+n5bkUZ3zCFgN5fJKvL0T3mUjUABZqTJLS
 xsZA==
X-Gm-Message-State: AGi0PuaUHhRjNKX3iRjRDtI4KdgQw5G9HxfvDtGwgzD5pXy/7etBStiz
 bu11qoEMpXcBbnnxCGs7jejFAg==
X-Google-Smtp-Source: APiQypL304eGbLAZVtM6sowT54sD2hFUDlDM0qTcOIC8Bzrryh+XFimacU9cnjpwHlrkrnNvkONXNw==
X-Received: by 2002:a05:651c:390:: with SMTP id
 e16mr2965512ljp.142.1585863350094; 
 Thu, 02 Apr 2020 14:35:50 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:638:9d01:50cb:2c0c:a09a:3ff3])
 by smtp.gmail.com with ESMTPSA id o16sm4183135ljp.53.2020.04.02.14.35.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Apr 2020 14:35:49 -0700 (PDT)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH 0/5] Fix kernel-doc comments for 'struct spi_nor'
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Organization: Cogent Embedded
Message-ID: <a2577f42-a21b-e7c4-c550-f6ea1cf94cf0@cogentembedded.com>
Date: Fri, 3 Apr 2020 00:35:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_143556_809212_03C1F23B 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello!

Here's a set of 5 patches against the 'spi-nor/next' branch of the MTD 'linux.git'
repo. I'm fixing a number of the kernel-doc comment to 'struct spi_nor' accumulated
since its creation. Instead of a single patch, I'm fixing the kernel-doc comment with
several patches, each fixing its own broken commit -- this simplifies porting to the
stable kernels (if that ever happens). :-)

[1/5] mtd: spi-nor: fix kernel-doc for 'struct spi_nor'
[2/5] mtd: spi-nor: fix kernel-doc for spi_nor::mtd
[3/5] mtd: spi-nor: fix kernel-doc for spi_nor::reg_proto
[4/5] mtd: spi-nor: fix kernel-doc for spi_nor::info
[5/5] mtd: spi-nor: fix kernel-doc for spi_nor::spimem

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
