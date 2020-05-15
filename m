Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A70631D4532
	for <lists+linux-mtd@lfdr.de>; Fri, 15 May 2020 07:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6+F1+mB4teDn/M4waWx8CPzsY6XqY048bFrV5hxaGY=; b=iZrxazfe+7pWMA
	J1MFHo05w9KhQTT1U1dG/wZjkeTUYiV1SkoDwu3k4kJM4GpnDu7pRWVtNvWTKg7Pn2KQF2W+dkUKm
	+XdU/REitdpAJPZ3xhnCa4e9/K7aqEncQkww1vUPubm5FrpAtkpcBeWt4DMXiacky5Mk0/XZvxe31
	rak5VgEdTmb6QYNfEleJAB0FMYuye9DP0RlOFyQ+QwZ3F1paWM8tAaIyTjRLc+huaFvTO9tBBWpnN
	IC0q5YcJ7acZb1THH4lFBhgtFjYiqCzfbJUtGnxOTMswkVhOlRgTtAsfM+4+fwcdjDWiu2kAegn+k
	Gsuao4GgSROM1jtdIk4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZSsY-0001y0-41; Fri, 15 May 2020 05:27:26 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZSsN-0001nN-Sk
 for linux-mtd@lists.infradead.org; Fri, 15 May 2020 05:27:19 +0000
Received: by mail-lf1-x142.google.com with SMTP id d22so716588lfm.11
 for <linux-mtd@lists.infradead.org>; Thu, 14 May 2020 22:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TFA9bbGYP/a1tRAzYnvdKIyV9KR03xqslMsPA2GhaEE=;
 b=s6H2CZQhAVWPesp83Vkn3sBxPSVa6jQbN6fsIX0XOl3jGwZqiuaU+1h4sgCVgMNgfP
 ZS3FGPsixpa2xUCuNo7l0qafR63fTE2yu09QNEMhxCbaCms81eJhwMj7Oych3RfqYuh+
 JpxG+mWoK5a3BNlXpqvCZ6m7g9hTzJ6B8/y1vtPD5+DQLnI7rLt9VLsHnmCZtS7k9R3A
 Fa9aQaH1YMkiK7LH0Grw2a5tZ72JU+aCdAGaOrbKGVfcZkHfk46XxJxYdg4o5LGpd+04
 sZn+wgF2JgAMFaLkjvKmEm+fOZ8ZWmzEuCwF6kRzAE4+ec++IJQNukV6TpOMWww/rf8a
 wHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TFA9bbGYP/a1tRAzYnvdKIyV9KR03xqslMsPA2GhaEE=;
 b=ImQ1SxbOU1rz/m1QYh2c762Swv0qWDlP/8020dAxDaVjg51Lc8YXBforpoJejFRV1A
 J1JPJmJ9yhTec7UDpd2x+U2fskn/VHtLqBTCMgOej23cl5lQm6BRBaFRvLWk82qyhSB5
 pWMfKecwbcXjgkJVo4jzN6i9cNvvrqEYuOyMBYUtX40OMAf11klnNF5l2SM7dgoplQt1
 CMUI98nVo4y27UN9Z8EjVkYudrtv0LDA+CZeaI8V9tTT7+NNZRYfMiRVsW5F/LOVrvYQ
 KzlqGLOQsQh9McbM2BZybQJla+MadiHtRKnMC++DTghyITDyfAEcELAdVFumsgEd2Xq0
 d4NA==
X-Gm-Message-State: AOAM533+1Woo4PWk/M62D3CcnhEdiyNP5cbw2iMxFlFVf0VJ1BZx+nf+
 v4/Vcxi2nctQPQ0ZHEhfB0v7auvI74JrjtLem6EkfQ==
X-Google-Smtp-Source: ABdhPJx6uoL2OEPa5ViXeATYDIi6r1UNXExSU+Hf1bncATF6/SYkNy31Q0bXCIUZ2socnPo8/ocEWPQdms6w56+/6CE=
X-Received: by 2002:ac2:4436:: with SMTP id w22mr1112111lfl.55.1589520433239; 
 Thu, 14 May 2020 22:27:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200311175735.2007-1-sshivamurthy@micron.com>
In-Reply-To: <20200311175735.2007-1-sshivamurthy@micron.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Fri, 15 May 2020 10:57:01 +0530
Message-ID: <CA+G9fYuavikY4yjc+bjnvDGHGwQRs6bf31gUa3gyFzd=0zLR7Q@mail.gmail.com>
Subject: Re: [PATCH v7 0/6] Add new series Micron SPI NAND devices
To: shiva.linuxworks@gmail.com, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Shivamurthy Shastri <sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_222715_956440_F5305BDB 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Poonam Aggrwal <poonam.aggrwal@nxp.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 open list <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 lkft-triage@lists.linaro.org, Suram Suram <suram@nxp.com>,
 Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 11 Mar 2020 at 23:28, <shiva.linuxworks@gmail.com> wrote:
>
> From: Shivamurthy Shastri <sshivamurthy@micron.com>
>
> This patchset is for the new series of Micron SPI NAND devices, and the
> following links are their datasheets.

While boot NXP ls2088 device with mainline kernel the following
nand warning noticed. How critical this warning ?

[    1.357722] nand: device found, Manufacturer ID: 0x2c, Chip ID: 0x48
[    1.364085] nand: Micron MT29F16G08ABACAWP
[    1.368181] nand: 2048 MiB, SLC, erase size: 512 KiB, page size:
4096, OOB size: 224
[    1.375932] nand: WARNING: 530000000.flash: the ECC used on your
system is too weak compared to the one required by the NAND chip

[    1.388767] Bad block table found at page 524160, version 0x01
[    1.396833] Bad block table found at page 524032, version 0x01
[    1.403781] nand_read_bbt: bad block at 0x000002d00000
[    1.408921] nand_read_bbt: bad block at 0x000002d80000
[    1.414750] fsl,ifc-nand 530000000.nand: IFC NAND device at
0x530000000, bank 2


Full test log,
https://qa-reports.linaro.org/lkft/linux-mainline-oe/build/v5.7-rc5-55-g1ae7efb38854/testrun/18254/log

- Naresh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
