Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8421ACF5F
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Apr 2020 20:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svoucGTS01o7doZQ7AKLTkJZbXcJvAkLmGRd+oGTToU=; b=OJjC9itgCu5KaM
	x4ykTVeBLGi6kEcMewgHaAHtWWmAcMaiw5m3xbGwkzOq6RqnohCQLrVC+7UdOMDYT0ejhJlJJkw+s
	e5z03nbM8ok5pA0etRvC+8ap/6S8FLnUrNjN6QFPeGRC3vjSPOVZKHBIfpZ8a/w8fDlnQ2PldiJ27
	AXd0EeC4Vd/xML+Bf5+4LofjTzFeYLJLZZ0Z9cX3I/RVx1nX5W20cr7F27N2DkiyqIz6/vP4il+IX
	F3gM7aSnezKyai27PO1HK59093eow+l0I5wTZHMMdnKrT5Nxl6GKP1MEMuyqRjrgmCLA4ApxvXJ2J
	G75S1fe5KCLWjy1/KLsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8w5-00068C-BW; Thu, 16 Apr 2020 18:08:25 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8vz-00067d-80
 for linux-mtd@lists.infradead.org; Thu, 16 Apr 2020 18:08:20 +0000
Received: by mail-ej1-x642.google.com with SMTP id a2so1972141ejx.5
 for <linux-mtd@lists.infradead.org>; Thu, 16 Apr 2020 11:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M/GV1V435fNTv1enAJ4SR/cS/jvcRTNBMioIZ9zRVBQ=;
 b=E7zUJtlDOlHe5lFxFdiJMXe6VHgBlBqRAq/HIzz8vOtD08Io7zQm4KxBjD3DHXBU3p
 cQF+mIwtvAjMdgpl4IzOyD5RBW8JxARXmrIc6R9/EyX3fSZG/wXwHvp04Myjvu9JvGu6
 SifC++Xm/0m6KXQTzumns2YrrCmYkNsKiA5x9/0xebPLXBQ2M1mXVDkT7k8eDB15peW2
 aHHC+RNfCVAkzruf1MKk9i8O1orE2o/dOBWncfQO93vhDI15iQMqGpvOhrBdkF0Abak1
 UOr88uXK/6ZjnFBVH3qTdr2zd6pHZc9y6M6rYo1lpHOcq85X7IsooURj1b509QF5qMvm
 Gx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M/GV1V435fNTv1enAJ4SR/cS/jvcRTNBMioIZ9zRVBQ=;
 b=N9zMvjpuYfo59KCi4MzzHgA+RS8/2Rdu5NN+FwccOeFI61a6ScvSKbgjl6ovSwIp8S
 BVoMyaUr28Sxm5q145d2CttaQLvp+1AwpgFbDz59Tf6pLsDG0espsaMGbIr9QX8VrT5i
 PVguLXDWDWg7KmyvpLXK1KsMHBHOtbmrBImTlfXYLKiSWdvn0Q1ERNcYzlolekmsjGsD
 XcVOHV9OqphsUSw6P5VXjmW9ICTbaxbx8joq8nkajsbNvtY7qHQ3FgZDLQsY0kOQ7G78
 /r9aUnrKCJF42e5N8oe8cmbQZGwGnze22olZqCez2Jo8S6nSVYSy5jCkJPlvaW+J2YZR
 F+0g==
X-Gm-Message-State: AGi0PuaM7kE6ydxskiCF/Wc+ybrOUJh4GpegqWOAhJUIOP+nOVwfFNRD
 D29lQLtAVmLGC1oPFgMFs2/TOObFGW163dJJYoU=
X-Google-Smtp-Source: APiQypKwYkHGxt56C0Q7SaSFBkS/Ts9n2d+vesc4d/k+CGgsFyTfR/Ehj60InmNIJ15VD5fE5OXt4rY0C8t4dTqtkN8=
X-Received: by 2002:a17:907:2098:: with SMTP id
 pv24mr10943933ejb.22.1587060497564; 
 Thu, 16 Apr 2020 11:08:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200414022433.36622-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200415220533.733834-1-martin.blumenstingl@googlemail.com>
 <c33c8653-16a2-5bcd-97a9-511d958b755a@linux.intel.com>
 <20200416113822.2ef326cb@collabora.com>
 <18568cf6-2955-472e-7b68-eb35e654a906@linux.intel.com>
 <20200416122619.2c481792@collabora.com>
 <d3e137fa-54a0-b4ec-eb24-3984eab2a247@linux.intel.com>
 <20200416131725.51259573@collabora.com>
 <de9f50b8-9215-d294-9914-e49701552185@linux.intel.com>
 <20200416135711.039ba85c@collabora.com>
In-Reply-To: <20200416135711.039ba85c@collabora.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 16 Apr 2020 20:08:06 +0200
Message-ID: <CAFBinCBy2QXFCU9bu6StqNMLLiDBtmvxNNuh+kPc1tgriSGBwQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] mtd: rawnand: Add NAND controller support on Intel
 LGM SoC
To: Boris Brezillon <boris.brezillon@collabora.com>, 
 "Ramuthevar, Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_110819_309961_DE1E2B27 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org, qi-ming.wu@intel.com,
 anders.roxell@linaro.org, andriy.shevchenko@intel.com, arnd@arndb.de,
 vigneshr@ti.com, richard@nod.at, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com, tglx@linutronix.de,
 masonccyang@mxic.com.tw, piotrs@cadence.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Vadivel, Hi Boris,

On Thu, Apr 16, 2020 at 1:57 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
[...]
> As for the testing part, there are 4 scenarios:
>
> 1/ Your changes work perfectly fine on older platforms. Yay \o/!
this would be awesome \o/

> 2/ You break the xway driver and existing users notice it before this
>    series gets merged. Now you found someone to validate your changes.
The xway_nand driver is still used by 9 (or so) boards in OpenWrt: one
Danube, one ARX100 and the other 7 with VRX200
I can be the person to find out whether your changes break one of
these boards with VRX200 SoC and 128MB SLC NAND (and software ECC
since AFAIK this SoC doesn't have a hardware ECC engine).


Best regards,
Martin

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
