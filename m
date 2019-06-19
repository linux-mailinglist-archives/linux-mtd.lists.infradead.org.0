Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E294B0ED
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Jun 2019 06:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NhYUAbceKGyuK0S+KWMZ8iUARV5VQrVyRiQhlSFvgo=; b=I3rsa92793pSXr
	iuMBHT7GQlQgXdsFxdmsVzK1/gn29MlNI6Uo/4kgZgZ8reAscyxlZ2p87U+rNF5mrAfFbNNszqnrO
	wk3B7fJac0vSqJlfXbH3qRuNP+3WEyzmkxAvwCVPUm9rIFKP/KEu66XOh3Vxvk7AyBxe9lRmNVQxD
	srF9L1CBK2ord4UiNzx1V836V/Qv3scq2jsGbTt3zTR9lFBTnt+Mr+siSSXjUXahqqiWjEnrq6UVf
	gQpKWJdAsSbaTa8CiZAckNGrdK2GRCy1fC0I/IZJ2158kj1LaBhB6FF4OIvKuGqlRPMmNZGS5cC7U
	+PLOJ563CcgqemPcPMTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdSSf-0005lV-Ok; Wed, 19 Jun 2019 04:44:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdSSW-0005kj-Kd
 for linux-mtd@lists.infradead.org; Wed, 19 Jun 2019 04:44:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so8958478pff.9
 for <linux-mtd@lists.infradead.org>; Tue, 18 Jun 2019 21:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=0g2bMiYO6BRA2joCaPp5+9aQYPyjIoLsu+QBVbjEMxA=;
 b=sfmT9G1yEzmffemmyEunK8elvz+2NW6YF1tMii6so/sAc+fZaH4JOs35gAhHTLzI3X
 LCuobRsUJaG2GWVFihuAbjj1ocW2m5V9b9GKLYjgLXYzvO/4R2eOuNYwLl5Axdn9lUgt
 oOOL9Osd3aHQu5kgm1rJ2GN1g/12SI+nxTplRMXdtDRXaKkzT5FCABI6euK5DSPTJTwl
 +j0K7Dt5MxV75IYzB/EpayG+fZfs1rW3BWkKYmY37cwdOAaPAf+Xv9FPQuUan8ENCAMG
 ik1Vda/Dz+F8i6DfAM1QgeNq0eec2CrcSa2faP2mCIY6oZJmGFvnQet1lymfDb0457Fp
 58OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=0g2bMiYO6BRA2joCaPp5+9aQYPyjIoLsu+QBVbjEMxA=;
 b=WlaQIe+mL0yNZ3UyJH+gs66Ks7V6OT/z513VWk0DuSzj57m93yhvchyR1hoTa0uo4k
 oIgctJgWnSQGD5dv3Dn/0A09hE7fq+uNAI6T8wAyqvLfFOW6jipB6vJTYlSlGROmVZMJ
 iBENhagF47iT+jdvBAFlYZrl6Kxs4ddGJ0WaE/EJwGrEsHBNGZ75qjszD2GJp/BI7Tji
 5H0wajSXgfuPJKCe3sHceiNcocMG0ph12V0wLSLXGH2LHejZ96gogCvDGdwMVztU6lj7
 peEWGQJQGVhIupTspc/HNvt/y3MhZl0a0heSvTubh2e5yIaGPPdrPwOK+/LVH9BFXvtn
 7HOA==
X-Gm-Message-State: APjAAAWMgWfn4KQPqUVwoiS9hK3gDbbd5kmD63+eAl7OZV/K4ZPTNVgM
 xXS5HAgGHfgh437rf7Krzeo=
X-Google-Smtp-Source: APXvYqzRg6obEwd9JJxwejjjACMV+5VfM+yMhhfcGZ+vgly7KUUyNnkpdlWaxypx9XVf3RKLVGEm1A==
X-Received: by 2002:a63:f50d:: with SMTP id w13mr5977079pgh.411.1560919471616; 
 Tue, 18 Jun 2019 21:44:31 -0700 (PDT)
Received: from xhdnagasure40.xilinx.com ([149.199.50.129])
 by smtp.gmail.com with ESMTPSA id y14sm341083pjr.13.2019.06.18.21.44.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Jun 2019 21:44:30 -0700 (PDT)
Date: Tue, 18 Jun 2019 22:44:24 -0600
From: Naga Sureshkumar Relli <nagasureshkumarrelli@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [LINUX PATCH v12 3/3] mtd: rawnand: arasan: Add support for
 Arasan NAND Flash Controller
Message-ID: <20190619044424.GB28766@xhdnagasure40.xilinx.com>
References: <20181212100931.149b0cac@xps13>
 <MWHPR02MB2623EDA15BE59304795F3034AFA70@MWHPR02MB2623.namprd02.prod.outlook.com>
 <20181212141825.69711c57@xps13>
 <MWHPR02MB26235AE6567A06EF4C6362E6AFBC0@MWHPR02MB2623.namprd02.prod.outlook.com>
 <20181217174114.24196d17@xps13>
 <MWHPR02MB26237B932D7F3CCEE0476FE0AFBD0@MWHPR02MB2623.namprd02.prod.outlook.com>
 <20181219152647.76f77711@xps13>
 <MWHPR02MB262396FFF946A95D7821D61BAFB80@MWHPR02MB2623.namprd02.prod.outlook.com>
 <MWHPR02MB262328DF62906C01DCDF18E5AF960@MWHPR02MB2623.namprd02.prod.outlook.com>
 <20190128102720.70a52da7@xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190128102720.70a52da7@xps13>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_214432_707897_537170D1 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nagasureshkumarrelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "robh@kernel.org" <robh@kernel.org>,
 "martin.lund@keep-it-simple.com" <martin.lund@keep-it-simple.com>,
 "richard@nod.at" <richard@nod.at>, Michal Simek <michals@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 "nagasuresh12@gmail.com" <nagasuresh12@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jan 28, 2019 at 10:27:39AM +0100, Miquel Raynal wrote:
Hi Miquel,

> Hi Naga,
> =

> Naga Sureshkumar Relli <nagasure@xilinx.com> wrote on Mon, 28 Jan 2019
> 06:04:53 +0000:
> =

> > Hi Boris & Miquel,
> > =

> > Could you please provide your thoughts on this driver to support HW-ECC?
> > As I said previously, there is no way to detect errors beyond N bit.
> > I am ok to update the driver based on your inputs.
> =

> We won't support the ECC engine. It simply cannot be used reliably.
> =

> I am working on a generic ECC engine object. It's gonna take a few
> months until it gets merged but after that you could update the
> controller driver to drop any ECC-related function. Although the ECC

Could you please let me know that, when can we expect generic ECC engine
update in mtd NAND?
Based on that, i will plan to update the ARASAN NAND driver along with your
comments mentioned above under this update,
as you know there is a limiation in ARASAN NAND controller to detect
ECC errors.
i am following this series https://patchwork.kernel.org/patch/10838705/

Thanks,
Naga Sureshkumar Relli
> engine part is blocking, raw access still look wrong and the driver
> still needs changes.
> =

> =

> Thanks,
> Miqu=E8l
> =

> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
