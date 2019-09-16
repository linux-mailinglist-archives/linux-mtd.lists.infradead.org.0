Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 017D6B348D
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Sep 2019 07:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Wc+0emchjikGTxBjohOt4phYmuhuW7g1g3V66s8pfM=; b=oz47tiWFUrUA3c
	JLLRUorQ6rAwnNFzFC4ZeKxx0WzaQcX64WQgJdHckUJWaanSYZbbRwc1tf1MGIElScxY5q/4BfFiP
	Lw1lp389ClyXI32sz7f/SM9LUC9OyhDvsLmR1oXXCJ3AubCS9rygW63Jwop5FkxpWK0/iwGuy3EuY
	C78UjJ5s3S0JTEhrR08VnXxKMT0vlXX+o1JiLTreeodVsyZiLQmvwvwZ66zW5mPvd6yCMd7k4Rvr8
	HNEXag+JsidHCUsjsAddATLF1mdJzETDXj3iSB1pVXeES7o39n91XHebvEXA655DXy3KPZLi14yMv
	yNSvMoagy756LjGX7WUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9k1u-000525-GO; Mon, 16 Sep 2019 05:58:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9k1k-00051Z-My
 for linux-mtd@lists.infradead.org; Mon, 16 Sep 2019 05:58:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id a11so27682183wrx.1
 for <linux-mtd@lists.infradead.org>; Sun, 15 Sep 2019 22:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DB3jtLHvq9923eqZI3QbM//4oNBTHTpDDc9kiiGdnHM=;
 b=ZU/yy/FZUfX5LHAm/nZ22q7By7vOzemSh5e1BNtPsICAviDuSidXVVmZs1sN+fAHma
 acAGZ+J2X805+ljhIgKTz1YwWotu6WGNi1SXyDOJao7TFV5yGg2aIHdKJ7JJfA9V8RSd
 YBw1WwnkJ6A8qLec2UzrCRjq7v6NTlbHOv+dtQvMcpEgiqsZ/9FoHebYex3zkU9+3Q80
 E/N0nPRxU6uUNnT7Lg5N8MB73qU6DdSkpZ5uX7H2z4nXoQuJCHCVPaOeT8Vcm5z+FFYb
 6A2Yfjl0oypZBbKw/jPsZGhnx5nGOXuxefG1PKC0w4PakIDghlrQv0JLwM0Cmtd4Lewb
 is5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DB3jtLHvq9923eqZI3QbM//4oNBTHTpDDc9kiiGdnHM=;
 b=X/jMCH3Bf2fbeBvNffRyg0+mwHcl1s8joMW1iYKLXBT1uLIPhmayWYgcVT0aoC/MlJ
 DmKWPjoZmxwxrcAPNARZ8DadP4+/PPze+oytsZDa7uuNGncbxHfB+LHjTcYLSX5ePIpw
 XmwIVqzU/IO6hi/DpxW4l5CTc9fxAdmpv+FZPAHgynteBCotHhndOqqgXWGHn4Nk/SIF
 3Qx9Ek4F7PS4Q2IFXLVqi7Ogc2u2dZkvL3M+ARdm2vqhR2criC6m4xbglSAJybOef+uc
 soCfOWB9xxRkIWhVdbvjbgimLN4Gu5TGxT5Icg/7Tl4zd7AjIrmheQ941yxeIfpNcSNo
 0Q0g==
X-Gm-Message-State: APjAAAX2DfrP4b5p9kZ+29dh9jckkNI8AqHtxugAvuX9vVkKRBs4Y5Cz
 vvgGzJ816BkIe04KJwcwzqMlmWgutMMhSg1k5LHnTCpiCds=
X-Google-Smtp-Source: APXvYqzQYl6qvfXSXYFtMiS0ce9Qf3NjYdDICaLrosiJmlQkkpBs0nvpRF+ypAEYjXQGhzq+itHJ35zkINusnlQvIsA=
X-Received: by 2002:a5d:4c45:: with SMTP id n5mr5030226wrt.100.1568613499192; 
 Sun, 15 Sep 2019 22:58:19 -0700 (PDT)
MIME-Version: 1.0
References: <7853e731-57b7-1d85-6224-9e566638ee9c@microchip.com>
In-Reply-To: <7853e731-57b7-1d85-6224-9e566638ee9c@microchip.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 16 Sep 2019 07:58:07 +0200
Message-ID: <CAFLxGvycuxMZjPx5TtaYsqeOLiuRX-s6dD1z5V=YdxE3OtPqiA@mail.gmail.com>
Subject: Re: [GIT PULL] mtd: spi-nor: Changes for 5.4
To: Tudor Ambarus <Tudor.Ambarus@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_225820_753901_2B23F340 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 10:56 AM <Tudor.Ambarus@microchip.com> wrote:
>
> Hi,
>
> Here is the SPI NOR PR for 5.4.
>
> I'd like to thank Vignesh and Boris for reviewing SPI NOR patches.
> 40 patches merged is surely an improvement.

Pulled. :-)

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
