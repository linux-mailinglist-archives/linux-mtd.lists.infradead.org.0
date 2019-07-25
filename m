Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5553D7594C
	for <lists+linux-mtd@lfdr.de>; Thu, 25 Jul 2019 23:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSXM35kTfUI5h5OEabQdp0HKCYcy9npyeY2CruO9VPo=; b=f1yZXkpHfGj633
	7FBbKPFXdsJPOza20zwdSz9v5Xj0AB9rOa6Sw2gz5SNiht4m0VB8CQQ6Kj08w+nynSDdU4UN001iA
	dNIAz9I91ve6OldTi5aJknldUz+D4YElS2vzM3HyxDbw1TwK+EVnesmELnEnZXE9RHBbkdE4tGV7e
	crsbL5edXEekEk/azzUknwsnzUgE2QlxkXNgp/D5qmCJncDVIj8sCOrVkv1lhlSCnrb1wab5hCty4
	817syY45NNud00mwJuGdayaVWI0fKu+Wdi3CIAx3ewG1Ea+73cmFaz37v8THRqLywUEtiIPj/2Uyt
	QR9zEc2ttYXQQ01TRI0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkvo-0002a0-Se; Thu, 25 Jul 2019 21:05:44 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkvf-0002Zf-FV
 for linux-mtd@lists.infradead.org; Thu, 25 Jul 2019 21:05:36 +0000
Received: by mail-wr1-x42b.google.com with SMTP id r1so52165660wrl.7
 for <linux-mtd@lists.infradead.org>; Thu, 25 Jul 2019 14:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rIz/vifMcGxDeAobJbKgBFjbAgZ7DIq52kRulM+rLSA=;
 b=n8FJD3da1C5NxBWVw5rmP8SpcexfGYdcj0ptiqc16sgp4PbJI0MUgnxIp8/d4vBKZz
 Bqt/0kWneyepaz+a8sgKHT5PPb0v+b5bNwa7eTVPEbi/OoH4zo6omtSqjreax0Niy0Vc
 rd6oAXxZHnTMOfwtWl7rIBN18ox+Oqq3S7hIMmwmprqzUNelrDOvR8LHFO1BzXVygSAo
 DV+hbvWILS4XhyMU2eLpnWDLOFRR++GCNBqOSOv0wi0fh9hcMdjCOINRf9k8Co0aW5VM
 qTIPy38BSbVEsIRRWSmZ/ZlIoW4hjViTBpKRbEPNyFbOJFyqIPsuffRksiye559lq/nz
 C4jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rIz/vifMcGxDeAobJbKgBFjbAgZ7DIq52kRulM+rLSA=;
 b=FSVzeBjws+jz92glXst6Ddwf99wxWgS3C2h7ftaPWtHR01/hdV5pxaqwVFJRSso++8
 tEEFUN8MR4M4uZ6ww48+0+lYoHPJXKFjIQl7aiw6KZPRIs9h/4O5jtSITFwgReyourD/
 3fCPDPi5IbVyN6giEdu8MiwB0PtOXIF6CckKQCaYJjzIYzgp9z/FFsdfgiqgCuPQAe6Z
 rKmLL6As1MxClra80XDIpmeJyh6MRqOrpMln5vgI1zZ9LVIEUcQjZT54F8hG+8emMSvS
 2JqDGn4e0CTtz9GvOGNMTODZhEzWaAugw13ZmT+GTJgiwxRtgoXXIwQfqjne0hbgEhSZ
 gpww==
X-Gm-Message-State: APjAAAXcIwqt4qXjZCLgxUfvhwapTpOrGI4lBsvF/iJotCy5FYFYq2n3
 RJY5N/bXnIUGksgEFE5tofIb4zW86CqJmVxRq6za8A==
X-Google-Smtp-Source: APXvYqwEcuS4Sue6MOq14v5Swg4OBwHfW2ZDox1LifmLZKZz8eRqb4KAupWNVEwY8eQXIyQKVBwQ+7fprDwwwhh1RcA=
X-Received: by 2002:adf:e602:: with SMTP id p2mr59561629wrm.306.1564088734157; 
 Thu, 25 Jul 2019 14:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <e42672a6e383438ba32b61da1dbd70c7@eckelmann.de>
In-Reply-To: <e42672a6e383438ba32b61da1dbd70c7@eckelmann.de>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 25 Jul 2019 23:05:22 +0200
Message-ID: <CAFLxGvx8vx2k63ZeegvZkm+8DEu8X9Aomt80-LD+EjFkpv7o4Q@mail.gmail.com>
Subject: Re: ubsfs scrubbing ?
To: "Mainz, Roland" <R.Mainz@eckelmann.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_140535_516067_3DA9A8C5 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 3:47 PM Mainz, Roland <R.Mainz@eckelmann.de> wrote:
> Is there a tool to scrub an ubifs filesystem, i.e. that data are read, verified and then written to a new block/leb ?

ubihealthd is maybe what you want. It constantly scans all PEBs, if
bitflips happen, wearleveling will move the block.

If you really want to force re-write, create your own tool which uses
the atomic-leb-change ioctl.

Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
